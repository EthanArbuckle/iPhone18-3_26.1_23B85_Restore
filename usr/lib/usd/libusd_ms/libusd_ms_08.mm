void sub_29A04ECFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::OCurvesSchema::createKnotsProperty(Alembic::AbcGeom::v12::OCurvesSchema *this)
{
  v16 = *(this + 2);
  if (*(this + 39) < 0)
  {
    sub_29A008D14(&v17, *(this + 2), *(this + 3));
  }

  else
  {
    v17 = *(this + 1);
    v18 = *(this + 4);
  }

  v2 = *(this + 6);
  v19 = *(this + 5);
  v20 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".knots");
  sub_29A050888(this, &v9);
  v11 = 4;
  v12 = &v9;
  v8[0] = 0;
  v8[2] = 0;
  v7[0] = 0;
  v7[2] = 0;
  sub_29A056820(&v21, &v16, &__p, &v11, v8, v7);
  *(this + 260) = v21;
  std::string::operator=((this + 1048), &v22);
  v4 = v23;
  v3 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 134) = v4;
  v5 = *(this + 135);
  *(this + 135) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v21);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v16);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_29A055520(&v21, &__p);
  if (*(this + 44))
  {
    v6 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 1040);
      ++v6;
    }

    while (v6 < *(this + 44));
  }

  if (v22.__r_.__value_.__l.__size_)
  {
    v22.__r_.__value_.__r.__words[2] = v22.__r_.__value_.__l.__size_;
    operator delete(v22.__r_.__value_.__l.__size_);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_29A04EF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A04EF90@<X0>(void *result@<X0>, float64x2_t *a2@<X8>)
{
  v2 = result[2];
  v3 = xmmword_29B432560;
  v4 = result[3] - v2;
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4 >> 3;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = 1;
  do
  {
    v7 = v6;
    v9 = *v2++;
    v8 = v9;
    v6 *= v9;
    --v5;
  }

  while (v5);
  if (v6)
  {
    v10 = v7 * v8;
    v11 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v3 = xmmword_29B432560;
    v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v13 = (*result + 8);
    do
    {
      v14 = vcvtq_f64_f32(*(v13 - 2));
      v15 = vextq_s8(v14, v14, 8uLL);
      v16.f64[1] = v15.f64[1];
      *&v17.f64[1] = v3.i64[1];
      *&v16.f64[0] = v3.i64[0];
      v17.f64[0] = *v13;
      v12 = vbslq_s8(vcgtq_f64(v12, v14), v14, v12);
      v18.i64[1] = *&v15.f64[1];
      *v18.i64 = v17.f64[0];
      v3 = vbslq_s8(vcgtq_f64(v16, v17), v18, v3);
      v15.f64[1] = v17.f64[0];
      v11 = vbslq_s8(vcgtq_f64(v15, v11), v15, v11);
      v13 += 3;
      --v10;
    }

    while (v10);
  }

  else
  {
LABEL_10:
    v11 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  *a2 = v12;
  a2[1] = v3;
  a2[2] = v11;
  return result;
}

void sub_29A04F06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 24;
  v26 = a1 + 24;
  v27 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set(v4);
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set(a1 + 72);
    }

    return;
  }

  v21 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_29A008D14(&v22, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
  }

  v5 = *(a1 + 64);
  v24 = *(a1 + 56);
  v25 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 5);
  *v17 = *a2;
  *&v17[5] = v6;
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (SHIBYTE(v23) < 0)
  {
    if (*(&v22 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v23))
  {
    goto LABEL_19;
  }

  if (v24)
  {
    if (*&v17[8] == 127 || !*v17 && v19 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v21);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v21);
    }
  }

LABEL_19:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v21);
  if (*(a1 + 120) == 1)
  {
    v12 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_29A008D14(&v13, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v13 = *(a1 + 80);
      v14 = *(a1 + 96);
    }

    v7 = *(a1 + 112);
    v15 = *(a1 + 104);
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *v8 = *(a2 + 40);
    *&v8[5] = *(a2 + 45);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_29A00E7E0(&v9, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    if (SHIBYTE(v14) < 0)
    {
      if (!*(&v13 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v14))
    {
LABEL_31:
      if (v15)
      {
        if (*&v8[8] == 127 || !*v8 && v10 == v9)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v12);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v12);
        }
      }
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v12);
  }
}

void sub_29A04F2C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  v27 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v28 = v27;
    sub_29A051268(v23);
    sub_29A02D768(v24 - 48, v28);
  }

  else
  {
    sub_29A051268(v23);
    sub_29A02D6F8(v24 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A04F2B4);
}

void sub_29A04F394(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 24;
  v26 = a1 + 24;
  v27 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set(v4);
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set(a1 + 72);
    }

    return;
  }

  v21 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_29A008D14(&v22, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
  }

  v5 = *(a1 + 64);
  v24 = *(a1 + 56);
  v25 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 5);
  *v17 = *a2;
  *&v17[5] = v6;
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (SHIBYTE(v23) < 0)
  {
    if (*(&v22 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v23))
  {
    goto LABEL_19;
  }

  if (v24)
  {
    if (*&v17[8] == 127 || !*v17 && v19 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v21);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v21);
    }
  }

LABEL_19:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v21);
  if (*(a1 + 120) == 1)
  {
    v12 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_29A008D14(&v13, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v13 = *(a1 + 80);
      v14 = *(a1 + 96);
    }

    v7 = *(a1 + 112);
    v15 = *(a1 + 104);
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *v8 = *(a2 + 40);
    *&v8[5] = *(a2 + 45);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_29A00E7E0(&v9, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    if (SHIBYTE(v14) < 0)
    {
      if (!*(&v13 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v14))
    {
LABEL_31:
      if (v15)
      {
        if (*&v8[8] == 127 || !*v8 && v10 == v9)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v12);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v12);
        }
      }
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v12);
  }
}

void sub_29A04F5F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  v27 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v28 = v27;
    sub_29A051268(v23);
    sub_29A02D768(v24 - 48, v28);
  }

  else
  {
    sub_29A051268(v23);
    sub_29A02D6F8(v24 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A04F5DCLL);
}

void sub_29A04F6BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 24;
  v26 = a1 + 24;
  v27 = "OTypedGeomParam::set()";
  if (!Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 24)))
  {
    Alembic::Abc::v12::OArrayProperty::set(v4);
    if (*(a1 + 120) == 1)
    {
      Alembic::Abc::v12::OArrayProperty::set(a1 + 72);
    }

    return;
  }

  v21 = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    sub_29A008D14(&v22, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
  }

  v5 = *(a1 + 64);
  v24 = *(a1 + 56);
  v25 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 5);
  *v17 = *a2;
  *&v17[5] = v6;
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (SHIBYTE(v23) < 0)
  {
    if (*(&v22 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (HIBYTE(v23))
  {
    goto LABEL_19;
  }

  if (v24)
  {
    if (*&v17[8] == 127 || !*v17 && v19 == __p)
    {
      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v21);
    }

    else
    {
      Alembic::Abc::v12::OArrayProperty::set(&v21);
    }
  }

LABEL_19:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v21);
  if (*(a1 + 120) == 1)
  {
    v12 = *(a1 + 72);
    if (*(a1 + 103) < 0)
    {
      sub_29A008D14(&v13, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      v13 = *(a1 + 80);
      v14 = *(a1 + 96);
    }

    v7 = *(a1 + 112);
    v15 = *(a1 + 104);
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *v8 = *(a2 + 40);
    *&v8[5] = *(a2 + 45);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_29A00E7E0(&v9, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    if (SHIBYTE(v14) < 0)
    {
      if (!*(&v13 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (!HIBYTE(v14))
    {
LABEL_31:
      if (v15)
      {
        if (*&v8[8] == 127 || !*v8 && v10 == v9)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v12);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v12);
        }
      }
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v12);
  }
}

void sub_29A04F918(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a14);
  v27 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v28 = v27;
    sub_29A051268(v23);
    sub_29A02D768(v24 - 48, v28);
  }

  else
  {
    sub_29A051268(v23);
    sub_29A02D6F8(v24 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A04F904);
}

void Alembic::AbcGeom::v12::OCurvesSchema::createPositionProperty(Alembic::AbcGeom::v12::OCurvesSchema *this)
{
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  sub_29A0503CC(&v25, 3);
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v20 = 0;
  }

  v19 = v2;
  sub_29A008E78(__p, "P");
  LODWORD(v13) = 3;
  v14 = &v25;
  v4 = *(this + 90);
  v18[0] = 2;
  v18[2] = v4;
  v17[0] = 0;
  v17[2] = 0;
  v16[0] = 0;
  v16[2] = 0;
  sub_29A0512B8(&v21, &v19, __p, &v13, v18, v17, v16);
  *(this + 62) = v21;
  std::string::operator=((this + 256), &v22);
  v6 = v23;
  v5 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 36);
  *(this + 35) = v6;
  *(this + 36) = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v21);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_29A051850(&v21, &v13);
  if (*(this + 44))
  {
    v8 = 0;
    do
    {
      sub_29A051900(__p, &v21);
      Alembic::Abc::v12::OArrayProperty::set(this + 248);
      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      ++v8;
      v9 = *(this + 44);
    }

    while (v8 < v9);
  }

  else
  {
    v9 = 0;
  }

  sub_29A050634(this, *(this + 90), v9);
  if (v22.__r_.__value_.__l.__size_)
  {
    v22.__r_.__value_.__r.__words[2] = v22.__r_.__value_.__l.__size_;
    operator delete(v22.__r_.__value_.__l.__size_);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A01752C(&v25, v26[0]);
}

void sub_29A04FBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(v29 - 104);
  if (v31)
  {
    *(v29 - 96) = v31;
    operator delete(v31);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  sub_29A01752C(v29 - 72, *(v29 - 64));
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OCurvesSchema::createVertexProperties(Alembic::AbcGeom::v12::OCurvesSchema *this)
{
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  sub_29A0503CC(&v34, 3);
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v29 = v2;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v29 = 0;
  }

  v28 = v3;
  sub_29A008E78(&__p, "nVertices");
  v4 = *(this + 90);
  v23 = 2;
  v24 = v4;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  sub_29A051A7C(&v30, &v28, &__p, &v23, &v21, &v19, &v17);
  *(this + 74) = v30;
  std::string::operator=((this + 304), &v31);
  v6 = v32;
  v5 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 42);
  *(this + 41) = v6;
  *(this + 42) = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v30);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    sub_29A014BEC(v29);
  }

  v15 = v3;
  v16 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, "curveBasisAndType");
  v13 = 1;
  v14 = 4;
  v8 = *(this + 90);
  v23 = 2;
  v24 = v8;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  Alembic::Abc::v12::OScalarProperty::OScalarProperty(&v30, &v15, &__p, &v13, &v23, &v21, &v19, &v17);
  *(this + 272) = v30;
  std::string::operator=((this + 1096), &v31);
  v10 = v32;
  v9 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 140) = v10;
  v11 = *(this + 141);
  *(this + 141) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v30);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  v23 = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_29A051F60(&v30, &__p);
  if (*(this + 44))
  {
    v12 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 296);
      Alembic::Abc::v12::OScalarProperty::set((this + 1088), &v23);
      ++v12;
    }

    while (v12 < *(this + 44));
  }

  if (v31.__r_.__value_.__l.__size_)
  {
    v31.__r_.__value_.__r.__words[2] = v31.__r_.__value_.__l.__size_;
    operator delete(v31.__r_.__value_.__l.__size_);
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A01752C(&v34, v35[0]);
}

void sub_29A04FF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    sub_29A014BEC(v28);
  }

  sub_29A01752C(v29 - 72, *(v29 - 64));
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcGeom::v12::OCurvesSchema::setFromPrevious(Alembic::AbcGeom::v12::OCurvesSchema *this)
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
  if (*(this + 327) < 0)
  {
    if (*(this + 39))
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 327))
  {
    goto LABEL_13;
  }

  if (*(this + 41))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 296));
  }

LABEL_13:
  if (*(this + 1119) < 0)
  {
    if (*(this + 138))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 1119))
  {
    goto LABEL_19;
  }

  if (*(this + 140))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 1088));
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
  if (*(this + 927) < 0)
  {
    if (*(this + 114))
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 927))
  {
    goto LABEL_31;
  }

  if (*(this + 116))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 896));
  }

LABEL_31:
  if (sub_29A051208(this + 368))
  {
    sub_29A0501E0(this + 368);
  }

  if (sub_29A051208(this + 544))
  {
    sub_29A050284(this + 544);
  }

  result = sub_29A051208(this + 720);
  if (result)
  {
    result = sub_29A050328(this + 720);
  }

  if (*(this + 975) < 0)
  {
    if (*(this + 120))
    {
      goto LABEL_43;
    }
  }

  else if (*(this + 975))
  {
    goto LABEL_43;
  }

  if (*(this + 122))
  {
    result = Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 944));
  }

LABEL_43:
  if (*(this + 1023) < 0)
  {
    if (*(this + 126))
    {
      goto LABEL_49;
    }
  }

  else if (*(this + 1023))
  {
    goto LABEL_49;
  }

  if (*(this + 128))
  {
    result = Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 992));
  }

LABEL_49:
  if (*(this + 1071) < 0)
  {
    if (*(this + 132))
    {
      return result;
    }
  }

  else if (*(this + 1071))
  {
    return result;
  }

  if (*(this + 134))
  {
    return Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 1040));
  }

  return result;
}

void sub_29A05018C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A05017CLL);
}

uint64_t sub_29A0501E0(_BYTE *a1)
{
  result = Alembic::Abc::v12::OArrayProperty::setFromPrevious((a1 + 24));
  if (a1[120] == 1)
  {
    return Alembic::Abc::v12::OArrayProperty::setFromPrevious((a1 + 72));
  }

  return result;
}

void sub_29A050230(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A050220);
}

uint64_t sub_29A050284(_BYTE *a1)
{
  result = Alembic::Abc::v12::OArrayProperty::setFromPrevious((a1 + 24));
  if (a1[120] == 1)
  {
    return Alembic::Abc::v12::OArrayProperty::setFromPrevious((a1 + 72));
  }

  return result;
}

void sub_29A0502D4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A0502C4);
}

uint64_t sub_29A050328(_BYTE *a1)
{
  result = Alembic::Abc::v12::OArrayProperty::setFromPrevious((a1 + 24));
  if (a1[120] == 1)
  {
    return Alembic::Abc::v12::OArrayProperty::setFromPrevious((a1 + 72));
  }

  return result;
}

void sub_29A050378(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A050368);
}

void sub_29A0503CC(uint64_t **a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      sub_29A008E78(v9, "geoScope");
      sub_29A008E78(&__p, "uni");
      v11 = v9;
      v4 = sub_29A00B038(a1, v9, &unk_29B4325FC, &v11);
      std::string::operator=((v4 + 7), &__p);
    }

    else
    {
      sub_29A008E78(v9, "geoScope");
      sub_29A008E78(&__p, "con");
      v11 = v9;
      v7 = sub_29A00B038(a1, v9, &unk_29B4325FC, &v11);
      std::string::operator=((v7 + 7), &__p);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_29A008E78(v9, "geoScope");
        sub_29A008E78(&__p, "var");
        v11 = v9;
        v5 = sub_29A00B038(a1, v9, &unk_29B4325FC, &v11);
        std::string::operator=((v5 + 7), &__p);
        break;
      case 3:
        sub_29A008E78(v9, "geoScope");
        sub_29A008E78(&__p, "vtx");
        v11 = v9;
        v6 = sub_29A00B038(a1, v9, &unk_29B4325FC, &v11);
        std::string::operator=((v6 + 7), &__p);
        break;
      case 4:
        sub_29A008E78(v9, "geoScope");
        sub_29A008E78(&__p, "fvr");
        v11 = v9;
        v3 = sub_29A00B038(a1, v9, &unk_29B4325FC, &v11);
        std::string::operator=((v3 + 7), &__p);
        break;
      default:
        return;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_29A0505E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A050634(uint64_t a1, int a2, uint64_t a3)
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

void sub_29A0507A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
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
  JUMPOUT(0x29A05078CLL);
}

void *sub_29A050844(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_29A050888(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 279) < 0)
  {
    if (!*(a1 + 264))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_29A04428C((a1 + 8), v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    Alembic::Abc::v12::OArchive::getTimeSampling(v6, a2);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    return;
  }

  if (*(a1 + 279))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(a1 + 280))
  {
    goto LABEL_8;
  }

  v3 = sub_29A0510D4(a1 + 248);
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29A05092C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  Alembic::Abc::v12::OArchive::~OArchive(va1);
  Alembic::Abc::v12::OObject::~OObject(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A050950(uint64_t a1, __int128 *a2)
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
  *(a1 + 24) = *(a2 + 6);
  std::string::operator=((a1 + 32), (a2 + 2));
  v6 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 64);
  *(a1 + 56) = v6;
  *(a1 + 64) = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  *(a1 + 72) = *(a2 + 18);
  std::string::operator=((a1 + 80), (a2 + 5));
  v9 = *(a2 + 13);
  v8 = *(a2 + 14);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 112);
  *(a1 + 104) = v9;
  *(a1 + 112) = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 32);
  std::string::operator=((a1 + 136), (a2 + 136));
  v12 = *(a2 + 20);
  v11 = *(a2 + 21);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 168);
  *(a1 + 160) = v12;
  *(a1 + 168) = v11;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  return a1;
}

uint64_t sub_29A050A50(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 128));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 72));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t Alembic::AbcGeom::v12::OCurvesSchema::setTimeSampling(Alembic::AbcGeom::v12::OCurvesSchema *this, int a2)
{
  *(this + 90) = a2;
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
  if (*(this + 327) < 0)
  {
    if (*(this + 39))
    {
      goto LABEL_13;
    }
  }

  else if (*(this + 327))
  {
    goto LABEL_13;
  }

  if (*(this + 41))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 296));
  }

LABEL_13:
  if (*(this + 1119) < 0)
  {
    if (*(this + 138))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 1119))
  {
    goto LABEL_19;
  }

  if (*(this + 140))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 1088));
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
  if (*(this + 927) < 0)
  {
    if (*(this + 114))
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 927))
  {
    goto LABEL_31;
  }

  if (*(this + 116))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 896));
  }

LABEL_31:
  if (sub_29A051208(this + 368))
  {
    sub_29A050CD8(this + 368);
  }

  if (sub_29A051208(this + 544))
  {
    sub_29A050D84(this + 544);
  }

  result = sub_29A051208(this + 720);
  if (result)
  {
    result = sub_29A050E30(this + 720);
  }

  if (*(this + 975) < 0)
  {
    if (*(this + 120))
    {
      goto LABEL_43;
    }
  }

  else if (*(this + 975))
  {
    goto LABEL_43;
  }

  if (*(this + 122))
  {
    result = Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 944));
  }

LABEL_43:
  if (*(this + 1023) < 0)
  {
    if (*(this + 126))
    {
      goto LABEL_49;
    }
  }

  else if (*(this + 1023))
  {
    goto LABEL_49;
  }

  if (*(this + 128))
  {
    result = Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 992));
  }

LABEL_49:
  if (*(this + 1071) < 0)
  {
    if (*(this + 132))
    {
      return result;
    }
  }

  else if (*(this + 1071))
  {
    return result;
  }

  if (*(this + 134))
  {
    return Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 1040));
  }

  return result;
}

void sub_29A050C84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A050C74);
}

uint64_t sub_29A050CD8(_BYTE *a1)
{
  result = Alembic::Abc::v12::OArrayProperty::setTimeSampling((a1 + 24));
  if (a1[120] == 1)
  {
    return Alembic::Abc::v12::OArrayProperty::setTimeSampling((a1 + 72));
  }

  return result;
}

void sub_29A050D30(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A050D20);
}

uint64_t sub_29A050D84(_BYTE *a1)
{
  result = Alembic::Abc::v12::OArrayProperty::setTimeSampling((a1 + 24));
  if (a1[120] == 1)
  {
    return Alembic::Abc::v12::OArrayProperty::setTimeSampling((a1 + 72));
  }

  return result;
}

void sub_29A050DDC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A050DCCLL);
}

uint64_t sub_29A050E30(_BYTE *a1)
{
  result = Alembic::Abc::v12::OArrayProperty::setTimeSampling((a1 + 24));
  if (a1[120] == 1)
  {
    return Alembic::Abc::v12::OArrayProperty::setTimeSampling((a1 + 72));
  }

  return result;
}

void sub_29A050E88(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A050E78);
}

int *Alembic::AbcGeom::v12::OCurvesSchema::setTimeSampling(Alembic::AbcGeom::v12::OCurvesSchema *a1, void *a2)
{
  result = (a1 + 8);
  v7 = result;
  v8 = "OCurvesSchema::setTimeSampling( TimeSamplingPtr)";
  if (*a2)
  {
    sub_29A04428C(result, v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    v4 = Alembic::Abc::v12::OArchive::addTimeSampling(v6);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    return Alembic::AbcGeom::v12::OCurvesSchema::setTimeSampling(a1, v4);
  }

  return result;
}

void sub_29A050F60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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
  JUMPOUT(0x29A050F50);
}

void Alembic::AbcGeom::v12::OCurvesSchema::init(Alembic::AbcGeom::v12::OCurvesSchema *this, int a2, char a3)
{
  *(this + 344) = a3;
  *(this + 44) = 0;
  *(this + 90) = a2;
  if ((a3 & 1) == 0)
  {
    Alembic::AbcGeom::v12::OCurvesSchema::createPositionProperty(this);
    Alembic::AbcGeom::v12::OCurvesSchema::createVertexProperties(this);
  }
}

void sub_29A051044(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A051030);
}

void sub_29A05112C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  {
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
      Alembic::Abc::v12::OBasePropertyT<std::shared_ptr<Alembic::AbcCoreAbstract::v12::ArrayPropertyWriter>>::getHeader(void)const::g_phd = v11;
    }
  }

  JUMPOUT(0x29A05111CLL);
}

BOOL sub_29A051208(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (*(a1 + 55))
  {
    return 0;
  }

LABEL_5:
  if (!*(a1 + 56))
  {
    return 0;
  }

  if (*(a1 + 120) != 1)
  {
    return 1;
  }

  if (*(a1 + 103) < 0)
  {
    if (*(a1 + 88))
    {
      return 0;
    }
  }

  else if (*(a1 + 103))
  {
    return 0;
  }

  return *(a1 + 104) != 0;
}

void sub_29A051268(uint64_t a1)
{
  MEMORY[0x29C2C1A60](a1, "");
  sub_29A02F0A0(a1 + 24);
  sub_29A02F0A0(a1 + 72);
  sub_29A02F0A0(a1 + 128);
  *(a1 + 124) = 127;
  *(a1 + 120) = 0;
}

uint64_t sub_29A0512B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A051390(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A051370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A051390(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v25[34] = "OTypedArrayProperty::init()";
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
  sub_29A008E78(&__str, "point");
  v31 = __p;
  v13 = sub_29A00B038(&v23, __p, &unk_29B4325FC, &v31);
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

  __str.__r_.__value_.__s.__data_[4] = 3;
  LODWORD(__str.__r_.__value_.__l.__data_) = 10;
  (*(*v15 + 104))(__p);
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

void sub_29A0516E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A051630);
}

void *sub_29A051850(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  sub_29A0161D0(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x30000000ALL;
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

void sub_29A0518E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A051900(void *a1, uint64_t *a2)
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
  if (v6 != 10 || *(v5 + 4) != 3)
  {
    sub_29A008864(&v17);
    v8 = sub_29A00911C(v18, "Invalid DataType in TypedArraySample. Expected: ", 48);
    v16 = 3;
    v15 = 10;
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

void sub_29A051A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t sub_29A051A7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A051B54(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A051B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A051B54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  LODWORD(__p[0]) = 6;
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

void sub_29A051E38(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A051D84);
}

void *sub_29A051F60(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 2;
  sub_29A0161D0(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x100000006;
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

void sub_29A051FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A052004(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A0520DC(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A0520BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A0520DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v25[34] = "OTypedArrayProperty::init()";
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
  sub_29A008E78(&__str, "vector");
  v31 = __p;
  v13 = sub_29A00B038(&v23, __p, &unk_29B4325FC, &v31);
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

  __str.__r_.__value_.__s.__data_[4] = 3;
  LODWORD(__str.__r_.__value_.__l.__data_) = 10;
  (*(*v15 + 104))(__p);
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

void sub_29A052430(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A05237CLL);
}

void *sub_29A05259C(void *a1, uint64_t *a2)
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
  a1[1] = 0x20000000ALL;
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

void sub_29A052624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A052640(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 2;
  sub_29A0161D0(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x100000005;
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

void sub_29A0526C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0526E4(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29A00E7E0((a1 + 16), a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v8 = *a3;
  v9 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v9;
  *(a1 + 40) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29A00E7E0((a1 + 56), a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  *(a1 + 80) = a4;
  return a1;
}

void sub_29A05277C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A052798(char *__dst, uint64_t *a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
    *(__dst + 2) = *(a3 + 16);
    *__dst = v17;
  }

  *(__dst + 6) = 2;
  v49 = __dst + 24;
  sub_29A008E78(__dst + 4, "");
  *(__dst + 18) = 2;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_29A008E78(__dst + 10, "");
  *(__dst + 32) = 2;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  __dst[120] = a4;
  *(__dst + 31) = a5;
  sub_29A008E78(__dst + 17, "");
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v83[0].__locale_ = 0;
  v82 = 0;
  __p = &v82;
  v88 = 2;
  sub_29A019350(v89, &__p);
  v91 = 0;
  v90 = 0u;
  v92 = 1;
  sub_29A01752C(&__p, v82);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  sub_29A02E010(a7, &v88);
  sub_29A02E010(a8, &v88);
  sub_29A02E010(a9, &v88);
  v19 = sub_29A019350(v87, v89);
  sub_29A0503CC(v19, a5);
  sub_29A008E78(&__p, "isGeomParam");
  sub_29A008E78(&__str, "true");
  p_p = &__p;
  v20 = sub_29A00B038(v87, &__p, &unk_29B4325FC, &p_p);
  std::string::operator=((v20 + 7), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&v86, "float32_t");
  sub_29A008E78(&__p, "podName");
  __str.__r_.__value_.__r.__words[0] = &__p;
  v21 = sub_29A00B038(v87, &__p, &unk_29B4325FC, &__str);
  std::string::operator=((v21 + 7), &v86);
  if (SHIBYTE(v83[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  sub_29A00B6DC(&__p);
  MEMORY[0x29C2C1F00](&__p, 2);
  std::stringbuf::str();
  sub_29A008E78(&__str, "podExtent");
  p_p = &__str;
  v22 = sub_29A00B038(v87, &__str.__r_.__value_.__l.__data_, &unk_29B4325FC, &p_p);
  std::string::operator=((v22 + 7), &v80);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A00B6DC(&__str);
  MEMORY[0x29C2C1F00](&__str, a6);
  std::stringbuf::str();
  sub_29A008E78(&p_p, "arrayExtent");
  v74.__r_.__value_.__r.__words[0] = &p_p;
  v23 = sub_29A00B038(v87, &p_p, &unk_29B4325FC, &v74);
  std::string::operator=((v23 + 7), &v75);
  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
  }

  sub_29A008E78(&p_p, "interpretation");
  sub_29A008E78(&v74, "vector");
  p_p_p = &p_p;
  v24 = sub_29A00B038(v87, &p_p, &unk_29B4325FC, &p_p_p);
  std::string::operator=((v24 + 7), &v74);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
  }

  v25 = v88;
  v26 = v90;
  if (*(&v90 + 1))
  {
    atomic_fetch_add_explicit((*(&v90 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v27 + 24))(&v74);
    (*(*v74.__r_.__value_.__l.__data_ + 24))(&p_p);
    v29 = (*(*p_p + 48))(p_p, v26);
    if (v71.__r_.__value_.__r.__words[0])
    {
      sub_29A014BEC(v71.__r_.__value_.__l.__data_);
    }

    if (v74.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v74.__r_.__value_.__l.__size_);
    }

    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v29 = v91;
  }

  if (__dst[120] == 1)
  {
    v30 = a2[1];
    v68 = *a2;
    v69 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = v87;
    LODWORD(p_p_p) = 1;
    LODWORD(v67) = v25;
    Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&p_p, &v68, a3, &v74, &p_p_p);
    *(__dst + 32) = p_p;
    std::string::operator=((__dst + 136), &v71);
    v32 = v72;
    v31 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(__dst + 21);
    *(__dst + 20) = v32;
    *(__dst + 21) = v31;
    if (v33)
    {
      sub_29A014BEC(v33);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&p_p);
    if (v69)
    {
      sub_29A014BEC(v69);
    }

    v61 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_29A008D14(&v62, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v62 = *(__dst + 136);
      v63 = *(__dst + 19);
    }

    v38 = *(__dst + 21);
    v64 = *(__dst + 20);
    v65 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&v74, ".vals");
    LODWORD(p_p_p) = 3;
    v67 = v87;
    v59 = 1;
    v60 = v25;
    v57 = 2;
    v58 = v29;
    sub_29A05345C(&p_p, &v61, &v74, &p_p_p, &v59, &v57);
    *v49 = p_p;
    std::string::operator=((__dst + 32), &v71);
    v40 = v72;
    v39 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v41 = *(__dst + 8);
    *(__dst + 7) = v40;
    *(__dst + 8) = v39;
    if (v41)
    {
      sub_29A014BEC(v41);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v61);
    v52 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_29A008D14(&v53, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v53 = *(__dst + 136);
      v54 = *(__dst + 19);
    }

    v42 = *(__dst + 21);
    v55 = *(__dst + 20);
    v56 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&v74, ".indices");
    LODWORD(p_p_p) = 2;
    LODWORD(v67) = v29;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    sub_29A0539F8(&p_p, &v52, &v74, &p_p_p, &v59, &v57);
    *(__dst + 18) = p_p;
    std::string::operator=((__dst + 80), &v71);
    v44 = v72;
    v43 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(__dst + 14);
    *(__dst + 13) = v44;
    *(__dst + 14) = v43;
    if (v45)
    {
      sub_29A014BEC(v45);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v52);
  }

  else
  {
    v34 = a2[1];
    v50 = *a2;
    v51 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = v87;
    LODWORD(p_p_p) = 1;
    LODWORD(v67) = v25;
    v59 = 2;
    v60 = v29;
    v57 = 0;
    v58 = 0;
    sub_29A053EE0(&p_p, &v50, a3, &v74, &p_p_p, &v59, &v57);
    *v49 = p_p;
    std::string::operator=((__dst + 32), &v71);
    v36 = v72;
    v35 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(__dst + 8);
    *(__dst + 7) = v36;
    *(__dst + 8) = v35;
    if (v37)
    {
      sub_29A014BEC(v37);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (v51)
    {
      sub_29A014BEC(v51);
    }
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9538];
  v46 = __str.__r_.__value_.__r.__words[0];
  v47 = *(MEMORY[0x29EDC9538] + 24);
  *(__str.__r_.__value_.__r.__words + *(__str.__r_.__value_.__r.__words[0] - 24)) = v47;
  __str.__r_.__value_.__l.__size_ = MEMORY[0x29EDC9570] + 16;
  if (v78 < 0)
  {
    operator delete(v77);
  }

  __str.__r_.__value_.__l.__size_ = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&__str.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v79);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  __p = v46;
  *(&__p + *(v46 - 3)) = v47;
  v82 = (MEMORY[0x29EDC9570] + 16);
  if (v84 < 0)
  {
    operator delete(v83[7].__locale_);
  }

  v82 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(v83);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v85);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  sub_29A01752C(v87, v87[1]);
  if (*(&v90 + 1))
  {
    sub_29A014BEC(*(&v90 + 1));
  }

  sub_29A01752C(v89, v89[1]);
  return __dst;
}

void sub_29A0531BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Alembic::Abc::v12::OArrayProperty *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_29A00B848(&a48);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  sub_29A00B848(&STACK[0x240]);
  if (*(v52 - 177) < 0)
  {
    operator delete(*(v52 - 200));
  }

  sub_29A01752C(v52 - 176, *(v52 - 168));
  sub_29A02E0BC(v52 - 152);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v50);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v49);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(a10);
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  _Unwind_Resume(a1);
}

void sub_29A053400(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A053394);
}

void sub_29A053418()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x29A0533ACLL);
}

void sub_29A053430(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    JUMPOUT(0x29A0533B8);
  }

  JUMPOUT(0x29A0533BCLL);
}

uint64_t sub_29A05345C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_29A053538(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A053518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_29A053538(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v25[34] = "OTypedArrayProperty::init()";
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
  sub_29A008E78(&__str, "vector");
  v31 = __p;
  v13 = sub_29A00B038(&v23, __p, &unk_29B4325FC, &v31);
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

  __str.__r_.__value_.__s.__data_[4] = 2;
  LODWORD(__str.__r_.__value_.__l.__data_) = 10;
  (*(*v15 + 104))(__p);
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

void sub_29A05388C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A0537D8);
}

uint64_t sub_29A0539F8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_29A053AD4(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A053AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_29A053AD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  LODWORD(__p[0]) = 5;
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

void sub_29A053DB8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A053D04);
}

uint64_t sub_29A053EE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A053538(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A053F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void *sub_29A053FB8(void *a1, uint64_t *a2)
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
  if (v6 != 10 || *(v5 + 4) != 3)
  {
    sub_29A008864(&v17);
    v8 = sub_29A00911C(v18, "Invalid DataType in TypedArraySample. Expected: ", 48);
    v16 = 3;
    v15 = 10;
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

void sub_29A0540F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t sub_29A054134(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29A00E7E0((a1 + 16), a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v8 = *a3;
  v9 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v9;
  *(a1 + 40) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29A00E7E0((a1 + 56), a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  *(a1 + 80) = a4;
  return a1;
}

void sub_29A0541CC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A0541E8(char *__dst, uint64_t *a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
    *(__dst + 2) = *(a3 + 16);
    *__dst = v17;
  }

  *(__dst + 6) = 2;
  v49 = __dst + 24;
  sub_29A008E78(__dst + 4, "");
  *(__dst + 18) = 2;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_29A008E78(__dst + 10, "");
  *(__dst + 32) = 2;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  __dst[120] = a4;
  *(__dst + 31) = a5;
  sub_29A008E78(__dst + 17, "");
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v83[0].__locale_ = 0;
  v82 = 0;
  __p = &v82;
  v88 = 2;
  sub_29A019350(v89, &__p);
  v91 = 0;
  v90 = 0u;
  v92 = 1;
  sub_29A01752C(&__p, v82);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  sub_29A02E010(a7, &v88);
  sub_29A02E010(a8, &v88);
  sub_29A02E010(a9, &v88);
  v19 = sub_29A019350(v87, v89);
  sub_29A0503CC(v19, a5);
  sub_29A008E78(&__p, "isGeomParam");
  sub_29A008E78(&__str, "true");
  p_p = &__p;
  v20 = sub_29A00B038(v87, &__p, &unk_29B4325FC, &p_p);
  std::string::operator=((v20 + 7), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&v86, "float32_t");
  sub_29A008E78(&__p, "podName");
  __str.__r_.__value_.__r.__words[0] = &__p;
  v21 = sub_29A00B038(v87, &__p, &unk_29B4325FC, &__str);
  std::string::operator=((v21 + 7), &v86);
  if (SHIBYTE(v83[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  sub_29A00B6DC(&__p);
  MEMORY[0x29C2C1F00](&__p, 3);
  std::stringbuf::str();
  sub_29A008E78(&__str, "podExtent");
  p_p = &__str;
  v22 = sub_29A00B038(v87, &__str.__r_.__value_.__l.__data_, &unk_29B4325FC, &p_p);
  std::string::operator=((v22 + 7), &v80);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A00B6DC(&__str);
  MEMORY[0x29C2C1F00](&__str, a6);
  std::stringbuf::str();
  sub_29A008E78(&p_p, "arrayExtent");
  v74.__r_.__value_.__r.__words[0] = &p_p;
  v23 = sub_29A00B038(v87, &p_p, &unk_29B4325FC, &v74);
  std::string::operator=((v23 + 7), &v75);
  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
  }

  sub_29A008E78(&p_p, "interpretation");
  sub_29A008E78(&v74, "normal");
  p_p_p = &p_p;
  v24 = sub_29A00B038(v87, &p_p, &unk_29B4325FC, &p_p_p);
  std::string::operator=((v24 + 7), &v74);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
  }

  v25 = v88;
  v26 = v90;
  if (*(&v90 + 1))
  {
    atomic_fetch_add_explicit((*(&v90 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v27 + 24))(&v74);
    (*(*v74.__r_.__value_.__l.__data_ + 24))(&p_p);
    v29 = (*(*p_p + 48))(p_p, v26);
    if (v71.__r_.__value_.__r.__words[0])
    {
      sub_29A014BEC(v71.__r_.__value_.__l.__data_);
    }

    if (v74.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v74.__r_.__value_.__l.__size_);
    }

    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v29 = v91;
  }

  if (__dst[120] == 1)
  {
    v30 = a2[1];
    v68 = *a2;
    v69 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = v87;
    LODWORD(p_p_p) = 1;
    LODWORD(v67) = v25;
    Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&p_p, &v68, a3, &v74, &p_p_p);
    *(__dst + 32) = p_p;
    std::string::operator=((__dst + 136), &v71);
    v32 = v72;
    v31 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(__dst + 21);
    *(__dst + 20) = v32;
    *(__dst + 21) = v31;
    if (v33)
    {
      sub_29A014BEC(v33);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&p_p);
    if (v69)
    {
      sub_29A014BEC(v69);
    }

    v61 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_29A008D14(&v62, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v62 = *(__dst + 136);
      v63 = *(__dst + 19);
    }

    v38 = *(__dst + 21);
    v64 = *(__dst + 20);
    v65 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&v74, ".vals");
    LODWORD(p_p_p) = 3;
    v67 = v87;
    v59 = 1;
    v60 = v25;
    v57 = 2;
    v58 = v29;
    sub_29A054EAC(&p_p, &v61, &v74, &p_p_p, &v59, &v57);
    *v49 = p_p;
    std::string::operator=((__dst + 32), &v71);
    v40 = v72;
    v39 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v41 = *(__dst + 8);
    *(__dst + 7) = v40;
    *(__dst + 8) = v39;
    if (v41)
    {
      sub_29A014BEC(v41);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v61);
    v52 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_29A008D14(&v53, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v53 = *(__dst + 136);
      v54 = *(__dst + 19);
    }

    v42 = *(__dst + 21);
    v55 = *(__dst + 20);
    v56 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&v74, ".indices");
    LODWORD(p_p_p) = 2;
    LODWORD(v67) = v29;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    sub_29A0539F8(&p_p, &v52, &v74, &p_p_p, &v59, &v57);
    *(__dst + 18) = p_p;
    std::string::operator=((__dst + 80), &v71);
    v44 = v72;
    v43 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(__dst + 14);
    *(__dst + 13) = v44;
    *(__dst + 14) = v43;
    if (v45)
    {
      sub_29A014BEC(v45);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v52);
  }

  else
  {
    v34 = a2[1];
    v50 = *a2;
    v51 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = v87;
    LODWORD(p_p_p) = 1;
    LODWORD(v67) = v25;
    v59 = 2;
    v60 = v29;
    v57 = 0;
    v58 = 0;
    sub_29A055448(&p_p, &v50, a3, &v74, &p_p_p, &v59, &v57);
    *v49 = p_p;
    std::string::operator=((__dst + 32), &v71);
    v36 = v72;
    v35 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(__dst + 8);
    *(__dst + 7) = v36;
    *(__dst + 8) = v35;
    if (v37)
    {
      sub_29A014BEC(v37);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (v51)
    {
      sub_29A014BEC(v51);
    }
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9538];
  v46 = __str.__r_.__value_.__r.__words[0];
  v47 = *(MEMORY[0x29EDC9538] + 24);
  *(__str.__r_.__value_.__r.__words + *(__str.__r_.__value_.__r.__words[0] - 24)) = v47;
  __str.__r_.__value_.__l.__size_ = MEMORY[0x29EDC9570] + 16;
  if (v78 < 0)
  {
    operator delete(v77);
  }

  __str.__r_.__value_.__l.__size_ = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&__str.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v79);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  __p = v46;
  *(&__p + *(v46 - 3)) = v47;
  v82 = (MEMORY[0x29EDC9570] + 16);
  if (v84 < 0)
  {
    operator delete(v83[7].__locale_);
  }

  v82 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(v83);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v85);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  sub_29A01752C(v87, v87[1]);
  if (*(&v90 + 1))
  {
    sub_29A014BEC(*(&v90 + 1));
  }

  sub_29A01752C(v89, v89[1]);
  return __dst;
}

void sub_29A054C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Alembic::Abc::v12::OArrayProperty *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_29A00B848(&a48);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  sub_29A00B848(&STACK[0x240]);
  if (*(v52 - 177) < 0)
  {
    operator delete(*(v52 - 200));
  }

  sub_29A01752C(v52 - 176, *(v52 - 168));
  sub_29A02E0BC(v52 - 152);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v50);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v49);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(a10);
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  _Unwind_Resume(a1);
}

void sub_29A054E50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A054DE4);
}

void sub_29A054E68()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x29A054DFCLL);
}

void sub_29A054E80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    JUMPOUT(0x29A054E08);
  }

  JUMPOUT(0x29A054E0CLL);
}

uint64_t sub_29A054EAC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_29A054F88(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A054F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_29A054F88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v25[34] = "OTypedArrayProperty::init()";
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
  sub_29A008E78(&__str, "normal");
  v31 = __p;
  v13 = sub_29A00B038(&v23, __p, &unk_29B4325FC, &v31);
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

  __str.__r_.__value_.__s.__data_[4] = 3;
  LODWORD(__str.__r_.__value_.__l.__data_) = 10;
  (*(*v15 + 104))(__p);
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

void sub_29A0552DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A055228);
}

uint64_t sub_29A055448(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A054F88(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A055500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void *sub_29A055520(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = (a2[1] - *a2) >> 2;
  sub_29A0161D0(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x10000000ALL;
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

void sub_29A0555A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0555C4(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29A00E7E0((a1 + 16), a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v8 = *a3;
  v9 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v9;
  *(a1 + 40) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29A00E7E0((a1 + 56), a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  *(a1 + 80) = a4;
  return a1;
}

void sub_29A05565C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A055678(char *__dst, uint64_t *a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
    *(__dst + 2) = *(a3 + 16);
    *__dst = v17;
  }

  *(__dst + 6) = 2;
  v49 = __dst + 24;
  sub_29A008E78(__dst + 4, "");
  *(__dst + 18) = 2;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_29A008E78(__dst + 10, "");
  *(__dst + 32) = 2;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  __dst[120] = a4;
  *(__dst + 31) = a5;
  sub_29A008E78(__dst + 17, "");
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v83[0].__locale_ = 0;
  v82 = 0;
  __p = &v82;
  v88 = 2;
  sub_29A019350(v89, &__p);
  v91 = 0;
  v90 = 0u;
  v92 = 1;
  sub_29A01752C(&__p, v82);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  sub_29A02E010(a7, &v88);
  sub_29A02E010(a8, &v88);
  sub_29A02E010(a9, &v88);
  v19 = sub_29A019350(v87, v89);
  sub_29A0503CC(v19, a5);
  sub_29A008E78(&__p, "isGeomParam");
  sub_29A008E78(&__str, "true");
  p_p = &__p;
  v20 = sub_29A00B038(v87, &__p, &unk_29B4325FC, &p_p);
  std::string::operator=((v20 + 7), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&v86, "float32_t");
  sub_29A008E78(&__p, "podName");
  __str.__r_.__value_.__r.__words[0] = &__p;
  v21 = sub_29A00B038(v87, &__p, &unk_29B4325FC, &__str);
  std::string::operator=((v21 + 7), &v86);
  if (SHIBYTE(v83[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  sub_29A00B6DC(&__p);
  MEMORY[0x29C2C1F00](&__p, 1);
  std::stringbuf::str();
  sub_29A008E78(&__str, "podExtent");
  p_p = &__str;
  v22 = sub_29A00B038(v87, &__str.__r_.__value_.__l.__data_, &unk_29B4325FC, &p_p);
  std::string::operator=((v22 + 7), &v80);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A00B6DC(&__str);
  MEMORY[0x29C2C1F00](&__str, a6);
  std::stringbuf::str();
  sub_29A008E78(&p_p, "arrayExtent");
  v74.__r_.__value_.__r.__words[0] = &p_p;
  v23 = sub_29A00B038(v87, &p_p, &unk_29B4325FC, &v74);
  std::string::operator=((v23 + 7), &v75);
  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
  }

  sub_29A008E78(&p_p, "interpretation");
  sub_29A008E78(&v74, "");
  p_p_p = &p_p;
  v24 = sub_29A00B038(v87, &p_p, &unk_29B4325FC, &p_p_p);
  std::string::operator=((v24 + 7), &v74);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
  }

  v25 = v88;
  v26 = v90;
  if (*(&v90 + 1))
  {
    atomic_fetch_add_explicit((*(&v90 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v27 + 24))(&v74);
    (*(*v74.__r_.__value_.__l.__data_ + 24))(&p_p);
    v29 = (*(*p_p + 48))(p_p, v26);
    if (v71.__r_.__value_.__r.__words[0])
    {
      sub_29A014BEC(v71.__r_.__value_.__l.__data_);
    }

    if (v74.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(v74.__r_.__value_.__l.__size_);
    }

    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }

  else
  {
    v29 = v91;
  }

  if (__dst[120] == 1)
  {
    v30 = a2[1];
    v68 = *a2;
    v69 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = v87;
    LODWORD(p_p_p) = 1;
    LODWORD(v67) = v25;
    Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&p_p, &v68, a3, &v74, &p_p_p);
    *(__dst + 32) = p_p;
    std::string::operator=((__dst + 136), &v71);
    v32 = v72;
    v31 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(__dst + 21);
    *(__dst + 20) = v32;
    *(__dst + 21) = v31;
    if (v33)
    {
      sub_29A014BEC(v33);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&p_p);
    if (v69)
    {
      sub_29A014BEC(v69);
    }

    v61 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_29A008D14(&v62, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v62 = *(__dst + 136);
      v63 = *(__dst + 19);
    }

    v38 = *(__dst + 21);
    v64 = *(__dst + 20);
    v65 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&v74, ".vals");
    LODWORD(p_p_p) = 3;
    v67 = v87;
    v59 = 1;
    v60 = v25;
    v57 = 2;
    v58 = v29;
    sub_29A056820(&p_p, &v61, &v74, &p_p_p, &v59, &v57);
    *v49 = p_p;
    std::string::operator=((__dst + 32), &v71);
    v40 = v72;
    v39 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v41 = *(__dst + 8);
    *(__dst + 7) = v40;
    *(__dst + 8) = v39;
    if (v41)
    {
      sub_29A014BEC(v41);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v61);
    v52 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_29A008D14(&v53, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v53 = *(__dst + 136);
      v54 = *(__dst + 19);
    }

    v42 = *(__dst + 21);
    v55 = *(__dst + 20);
    v56 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&v74, ".indices");
    LODWORD(p_p_p) = 2;
    LODWORD(v67) = v29;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    sub_29A0539F8(&p_p, &v52, &v74, &p_p_p, &v59, &v57);
    *(__dst + 18) = p_p;
    std::string::operator=((__dst + 80), &v71);
    v44 = v72;
    v43 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(__dst + 14);
    *(__dst + 13) = v44;
    *(__dst + 14) = v43;
    if (v45)
    {
      sub_29A014BEC(v45);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v52);
  }

  else
  {
    v34 = a2[1];
    v50 = *a2;
    v51 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = v87;
    LODWORD(p_p_p) = 1;
    LODWORD(v67) = v25;
    v59 = 2;
    v60 = v29;
    v57 = 0;
    v58 = 0;
    sub_29A05633C(&p_p, &v50, a3, &v74, &p_p_p, &v59, &v57);
    *v49 = p_p;
    std::string::operator=((__dst + 32), &v71);
    v36 = v72;
    v35 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(__dst + 8);
    *(__dst + 7) = v36;
    *(__dst + 8) = v35;
    if (v37)
    {
      sub_29A014BEC(v37);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&p_p);
    if (v51)
    {
      sub_29A014BEC(v51);
    }
  }

  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9538];
  v46 = __str.__r_.__value_.__r.__words[0];
  v47 = *(MEMORY[0x29EDC9538] + 24);
  *(__str.__r_.__value_.__r.__words + *(__str.__r_.__value_.__r.__words[0] - 24)) = v47;
  __str.__r_.__value_.__l.__size_ = MEMORY[0x29EDC9570] + 16;
  if (v78 < 0)
  {
    operator delete(v77);
  }

  __str.__r_.__value_.__l.__size_ = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&__str.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v79);
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  __p = v46;
  *(&__p + *(v46 - 3)) = v47;
  v82 = (MEMORY[0x29EDC9570] + 16);
  if (v84 < 0)
  {
    operator delete(v83[7].__locale_);
  }

  v82 = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(v83);
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](&v85);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  sub_29A01752C(v87, v87[1]);
  if (*(&v90 + 1))
  {
    sub_29A014BEC(*(&v90 + 1));
  }

  sub_29A01752C(v89, v89[1]);
  return __dst;
}

void sub_29A05609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Alembic::Abc::v12::OArrayProperty *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_29A00B848(&a48);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  sub_29A00B848(&STACK[0x240]);
  if (*(v52 - 177) < 0)
  {
    operator delete(*(v52 - 200));
  }

  sub_29A01752C(v52 - 176, *(v52 - 168));
  sub_29A02E0BC(v52 - 152);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v50);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v49);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(a10);
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  _Unwind_Resume(a1);
}

void sub_29A0562E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A056274);
}

void sub_29A0562F8()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x29A05628CLL);
}

void sub_29A056310(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    JUMPOUT(0x29A056298);
  }

  JUMPOUT(0x29A05629CLL);
}

uint64_t sub_29A05633C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A056414(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A0563F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A056414(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  LODWORD(__p[0]) = 10;
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

void sub_29A0566F8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A056644);
}

uint64_t sub_29A056820(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_29A056414(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A0568DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0568FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_29A0569D8(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A0569B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_29A0569D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  LODWORD(__p[0]) = 1;
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

void sub_29A056CB8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A056C04);
}

void *sub_29A056DE0(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = a2[1] - *a2;
  sub_29A0161D0(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x100000001;
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

void sub_29A056E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::OFaceSetSchema::OFaceSetSchema(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v18 = *a2;
  v19 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A056FFC(a1, &v18, a3, a4, a5, a6, a7);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  *a1 = &unk_2A203DAA8;
  *(a1 + 248) = 2;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  v14 = *a2;
  v15 = a2[1];
  v17[0] = v14;
  v17[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::AbcGeom::v12::OFaceSetSchema::init(a1, v17, a4, a5, a6, a7);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  return a1;
}

void sub_29A056FA8(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  sub_29A057650(v1);
  _Unwind_Resume(a1);
}

void sub_29A056FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  JUMPOUT(0x29A056FE0);
}

uint64_t sub_29A056FFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A058400(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

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
  sub_29A0584FC(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A05723C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Alembic::Abc::v12::OScalarProperty *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
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

void Alembic::AbcGeom::v12::OFaceSetSchema::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a1 + 8;
  v35 = "OFaceSetSchema::init()";
  sub_29A057858(a3, a4, a5, a6, &v32);
  v12 = sub_29A057978(a3, a4, a5, a6);
  if (v32)
  {
    (*(**a2 + 24))(&__p);
    (*(*__p + 24))(&v28);
    v13 = (*(*v28 + 48))(v28, v32);
    if (v29.__r_.__value_.__r.__words[0])
    {
      sub_29A014BEC(v29.__r_.__value_.__l.__data_);
    }

    if (v24)
    {
      sub_29A014BEC(v24);
    }
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    v27 = v15;
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v27 = 0;
  }

  v26 = v14;
  sub_29A008E78(&__p, ".faces");
  v22[0] = 2;
  v22[2] = v13;
  v21[0] = 0;
  v21[2] = 0;
  v20[0] = 0;
  v20[2] = 0;
  v19[0] = 0;
  v19[2] = 0;
  sub_29A051A7C(&v28, &v26, &__p, v22, v21, v20, v19);
  *(a1 + 248) = v28;
  std::string::operator=((a1 + 256), &v29);
  v17 = v30;
  v16 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 288);
  *(a1 + 280) = v17;
  *(a1 + 288) = v16;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v28);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    sub_29A014BEC(v27);
  }

  *(a1 + 344) = 0;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  if (v33)
  {
    sub_29A014BEC(v33);
  }
}

void sub_29A05751C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_29A014BEC(a27);
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  v31 = *(v28 - 88);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

  v32 = __cxa_begin_catch(a1);
  v33 = *(*v27 + 16);
  if (a2 == 2)
  {
    v34 = v32;
    v33(v27);
    sub_29A02D768(v28 - 80, v34);
  }

  else
  {
    v33(v27);
    sub_29A02D6F8(v28 - 80, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A057500);
}

void *sub_29A057650(void *a1)
{
  *a1 = &unk_2A203DB60;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

uint64_t Alembic::AbcGeom::v12::OFaceSetSchema::OFaceSetSchema(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 5);
  v19 = *(a2 + 4);
  v20 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  v17 = 1;
  v18 = v12;
  sub_29A056FFC(a1, &v19, a3, &v17, a4, a5, a6);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  *a1 = &unk_2A203DAA8;
  *(a1 + 248) = 2;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v16[0] = v13;
  v16[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = 0;
  v18 = 0;
  Alembic::AbcGeom::v12::OFaceSetSchema::init(a1, v16, a4, a5, a6, &v17);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return a1;
}

void sub_29A057800(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  sub_29A057650(v1);
  _Unwind_Resume(a1);
}

void sub_29A057840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  JUMPOUT(0x29A057838);
}

void sub_29A057858(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v13 = 2;
  sub_29A019350(v14, &v11);
  v16 = 0;
  v15 = 0u;
  v17 = 1;
  sub_29A01752C(&v11, v12[0]);
  sub_29A02E010(a1, &v13);
  sub_29A02E010(a2, &v13);
  sub_29A02E010(a3, &v13);
  sub_29A02E010(a4, &v13);
  v10 = *(&v15 + 1);
  *a5 = v15;
  a5[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    if (*(&v15 + 1))
    {
      sub_29A014BEC(*(&v15 + 1));
    }
  }

  sub_29A01752C(v14, v14[1]);
}

uint64_t sub_29A057978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v8 = v15;
  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  sub_29A01752C(v13, v13[1]);
  return v8;
}

void sub_29A057AD4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A057AC4);
}

int *Alembic::AbcGeom::v12::OFaceSetSchema::setTimeSampling(Alembic::AbcGeom::v12::OFaceSetSchema *a1, void *a2)
{
  result = (a1 + 8);
  v6 = result;
  v7 = "OFaceSetSchema::setTimeSampling( AbcA::TimeSamplingPtr iTimeSampling)";
  if (*a2)
  {
    sub_29A04428C(result, v4);
    Alembic::Abc::v12::OObject::getArchive(v4, v5);
    Alembic::Abc::v12::OArchive::addTimeSampling(v5);
    Alembic::Abc::v12::OArchive::~OArchive(v5);
    Alembic::Abc::v12::OObject::~OObject(v4);
    return Alembic::AbcGeom::v12::OFaceSetSchema::setTimeSampling(a1);
  }

  return result;
}

void sub_29A057BAC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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
  JUMPOUT(0x29A057B9CLL);
}

uint64_t Alembic::AbcGeom::v12::OFaceSetSchema::set(uint64_t a1, uint64_t a2)
{
  v21[33] = a1 + 8;
  v21[34] = "OFaceSetSchema::set()";
  if (Alembic::Abc::v12::OArrayProperty::getNumSamples((a1 + 248)))
  {
    v12 = *(a1 + 248);
    if (*(a1 + 279) < 0)
    {
      sub_29A008D14(&v13, *(a1 + 256), *(a1 + 264));
    }

    else
    {
      v13 = *(a1 + 256);
      v14 = *(a1 + 272);
    }

    v4 = *(a1 + 288);
    v15 = *(a1 + 280);
    v16 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *v8 = *a2;
    *&v8[5] = *(a2 + 5);
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
    if (SHIBYTE(v14) < 0)
    {
      if (!*(&v13 + 1))
      {
        goto LABEL_15;
      }
    }

    else if (!HIBYTE(v14))
    {
LABEL_15:
      if (v15)
      {
        if (*&v8[8] == 127 || !*v8 && v10 == __p)
        {
          Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v12);
        }

        else
        {
          Alembic::Abc::v12::OArrayProperty::set(&v12);
        }
      }
    }

    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v12);
    goto LABEL_24;
  }

  if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
  {
    sub_29A008864(&v20);
    sub_29A00911C(v21, "Sample 0 must provide the faces that make up the faceset.", 57);
    std::stringbuf::str();
    sub_29A008C60(v19, &v17);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_29A008E1C(exception, v19);
    __cxa_throw(v7, &unk_2A203B108, sub_29A008B08);
  }

  Alembic::Abc::v12::OArrayProperty::set(a1 + 248);
LABEL_24:
  result = Alembic::Abc::v12::OScalarProperty::set((a1 + 56), (a2 + 40));
  if (*(a1 + 344))
  {
    return Alembic::AbcGeom::v12::OFaceSetSchema::_recordExclusivityHint(a1);
  }

  return result;
}

void sub_29A057E38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::exception a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_29A008F20(&a24);
  sub_29A008B0C(&a28);
  v31 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v28 - 48, v31);
  }

  else
  {
    sub_29A02D6F8(v28 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A057DA8);
}

uint64_t Alembic::AbcGeom::v12::OFaceSetSchema::_recordExclusivityHint(Alembic::AbcGeom::v12::OFaceSetSchema *this)
{
  if (*(this + 327) < 0)
  {
    if (!*(this + 39))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 327))
  {
LABEL_5:
    if (*(this + 41))
    {
      goto LABEL_20;
    }
  }

  v2 = *(this + 6);
  v18 = *(this + 5);
  v19 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".facesExclusive");
  v3 = sub_29A0510D4(this + 248);
  v4 = *(v3 + 72);
  v12 = *(v3 + 64);
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 4;
  v15 = &v12;
  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  sub_29A058E04(&v20, &v18, __p, &v14, v11, v10, v9);
  *(this + 74) = v20;
  std::string::operator=((this + 304), &v21);
  v6 = v22;
  v5 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 42);
  *(this + 41) = v6;
  *(this + 42) = v5;
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v20);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

LABEL_20:
  v20 = *(this + 86);
  return Alembic::Abc::v12::OScalarProperty::set((this + 296), &v20);
}

void sub_29A05804C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v25 - 64));
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 72);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  _Unwind_Resume(a1);
}

Alembic::AbcGeom::v12::OFaceSetSchema *Alembic::AbcGeom::v12::OFaceSetSchema::setFaceExclusivity(Alembic::AbcGeom::v12::OFaceSetSchema *result, int a2)
{
  if (*(result + 86) != a2)
  {
    *(result + 86) = a2;
    return Alembic::AbcGeom::v12::OFaceSetSchema::_recordExclusivityHint(result);
  }

  return result;
}

void *sub_29A0580B8(void *a1)
{
  *a1 = &unk_2A203DAA8;
  v2 = (a1 + 7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 31));
  *a1 = &unk_2A203DB60;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));
  return a1;
}

void sub_29A05815C(void *a1)
{
  *a1 = &unk_2A203DAA8;
  v2 = (a1 + 7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 31));
  *a1 = &unk_2A203DB60;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));

  operator delete(a1);
}

void sub_29A058210(uint64_t a1)
{
  sub_29A02F0A0(a1 + 248);

  sub_29A058380(a1);
}

BOOL sub_29A05824C(uint64_t a1)
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

void *sub_29A058298(void *a1)
{
  *a1 = &unk_2A203DB60;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_29A058304(void *a1)
{
  *a1 = &unk_2A203DB60;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  operator delete(a1);
}

void sub_29A058380(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A02F0A0(a1 + 200);

  sub_29A02F0A0(a1 + 8);
}

BOOL sub_29A0583D4(uint64_t a1)
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

uint64_t sub_29A058400(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DB90;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A0586EC(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A0584DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A0584FC(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_29A058B80(a1, a2, 0);
  }
}

void sub_29A058548(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A058534);
}

BOOL sub_29A0585D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v8 = HIDWORD(v16);
  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  sub_29A01752C(v13, v13[1]);
  return v8 == 1;
}

void sub_29A0586EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    sub_29A008E78(&__str, "AbcGeom_FaceSet_v1");
    v30 = __p;
    v13 = sub_29A00B038(&v22, __p, &unk_29B432624, &v30);
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
      v14 = sub_29A00B038(&v22, __p, &unk_29B432624, &v30);
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

void sub_29A0589E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A058934);
}

void sub_29A058B44(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

void sub_29A058B80(uint64_t a1, int a2, uint64_t a3)
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

void sub_29A058CEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
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
  JUMPOUT(0x29A058CD8);
}

char *sub_29A058D90(char *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0111A4(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A058DE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A058E04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A058EDC(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A058EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A058EDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  LODWORD(__p[0]) = 5;
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

void sub_29A0591C0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A05910CLL);
}

unint64_t Alembic::AbcGeom::v12::IFaceSetSchema::getNumSamples(Alembic::AbcGeom::v12::IFaceSetSchema *this)
{
  if (Alembic::Abc::v12::ICompoundProperty::getNumProperties((this + 8)))
  {
    v2 = 0;
    v3 = 0;
    while (1)
    {
      PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader((this + 8));
      v5 = *(PropertyHeader + 24);
      if (v5 == 1)
      {
        v10 = *(this + 6);
        v14 = *(this + 5);
        v15 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = 0;
        v22 = 0;
        v19 = 0;
        v20 = 0;
        Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v25, &v14, &v21, &v19);
        v17 = 0;
        v18 = 0;
        v11 = Alembic::Abc::v12::IScalarProperty::IScalarProperty(v26, v25, PropertyHeader, &v17);
        NumSamples = Alembic::Abc::v12::IScalarProperty::getNumSamples(v11);
        if (v3 <= NumSamples)
        {
          v3 = NumSamples;
        }

        Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v26);
        Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v25);
        v9 = v15;
        if (!v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_11;
        }

        v6 = *(this + 6);
        v23 = *(this + 5);
        v24 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = 0;
        v22 = 0;
        v19 = 0;
        v20 = 0;
        Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v25, &v23, &v21, &v19);
        v17 = 0;
        v18 = 0;
        v16[0] = 0;
        v16[2] = 0;
        v7 = Alembic::Abc::v12::IArrayProperty::IArrayProperty(v26, v25, PropertyHeader, &v17, v16);
        v8 = Alembic::Abc::v12::IArrayProperty::getNumSamples(v7);
        if (v3 <= v8)
        {
          v3 = v8;
        }

        Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v26);
        Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v25);
        v9 = v24;
        if (!v24)
        {
          goto LABEL_11;
        }
      }

      sub_29A014BEC(v9);
LABEL_11:
      if (++v2 >= Alembic::Abc::v12::ICompoundProperty::getNumProperties((this + 8)))
      {
        return v3;
      }
    }
  }

  return 0;
}

void sub_29A059480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A059524(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A059514);
}

void Alembic::AbcGeom::v12::IFaceSetSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1 + 8;
  v23 = "IFaceSetSchema::init()";
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v16 = 0;
  }

  v15 = v6;
  v14[0] = 0;
  v14[2] = 0;
  v13[0] = 0;
  v13[2] = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v17, &v15, v14, v13);
  sub_29A008E78(__p, ".faces");
  sub_29A0479A8(&v18, v17, __p, a2, a3);
  *(a1 + 248) = v18;
  std::string::operator=((a1 + 256), &v19);
  v9 = v20;
  v8 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 288);
  *(a1 + 280) = v9;
  *(a1 + 288) = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v18);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v17);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A0596B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char a22)
{
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((v24 - 112));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&a22);
  if (a21)
  {
    sub_29A014BEC(a21);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  v27 = __cxa_begin_catch(a1);
  v28 = *(*v23 + 16);
  if (a2 == 2)
  {
    v29 = v27;
    v28(v23);
    sub_29A02D768(v24 - 64, v29);
  }

  else
  {
    v28(v23);
    sub_29A02D6F8(v24 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A059698);
}

uint64_t Alembic::AbcGeom::v12::IFaceSetSchema::getFaceExclusivity(Alembic::AbcGeom::v12::IFaceSetSchema *this)
{
  v18 = this + 8;
  v19 = "IFaceSetSchema::getFaceExclusivity";
  v1 = *(this + 6);
  v10 = *(this + 5);
  v11 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v12, &v10, v9, v8);
  sub_29A008E78(__p, ".facesExclusive");
  v5[0] = 1;
  v5[2] = 0;
  v4[0] = 0;
  v4[2] = 0;
  sub_29A05999C(v14, v12, __p, v5, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v12);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (v16 < 0)
  {
    if (!v15)
    {
      goto LABEL_11;
    }

LABEL_13:
    Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v14);
    return 0;
  }

  if (v16)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v17)
  {
    goto LABEL_13;
  }

  v12[0] = Alembic::Abc::v12::IScalarProperty::getNumSamples(v14) - 1;
  v12[1] = 0;
  v13 = 2;
  LODWORD(__p[0]) = 0;
  Alembic::Abc::v12::IScalarProperty::get(v14, __p, v12, 4);
  v2 = LODWORD(__p[0]);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v14);
  return v2;
}

void sub_29A0598EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((v26 - 96));
  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v26 - 48, v29);
  }

  else
  {
    sub_29A02D6F8(v26 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0598D0);
}

uint64_t sub_29A05999C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v16 = *(v13 + 56) == 5 && *(v13 + 60) == 1 && *(v13 + 24) == 1;
  if (!v16 || (sub_29A059F28(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 1;
    v40 = 5;
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
    sub_29A00911C(v28, "", 0);
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

void sub_29A059DE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A059B40);
}

uint64_t sub_29A059F28(uint64_t a1, int a2)
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

void sub_29A059FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::OLightSchema::OLightSchema(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v18 = *a2;
  v19 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A05A1B4(a1, &v18, a3, a4, a5, a6, a7);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  *a1 = &unk_2A203DBB0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  sub_29A008E78((a1 + 80), "");
  *(a1 + 120) = 2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_29A008E78((a1 + 128), "");
  *(a1 + 168) = 2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_29A008E78((a1 + 176), "");
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_29A05B734((a1 + 216));
  v14 = *a2;
  v15 = a2[1];
  v17[0] = v14;
  v17[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::AbcGeom::v12::OLightSchema::init(a1, v17, a4, a5, a6, a7);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  return a1;
}

void sub_29A05A134(_Unwind_Exception *a1)
{
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29A05A530(v1 + 216);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v5);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  v7 = *(v1 + 64);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_29A05A1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  JUMPOUT(0x29A05A198);
}

uint64_t sub_29A05A1B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DC90;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A05C304(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A05A290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OLightSchema::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29A057858(a3, a4, a5, a6, &v22);
  sub_29A057978(a3, a4, a5, a6);
  if (v22)
  {
    (*(**a2 + 24))(&v19);
    (*(*v19 + 24))(&v21);
    (*(*v21 + 48))(v21, v22);
    if (*(&v21 + 1))
    {
      sub_29A014BEC(*(&v21 + 1));
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    v13 = v22;
    v12 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(a1 + 64);
    *(a1 + 56) = v13;
    *(a1 + 64) = v12;
    if (v14)
    {
LABEL_9:
      sub_29A014BEC(v14);
    }
  }

  else
  {
    (*(**a2 + 24))(&v17);
    (*(*v17 + 24))(&v19);
    (*(*v19 + 56))(&v21);
    v15 = v21;
    v21 = 0uLL;
    v16 = *(a1 + 64);
    *(a1 + 56) = v15;
    if (v16)
    {
      sub_29A014BEC(v16);
      if (*(&v21 + 1))
      {
        sub_29A014BEC(*(&v21 + 1));
      }
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    v14 = v18;
    if (v18)
    {
      goto LABEL_9;
    }
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }
}

void sub_29A05A4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A05A530(uint64_t a1)
{
  *a1 = &unk_2A203DC10;
  v2 = (a1 + 8);
  v4 = (a1 + 520);
  sub_29A05B9EC(&v4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 248));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

uint64_t Alembic::AbcGeom::v12::OLightSchema::OLightSchema(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 5);
  v19 = *(a2 + 4);
  v20 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  v17 = 1;
  v18 = v12;
  sub_29A05A1B4(a1, &v19, a3, &v17, a4, a5, a6);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  *a1 = &unk_2A203DBB0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  sub_29A008E78((a1 + 80), "");
  *(a1 + 120) = 2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_29A008E78((a1 + 128), "");
  *(a1 + 168) = 2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_29A008E78((a1 + 176), "");
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_29A05B734((a1 + 216));
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v16[0] = v13;
  v16[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = 0;
  v18 = 0;
  Alembic::AbcGeom::v12::OLightSchema::init(a1, v16, a4, a5, a6, &v17);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  return a1;
}

void sub_29A05A738(_Unwind_Exception *a1)
{
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29A05A530(v1 + 216);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v5);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  v7 = *(v1 + 64);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_29A05A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  JUMPOUT(0x29A05A79CLL);
}

void Alembic::AbcGeom::v12::OLightSchema::setCameraSample(Alembic::AbcGeom::v12::OLightSchema *this, const Alembic::AbcGeom::v12::CameraSample *a2)
{
  v31[4] = this + 8;
  v31[5] = "OLightSchema::setCameraSample";
  if (!sub_29A05AA78(this + 216))
  {
    v4 = *(this + 6);
    v19 = *(this + 5);
    v20 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".camera");
    v15 = 4;
    v16 = this + 56;
    v14[0] = 0;
    v14[2] = 0;
    v13[0] = 0;
    v13[2] = 0;
    v12[0] = 0;
    v12[2] = 0;
    sub_29A05BA74(v21, &v19, __p, &v15, v14, v13, v12);
    sub_29A05AAC4(this + 216, v21);
    v21[0].i64[0] = &unk_2A203DC10;
    v32 = v31;
    sub_29A05B9EC(&v32);
    Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v30);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v29);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v28);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((&v25 + 8));
    Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v23 + 8));
    Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v22 + 8));
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v21[0].u64[1]);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }
  }

  v5 = *(a2 + 5);
  v22[1] = *(a2 + 4);
  v22[2] = v5;
  v6 = *(a2 + 7);
  v23[0] = *(a2 + 6);
  v23[1] = v6;
  v7 = *(a2 + 1);
  v21[0] = *a2;
  v21[1] = v7;
  v8 = *(a2 + 3);
  v21[2] = *(a2 + 2);
  v22[0] = v8;
  v9 = *(a2 + 9);
  v24 = *(a2 + 8);
  v25 = v9;
  v26 = *(a2 + 10);
  v10 = *(a2 + 22);
  v11 = *(a2 + 23);
  memset(v27, 0, sizeof(v27));
  sub_29A05C27C(v27, v10, v11, 0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 3));
  v24 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v25 = xmmword_29B432560;
  v26 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  Alembic::AbcGeom::v12::OCameraSchema::set((this + 216), v21);
  __p[0] = v27;
  sub_29A05B9EC(__p);
}

void sub_29A05A9B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, char a26)
{
  sub_29A05A530(&a26);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  v29 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v26 - 72, v29);
  }

  else
  {
    sub_29A02D6F8(v26 - 72, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A05A9A0);
}

BOOL sub_29A05AA78(uint64_t a1)
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

uint64_t sub_29A05AAC4(uint64_t a1, uint64_t a2)
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

  *(a1 + 248) = *(a2 + 248);
  std::string::operator=((a1 + 256), (a2 + 256));
  v20 = *(a2 + 280);
  v19 = *(a2 + 288);
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 288);
  *(a1 + 280) = v20;
  *(a1 + 288) = v19;
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  *(a1 + 296) = *(a2 + 296);
  std::string::operator=((a1 + 304), (a2 + 304));
  v23 = *(a2 + 328);
  v22 = *(a2 + 336);
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(a1 + 336);
  *(a1 + 328) = v23;
  *(a1 + 336) = v22;
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  v25 = *(a2 + 344);
  v26 = *(a2 + 360);
  v27 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v27;
  *(a1 + 344) = v25;
  *(a1 + 360) = v26;
  v28 = *(a2 + 408);
  v29 = *(a2 + 424);
  v30 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v30;
  *(a1 + 408) = v28;
  *(a1 + 424) = v29;
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  sub_29A044E84((a1 + 520));
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  return a1;
}

uint64_t Alembic::AbcGeom::v12::OLightSchema::setFromPrevious(Alembic::AbcGeom::v12::OLightSchema *this)
{
  result = sub_29A05AA78(this + 216);
  if (result)
  {
    return Alembic::AbcGeom::v12::OCameraSchema::setFromPrevious((this + 216));
  }

  return result;
}

void sub_29A05AD38(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A05AD28);
}

void Alembic::AbcGeom::v12::OLightSchema::setTimeSampling(Alembic::AbcGeom::v12::OLightSchema *this)
{
  v2 = (this + 8);
  v8 = this + 8;
  v9 = "OLightSchema::setTimeSampling( uint32_t)";
  if (sub_29A05AA78(this + 216))
  {
    Alembic::AbcGeom::v12::OCameraSchema::setTimeSampling((this + 216));
  }

  sub_29A04428C(v2, v5);
  Alembic::Abc::v12::OObject::getArchive(v5, v6);
  Alembic::Abc::v12::OArchive::getTimeSampling(v6, &v7);
  v3 = v7;
  v7 = 0uLL;
  v4 = *(this + 8);
  *(this + 56) = v3;
  if (v4)
  {
    sub_29A014BEC(v4);
    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }
  }

  Alembic::Abc::v12::OArchive::~OArchive(v6);
  Alembic::Abc::v12::OObject::~OObject(v5);
}

void sub_29A05AE44(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  Alembic::Abc::v12::OArchive::~OArchive(va1);
  Alembic::Abc::v12::OObject::~OObject(va);
  v6 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v3 - 48, v6);
  }

  else
  {
    sub_29A02D6F8(v3 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A05AE30);
}

void Alembic::AbcGeom::v12::OLightSchema::setTimeSampling(Alembic::AbcGeom::v12::OLightSchema *a1, void *a2)
{
  v3 = (a1 + 8);
  v6 = v3;
  v7 = "OLightSchema::setTimeSampling( TimeSamplingPtr)";
  if (*a2)
  {
    sub_29A04428C(v3, v4);
    Alembic::Abc::v12::OObject::getArchive(v4, v5);
    Alembic::Abc::v12::OArchive::addTimeSampling(v5);
    Alembic::Abc::v12::OArchive::~OArchive(v5);
    Alembic::Abc::v12::OObject::~OObject(v4);
    Alembic::AbcGeom::v12::OLightSchema::setTimeSampling(a1);
  }
}

void sub_29A05AF50(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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
  JUMPOUT(0x29A05AF40);
}

uint64_t Alembic::AbcGeom::v12::OLightSchema::getNumSamples(Alembic::AbcGeom::v12::OLightSchema *this)
{
  if (*(this + 103) < 0)
  {
    if (*(this + 11))
    {
      return 0;
    }
  }

  else if (*(this + 103))
  {
    return 0;
  }

  if (*(this + 13))
  {
    return Alembic::Abc::v12::OScalarProperty::getNumSamples((this + 72));
  }

  return 0;
}

_BYTE *Alembic::AbcGeom::v12::OLightSchema::getArbGeomParams@<X0>(Alembic::AbcGeom::v12::OLightSchema *this@<X0>, uint64_t a2@<X8>)
{
  v21 = this + 8;
  v22 = "OLightSchema::getArbGeomParams()";
  v4 = *(this + 199);
  if (v4 < 0)
  {
    if (!*(this + 23))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 199))
  {
LABEL_5:
    if (*(this + 25))
    {
      goto LABEL_17;
    }
  }

  v5 = *(this + 6);
  v15 = *(this + 5);
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".arbGeomParams");
  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&v17, &v15, __p, v12, v11);
  *(this + 42) = v17;
  std::string::operator=((this + 176), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 26);
  *(this + 25) = v7;
  *(this + 26) = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  LOBYTE(v4) = *(this + 199);
LABEL_17:
  *a2 = *(this + 42);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_29A008D14(result, *(this + 22), *(this + 23));
  }

  else
  {
    *result = *(this + 11);
    *(a2 + 24) = *(this + 24);
  }

  v10 = *(this + 26);
  *(a2 + 32) = *(this + 25);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A05B1E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  v25 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v23 - 48, v25);
  }

  else
  {
    sub_29A02D6F8(v23 - 48, 0);
  }

  __cxa_end_catch();
  *v22 = 2;
  sub_29A008E78((v22 + 8), "");
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  JUMPOUT(0x29A05B1D4);
}

_BYTE *Alembic::AbcGeom::v12::OLightSchema::getUserProperties@<X0>(Alembic::AbcGeom::v12::OLightSchema *this@<X0>, uint64_t a2@<X8>)
{
  v21 = this + 8;
  v22 = "OLightSchema::getUserProperties()";
  v4 = *(this + 151);
  if (v4 < 0)
  {
    if (!*(this + 17))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 151))
  {
LABEL_5:
    if (*(this + 19))
    {
      goto LABEL_17;
    }
  }

  v5 = *(this + 6);
  v15 = *(this + 5);
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".userProperties");
  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&v17, &v15, __p, v12, v11);
  *(this + 30) = v17;
  std::string::operator=((this + 128), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 20);
  *(this + 19) = v7;
  *(this + 20) = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  LOBYTE(v4) = *(this + 151);
LABEL_17:
  *a2 = *(this + 30);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_29A008D14(result, *(this + 16), *(this + 17));
  }

  else
  {
    *result = *(this + 8);
    *(a2 + 24) = *(this + 18);
  }

  v10 = *(this + 20);
  *(a2 + 32) = *(this + 19);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A05B404(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  v25 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v23 - 48, v25);
  }

  else
  {
    sub_29A02D6F8(v23 - 48, 0);
  }

  __cxa_end_catch();
  *v22 = 2;
  sub_29A008E78((v22 + 8), "");
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  JUMPOUT(0x29A05B3F0);
}

_BYTE *Alembic::AbcGeom::v12::OLightSchema::getChildBoundsProperty@<X0>(Alembic::AbcGeom::v12::OLightSchema *this@<X0>, uint64_t a2@<X8>)
{
  v24 = this + 8;
  v25 = "OLightSchema::getChildBoundsProperty()";
  if (*(this + 103) < 0)
  {
    if (!*(this + 11))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 103))
  {
LABEL_5:
    if (*(this + 13))
    {
      goto LABEL_19;
    }
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v19 = 0;
  }

  v18 = v4;
  sub_29A008E78(__p, ".childBnds");
  v14 = 4;
  v15 = this + 56;
  v13[0] = 0;
  v13[2] = 0;
  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  sub_29A045D40(&v20, &v18, __p, &v14, v13, v12, v11);
  *(this + 18) = v20;
  std::string::operator=((this + 80), &v21);
  v7 = v22;
  v6 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 14);
  *(this + 13) = v7;
  *(this + 14) = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v20);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

LABEL_19:
  *a2 = *(this + 18);
  result = (a2 + 8);
  if (*(this + 103) < 0)
  {
    result = sub_29A008D14(result, *(this + 10), *(this + 11));
  }

  else
  {
    *result = *(this + 5);
    *(a2 + 24) = *(this + 12);
  }

  v10 = *(this + 14);
  *(a2 + 32) = *(this + 13);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A05B664(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, char a26)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&a26);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v30 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v27 - 64, v30);
  }

  else
  {
    sub_29A02D6F8(v27 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A05B604);
}

void sub_29A05B70C(uint64_t a1)
{
  v1 = sub_29A05C710(a1);

  operator delete(v1);
}

int64x2_t *sub_29A05B734(int64x2_t *a1)
{
  a1->i32[2] = 2;
  sub_29A008E78(a1[1].i64, "");
  a1[2].i64[1] = 0;
  a1[3].i64[0] = 0;
  a1->i64[0] = &unk_2A203DC10;
  a1[3].i32[2] = 2;
  sub_29A008E78(a1[4].i64, "");
  a1[6].i32[2] = 2;
  a1[5].i64[1] = 0;
  a1[6].i64[0] = 0;
  sub_29A008E78(a1[7].i64, "");
  a1[9].i32[2] = 2;
  a1[8].i64[1] = 0;
  a1[9].i64[0] = 0;
  sub_29A008E78(a1[10].i64, "");
  a1[12].i32[2] = 2;
  a1[11].i64[1] = 0;
  a1[12].i64[0] = 0;
  sub_29A008E78(a1[13].i64, "");
  a1[15].i32[2] = 2;
  a1[14].i64[1] = 0;
  a1[15].i64[0] = 0;
  sub_29A008E78(a1[16].i64, "");
  a1[17].i64[1] = 0;
  a1[18].i64[0] = 0;
  a1[18].i32[2] = 2;
  sub_29A008E78(a1[19].i64, "");
  a1[20].i64[1] = 0;
  a1[21].i64[0] = 0;
  a1[29].i64[1] = 0x7FEFFFFFFFFFFFFFLL;
  a1[30] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  a1[31] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a1[32].i64[0] = 0xFFEFFFFFFFFFFFFFLL;
  a1[32].i64[1] = 0;
  a1[33].i64[1] = 0;
  a1[33].i64[0] = 0;
  sub_29A03FCA8(&a1[21].i64[1]);
  return a1;
}

void sub_29A05B888(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v6);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v5);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1);
  _Unwind_Resume(a1);
}

void sub_29A05B8EC(char *a1)
{
  *a1 = &unk_2A203DC10;
  v2 = (a1 + 8);
  v3 = (a1 + 520);
  sub_29A05B9EC(&v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 248));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  operator delete(a1);
}

void sub_29A05B9B0(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

void sub_29A05B9EC(void ***a1)
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
        v4 -= 56;
        sub_29A040990(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

int64x2_t *sub_29A05BA74(int64x2_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v23 = *a2;
  v24 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A05BDDC(a1, &v23, a3, a4, a5, a6, a7);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  a1->i64[0] = &unk_2A203DC10;
  a1[3].i32[2] = 2;
  sub_29A008E78(a1[4].i64, "");
  a1[6].i32[2] = 2;
  a1[5].i64[1] = 0;
  a1[6].i64[0] = 0;
  sub_29A008E78(a1[7].i64, "");
  a1[9].i32[2] = 2;
  a1[8].i64[1] = 0;
  a1[9].i64[0] = 0;
  sub_29A008E78(a1[10].i64, "");
  a1[12].i32[2] = 2;
  a1[11].i64[1] = 0;
  a1[12].i64[0] = 0;
  sub_29A008E78(a1[13].i64, "");
  a1[15].i32[2] = 2;
  a1[14].i64[1] = 0;
  a1[15].i64[0] = 0;
  sub_29A008E78(a1[16].i64, "");
  a1[17].i64[1] = 0;
  a1[18].i64[0] = 0;
  a1[18].i32[2] = 2;
  sub_29A008E78(a1[19].i64, "");
  a1[20].i64[1] = 0;
  a1[21].i64[0] = 0;
  a1[29].i64[1] = 0x7FEFFFFFFFFFFFFFLL;
  a1[30] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  a1[31] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  a1[32].i64[0] = 0xFFEFFFFFFFFFFFFFLL;
  a1[32].i64[1] = 0;
  a1[33].i64[1] = 0;
  a1[33].i64[0] = 0;
  sub_29A03FCA8(&a1[21].i64[1]);
  sub_29A057858(a4, a5, a6, a7, &v21);
  v14 = sub_29A057978(a4, a5, a6, a7);
  if (v21)
  {
    (*(**a2 + 24))(&v17);
    (*(*v17 + 24))(&v19);
    v15 = (*(*v19 + 48))(v19, v21);
    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }
  }

  else
  {
    v15 = v14;
  }

  Alembic::AbcGeom::v12::OCameraSchema::init(a1, v15);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  return a1;
}

void sub_29A05BD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, Alembic::Abc::v12::OScalarProperty *a9, Alembic::Abc::v12::OScalarProperty *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
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

  a15 = v18 + 520;
  sub_29A05B9EC(&a15);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v18 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v21);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v20);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v19);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(a9);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(a10);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v18 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29A05BDDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DC70;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A05BED8(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A05BEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A05BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = 0;
  v23[0] = 0;
  v21 = &v22;
  v24 = 2;
  sub_29A019350(v25, &v21);
  v27 = 0;
  v26 = 0u;
  v28 = 1;
  sub_29A01752C(&v21, v22);
  sub_29A02E010(a4, &v24);
  sub_29A02E010(a5, &v24);
  sub_29A02E010(a6, &v24);
  sub_29A02E010(a7, &v24);
  *(a1 + 8) = v24;
  v23[33] = a1 + 8;
  v23[34] = "OSchema::OSchema::init()";
  if (!*a2)
  {
    sub_29A008864(&v21);
    sub_29A00911C(v23, "NULL parent passed into OSchema ctor", 36);
    std::stringbuf::str();
    sub_29A008C60(__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v17 = sub_29A008E1C(exception, __p);
    __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v21, v25);
  if (HIDWORD(v28) != 1)
  {
    sub_29A008E78(__p, "schema");
    sub_29A008E78(&__str, "AbcGeom_Camera_v1");
    v29 = __p;
    v13 = sub_29A00B038(&v21, __p, &unk_29B4326ED, &v29);
    std::string::operator=((v13 + 7), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**a2 + 112))(__p);
  v14 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v15 = *(a1 + 48);
  *(a1 + 40) = v14;
  if (v15)
  {
    sub_29A014BEC(v15);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  sub_29A01752C(&v21, v22);
  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  sub_29A01752C(v25, v25[1]);
}

void sub_29A05C158(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A05C0A4);
}

void *sub_29A05C27C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A044EF0(result, a4);
    result = sub_29A044F40(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A05C2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A05B9EC(&a9);
  _Unwind_Resume(a1);
}

void sub_29A05C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = 0;
  v23[0] = 0;
  v21 = &v22;
  v24 = 2;
  sub_29A019350(v25, &v21);
  v27 = 0;
  v26 = 0u;
  v28 = 1;
  sub_29A01752C(&v21, v22);
  sub_29A02E010(a4, &v24);
  sub_29A02E010(a5, &v24);
  sub_29A02E010(a6, &v24);
  sub_29A02E010(a7, &v24);
  *(a1 + 8) = v24;
  v23[33] = a1 + 8;
  v23[34] = "OSchema::OSchema::init()";
  if (!*a2)
  {
    sub_29A008864(&v21);
    sub_29A00911C(v23, "NULL parent passed into OSchema ctor", 36);
    std::stringbuf::str();
    sub_29A008C60(__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v17 = sub_29A008E1C(exception, __p);
    __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
  }

  sub_29A019350(&v21, v25);
  if (HIDWORD(v28) != 1)
  {
    sub_29A008E78(__p, "schema");
    sub_29A008E78(&__str, "AbcGeom_Light_v1");
    v29 = __p;
    v13 = sub_29A00B038(&v21, __p, &unk_29B4326ED, &v29);
    std::string::operator=((v13 + 7), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**a2 + 112))(__p);
  v14 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v15 = *(a1 + 48);
  *(a1 + 40) = v14;
  if (v15)
  {
    sub_29A014BEC(v15);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  sub_29A01752C(&v21, v22);
  if (*(&v26 + 1))
  {
    sub_29A014BEC(*(&v26 + 1));
  }

  sub_29A01752C(v25, v25[1]);
}

void sub_29A05C584(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A05C4D0);
}

void sub_29A05C6D4(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

uint64_t sub_29A05C710(uint64_t a1)
{
  *a1 = &unk_2A203DBB0;
  *(a1 + 216) = &unk_2A203DC10;
  v4 = (a1 + 736);
  sub_29A05B9EC(&v4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 512));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 464));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 416));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 368));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 320));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 272));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 224));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 168));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 120));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 72));
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

void Alembic::AbcGeom::v12::ILightSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v59 = a1 + 8;
  v60 = "ILightSchema::init()";
  *&v44.__r_.__value_.__l.__data_ = 0uLL;
  __p = &v44;
  v54 = 2;
  sub_29A019350(v55, &__p);
  v57 = 0;
  v56 = 0u;
  v58 = 1;
  sub_29A01752C(&__p, v44.__r_.__value_.__l.__data_);
  sub_29A02E010(a2, &v54);
  sub_29A02E010(a3, &v54);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".camera");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v10 = PropertyHeader;
  if (v44.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else if (!PropertyHeader)
  {
    goto LABEL_13;
  }

  v40 = v8;
  v41 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v42, &v40, &v38, &v36);
  sub_29A008E78(v34, ".camera");
  sub_29A05D474(&__p, v42, v34, a2, a3);
  sub_29A05CF84(a1 + 200, &__p);
  __p = &unk_2A203DCB0;
  v28 = &v53;
  sub_29A05B9EC(&v28);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v52);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v51);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v50);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v49);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v48);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v47);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v44);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v42);
  if (v41)
  {
    sub_29A014BEC(v41);
  }

LABEL_13:
  sub_29A008E78(&__p, ".childBnds");
  v11 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v12 = v11;
  if (v44.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  else if (!v11)
  {
    goto LABEL_27;
  }

  v32 = v8;
  v33 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v42, &v32, &v38, &v36);
  sub_29A008E78(v34, ".childBnds");
  sub_29A03DA60(&__p, v42, v34, a2, a3);
  *(a1 + 56) = __p;
  std::string::operator=((a1 + 64), &v44);
  v14 = v45;
  v13 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 96);
  *(a1 + 88) = v14;
  *(a1 + 96) = v13;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&__p);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v42);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

LABEL_27:
  sub_29A008E78(&__p, ".arbGeomParams");
  v16 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v17 = v16;
  if (v44.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
    if (!v17)
    {
      goto LABEL_41;
    }
  }

  else if (!v16)
  {
    goto LABEL_41;
  }

  v30 = v8;
  v31 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v42, &v30, &v38, &v36);
  sub_29A008E78(v34, ".arbGeomParams");
  LODWORD(v28) = 1;
  v29 = v54;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&__p, v42, v34, &v28);
  *(a1 + 104) = __p;
  std::string::operator=((a1 + 112), &v44);
  v19 = v45;
  v18 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 144);
  *(a1 + 136) = v19;
  *(a1 + 144) = v18;
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&__p);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v42);
  if (v31)
  {
    sub_29A014BEC(v31);
  }

LABEL_41:
  sub_29A008E78(&__p, ".userProperties");
  v21 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v22 = v21;
  if (v44.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
    if (!v22)
    {
      goto LABEL_55;
    }
  }

  else if (!v21)
  {
    goto LABEL_55;
  }

  v26 = v8;
  v27 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v42, &v26, &v38, &v36);
  sub_29A008E78(v34, ".userProperties");
  LODWORD(v28) = 1;
  v29 = v54;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&__p, v42, v34, &v28);
  *(a1 + 152) = __p;
  std::string::operator=((a1 + 160), &v44);
  v24 = v45;
  v23 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(a1 + 192);
  *(a1 + 184) = v24;
  *(a1 + 192) = v23;
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&__p);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v42);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

LABEL_55:
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v56 + 1))
  {
    sub_29A014BEC(*(&v56 + 1));
  }

  sub_29A01752C(v55, v55[1]);
}

void sub_29A05CD44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
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

  if (v42)
  {
    sub_29A014BEC(v42);
  }

  sub_29A02E0BC(v43 - 160);
  v46 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v47 = v46;
    sub_29A05D1E8(v41);
    sub_29A02D768(v43 - 96, v47);
  }

  else
  {
    sub_29A05D1E8(v41);
    sub_29A02D6F8(v43 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A05CD24);
}

uint64_t sub_29A05CF84(uint64_t a1, uint64_t a2)
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

  *(a1 + 248) = *(a2 + 248);
  std::string::operator=((a1 + 256), (a2 + 256));
  v20 = *(a2 + 280);
  v19 = *(a2 + 288);
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 288);
  *(a1 + 280) = v20;
  *(a1 + 288) = v19;
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  *(a1 + 296) = *(a2 + 296);
  std::string::operator=((a1 + 304), (a2 + 304));
  v23 = *(a2 + 328);
  v22 = *(a2 + 336);
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = *(a1 + 336);
  *(a1 + 328) = v23;
  *(a1 + 336) = v22;
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  sub_29A044E84((a1 + 344));
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  return a1;
}

uint64_t sub_29A05D154(uint64_t a1)
{
  *a1 = &unk_2A203DCB0;
  v2 = (a1 + 8);
  v4 = (a1 + 344);
  sub_29A05B9EC(&v4);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((a1 + 296));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 248));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 200));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 152));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 104));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 56));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v2);
  return a1;
}

void sub_29A05D1E8(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A041DB0(a1 + 200);

  sub_29A02F0A0(a1 + 8);
}

uint64_t Alembic::AbcGeom::v12::ILightSchema::getTimeSampling@<X0>(Alembic::AbcGeom::v12::ILightSchema *this@<X0>, void *a2@<X8>)
{
  if (*(this + 87) < 0)
  {
    if (*(this + 9))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 87))
  {
    goto LABEL_7;
  }

  if (*(this + 11))
  {
    v4 = (this + 56);
    return Alembic::Abc::v12::IScalarProperty::getTimeSampling(v4, a2);
  }

LABEL_7:
  result = sub_29A05AA78(this + 200);
  if (result)
  {
    v4 = (this + 256);
    return Alembic::Abc::v12::IScalarProperty::getTimeSampling(v4, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_29A05D350(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A05D340);
}

uint64_t Alembic::AbcGeom::v12::ILightSchema::getNumSamples(Alembic::AbcGeom::v12::ILightSchema *this)
{
  if (*(this + 87) < 0)
  {
    if (*(this + 9))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 87))
  {
    goto LABEL_7;
  }

  if (*(this + 11))
  {
    v2 = (this + 56);
    return Alembic::Abc::v12::IScalarProperty::getNumSamples(v2);
  }

LABEL_7:
  if (sub_29A05AA78(this + 200))
  {
    v2 = (this + 256);
    return Alembic::Abc::v12::IScalarProperty::getNumSamples(v2);
  }

  return 0;
}

uint64_t sub_29A05D474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_29A05D638(a1, a2, a3, a4, a5);
  *v8 = &unk_2A203DCB0;
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
  *(a1 + 248) = 2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_29A008E78((a1 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_29A008E78((a1 + 304), "");
  *(a1 + 360) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  Alembic::AbcGeom::v12::ICameraSchema::init(a1, a4, a5);
  return a1;
}

void sub_29A05D5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 43;
  sub_29A05B9EC(&a10);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((v10 + 37));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v15);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v14);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v13);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v12);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v11);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v10 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_29A05D638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203DD40;
  sub_29A05D77C(a1, a2, a3, a4, a5);
  return a1;
}

void sub_29A05D6E4(char *a1)
{
  *a1 = &unk_2A203DCB0;
  v2 = (a1 + 8);
  v3 = (a1 + 344);
  sub_29A05B9EC(&v3);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((a1 + 296));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 248));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 200));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 152));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 104));
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty((a1 + 56));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v2);
  operator delete(a1);
}

void sub_29A05D77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  if ((sub_29A05DD20(v12 + 32, v41) & 1) == 0)
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
    sub_29A00911C(v28, "AbcGeom_Camera_v1", 17);
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

void sub_29A05DB54(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A05D908);
}

void sub_29A05DCE4(uint64_t a1)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 8));

  operator delete(a1);
}

uint64_t sub_29A05DD20(uint64_t a1, int a2)
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
    v2 = v12 == 17 && *v11 == 0x5F6D6F6547636241 && v11[1] == 0x765F6172656D6143 && *(v11 + 16) == 49;
    operator delete(v11);
  }

  else
  {
    v2 = v14 == 17 && v11 == 0x5F6D6F6547636241 && v12 == 0x765F6172656D6143 && v13 == 49;
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A05DE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::ONuPatchSchema::ONuPatchSchema(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A05E3F4(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  *a1 = &unk_2A203DD60;
  *(a1 + 272) = 2;
  sub_29A008E78((a1 + 280), "");
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 2;
  sub_29A008E78((a1 + 328), "");
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 2;
  sub_29A008E78((a1 + 376), "");
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 2;
  sub_29A008E78((a1 + 424), "");
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 2;
  sub_29A008E78((a1 + 472), "");
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 2;
  sub_29A008E78((a1 + 520), "");
  *(a1 + 544) = 0u;
  *(a1 + 560) = 2;
  sub_29A008E78((a1 + 568), "");
  *(a1 + 592) = 0u;
  *(a1 + 608) = 2;
  sub_29A008E78((a1 + 616), "");
  *(a1 + 640) = 0u;
  sub_29A0653DC(a1 + 656);
  sub_29A0654B4(a1 + 832);
  *(a1 + 1008) = 2;
  sub_29A008E78((a1 + 1016), "");
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 2;
  sub_29A008E78((a1 + 1064), "");
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 2;
  sub_29A008E78((a1 + 1112), "");
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 2;
  sub_29A008E78((a1 + 1160), "");
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 2;
  sub_29A008E78((a1 + 1208), "");
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 2;
  sub_29A008E78((a1 + 1256), "");
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 2;
  sub_29A008E78((a1 + 1304), "");
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 2;
  sub_29A008E78((a1 + 1352), "");
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 2;
  sub_29A008E78((a1 + 1400), "");
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 2;
  sub_29A008E78((a1 + 1448), "");
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 2;
  sub_29A008E78((a1 + 1496), "");
  *(a1 + 1520) = 0u;
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
  Alembic::AbcGeom::v12::ONuPatchSchema::init(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A05E23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
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

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 186));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 180));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 174));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 168));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 162));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 156));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 150));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 144));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 138));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 132));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 126));
  sub_29A050A50((v14 + 104));
  sub_29A050A50((v14 + 82));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 76));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 70));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 64));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 58));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 52));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 46));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v14 + 40));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v14 + 34));
  sub_29A05E7C4(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_29A05E3F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A06558C(a1, &v24, a3, a4, a5, a6, a7);
  if (v25)
  {
    sub_29A014BEC(v25);
  }

  *a1 = &unk_2A203DDE8;
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
  sub_29A065688(a1, v15, v16);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  return a1;
}

void sub_29A05E634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, Alembic::Abc::v12::OScalarProperty *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
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

void Alembic::AbcGeom::v12::ONuPatchSchema::init(Alembic::AbcGeom::v12::ONuPatchSchema *this, uint64_t a2, char a3)
{
  *(this + 248) = a3;
  *(this + 32) = 0;
  *(this + 33) = a2;
  if ((a3 & 1) == 0)
  {
    Alembic::AbcGeom::v12::ONuPatchSchema::createPositionProperties(this);
    Alembic::AbcGeom::v12::ONuPatchSchema::createKnotProperties(this);
  }
}

void sub_29A05E734(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A05E720);
}

void *sub_29A05E7C4(void *a1)
{
  *a1 = &unk_2A203DDE8;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}