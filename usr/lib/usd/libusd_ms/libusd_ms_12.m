void sub_29A08817C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  Alembic::Abc::v12::IArrayProperty::get(a1, &v7, a3);
  v5 = v7;
  v4 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a2[1];
  *a2 = v5;
  a2[1] = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A0881E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0881F8(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  Alembic::AbcGeom::v12::XformSample::XformSample(&v2);
  *(a1 + 272) = v2;
  sub_29A088BBC((a1 + 280));
  *(a1 + 280) = v3;
  *(a1 + 296) = v4;
  v4 = 0;
  v3 = 0uLL;
  *(a1 + 304) = v5;
  v6 = &v3;
  sub_29A088F70(&v6);
  sub_29A02F0A0(a1 + 120);
  *(a1 + 264) = 257;
  sub_29A02F0A0(a1 + 168);
  sub_29A02F0A0(a1 + 216);
  sub_29A02F0A0(a1 + 8);
}

void *Alembic::AbcGeom::v12::IXformSchema::getTimeSampling@<X0>(Alembic::AbcGeom::v12::IXformSchema *this@<X0>, void *a2@<X8>)
{
  if (*(this + 151) < 0)
  {
    if (*(this + 17))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 151))
  {
    goto LABEL_7;
  }

  if (*(this + 19))
  {
    return Alembic::Abc::v12::IScalarProperty::getTimeSampling((this + 120), a2);
  }

LABEL_7:
  v4 = operator new(0x28uLL);
  Alembic::AbcCoreAbstract::v12::TimeSampling::TimeSampling(v4);
  return sub_29A017AE0(a2, v4);
}

void sub_29A088334(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;
  operator delete(v11);
  v14 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a9, v14);
  }

  else
  {
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  *v9 = 0;
  v9[1] = 0;
  JUMPOUT(0x29A088320);
}

uint64_t Alembic::AbcGeom::v12::IXformSchema::getNumSamples(Alembic::AbcGeom::v12::IXformSchema *this)
{
  if (*(this + 151) < 0)
  {
    if (*(this + 17))
    {
      return 0;
    }
  }

  else if (*(this + 151))
  {
    return 0;
  }

  if (*(this + 19))
  {
    return Alembic::Abc::v12::IScalarProperty::getNumSamples((this + 120));
  }

  return 0;
}

void Alembic::AbcGeom::v12::IXformSchema::getChannelValues(Alembic::AbcGeom::v12::IXformSchema *this, uint64_t a2, Alembic::AbcGeom::v12::XformSample *a3)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  if (*(this + 320) != 1)
  {
    (*(**(this + 13) + 40))(&v18);
    v11 = (*(*v18 + 16))(v18);
    sub_29A00BF50(&__p, *(v11 + 60));
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    (*(**(this + 13) + 40))(&v18);
    (*(*v18 + 80))(v18, a2, __p, 0);
    goto LABEL_16;
  }

  v18 = 0;
  v19 = 0;
  (*(**(this + 13) + 48))(&v16);
  (*(*v16 + 80))(v16, a2, &v18);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v18 && *v18 && *(v18 + 2) == 11)
  {
    v6 = v18[2];
    v7 = v18[3] - v6;
    if (v7)
    {
      v8 = v7 >> 3;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = 1;
      do
      {
        v10 = *v6++;
        v9 *= v10;
        --v8;
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    sub_29A0896E4(&__p, *v18, (*v18 + 8 * v9), v9);
LABEL_16:
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    v12 = *(a3 + 1);
    v13 = *(a3 + 2);
    if (v12 != v13)
    {
      v14 = 0;
      do
      {
        for (i = 0; i < Alembic::AbcGeom::v12::XformOp::getNumChannels(v12) && v14 < (v21 - __p) >> 3; ++i)
        {
          Alembic::AbcGeom::v12::XformOp::setChannelValue(v12, i, *(__p + v14++));
        }

        v12 = (v12 + 56);
      }

      while (v12 != v13);
    }

    goto LABEL_28;
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

LABEL_28:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }
}

void sub_29A0886CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::IXformSchema::get(uint64_t a1, Alembic::AbcGeom::v12::XformSample *this, uint64_t a3)
{
  v13 = a1 + 8;
  v14 = "IXformSchema::get()";
  Alembic::AbcGeom::v12::XformSample::reset(this);
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return;
    }
  }

  else if (*(a1 + 39))
  {
    return;
  }

  if (*(a1 + 40))
  {
    *this = *(a1 + 272);
    if ((a1 + 272) != this)
    {
      sub_29A088C28(this + 8, *(a1 + 280), *(a1 + 288), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 288) - *(a1 + 280)) >> 3));
    }

    *(this + 2) = *(a1 + 304);
    if (*(a1 + 151) < 0)
    {
      if (!*(a1 + 136))
      {
LABEL_12:
        if (*(a1 + 152) && Alembic::Abc::v12::IScalarProperty::getNumSamples((a1 + 120)))
        {
          LOBYTE(v11) = 0;
          Alembic::Abc::v12::IScalarProperty::get(a1 + 120, &v11, a3, 1);
          Alembic::AbcGeom::v12::XformSample::setInheritsXforms(this, v11 != 0);
        }
      }
    }

    else if (!*(a1 + 151))
    {
      goto LABEL_12;
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      if (*(a1 + 320) == 1)
      {
        (*(*v6 + 48))(&v11);
      }

      else
      {
        (*(*v6 + 40))(&v11);
      }

      v7 = (*v11)[8](v11);
      if (v12)
      {
        sub_29A014BEC(v12);
      }

      if (v7)
      {
        v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
        v9 = *(v8 + 72);
        v11 = *(v8 + 64);
        v12 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        Index = Alembic::Abc::v12::ISampleSelector::getIndex(a3, &v11, v7);
        if (v12)
        {
          sub_29A014BEC(v12);
        }

        if ((Index & 0x8000000000000000) == 0)
        {
          Alembic::AbcGeom::v12::IXformSchema::getChannelValues(a1, Index, this);
        }
      }
    }
  }
}

void sub_29A088970(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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
  JUMPOUT(0x29A08895CLL);
}

void sub_29A088A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 8);
  sub_29A088F70(&a10);
  _Unwind_Resume(a1);
}

BOOL Alembic::AbcGeom::v12::IXformSchema::getInheritsXforms(uint64_t a1, uint64_t a2)
{
  v10 = a1 + 8;
  v11 = "IXformSchema::getInheritsXforms()";
  if (*(a1 + 151) < 0)
  {
    if (*(a1 + 136))
    {
      return 1;
    }
  }

  else if (*(a1 + 151))
  {
    return 1;
  }

  if (*(a1 + 152) && Alembic::Abc::v12::IScalarProperty::getNumSamples((a1 + 120)))
  {
    Alembic::Abc::v12::IScalarProperty::getTimeSampling((a1 + 120), &v7);
    NumSamples = Alembic::Abc::v12::IScalarProperty::getNumSamples((a1 + 120));
    Index = Alembic::Abc::v12::ISampleSelector::getIndex(a2, &v7, NumSamples);
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    if ((Index & 0x8000000000000000) == 0)
    {
      v7 = Index;
      v8 = 0;
      v9 = 2;
      v12 = 0;
      Alembic::Abc::v12::IScalarProperty::get(a1 + 120, &v12, &v7, 1);
      return v12 != 0;
    }
  }

  return 1;
}

void sub_29A088BBC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_29A086924(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_29A088C28(uint64_t a1, int *a2, int *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A088BBC(a1);
    if (a4 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v9;
    }

    sub_29A044EF0(a1, v10);
    v11 = sub_29A088DA8(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v12 >> 3) < a4)
  {
    sub_29A088ED8(&v16, a2, (a2 + v12), v8);
    v11 = sub_29A088DA8(a1, (a2 + v12), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29A088ED8(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 56;
      sub_29A086924(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

uint64_t sub_29A088DA8(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29A088E54(a1, v4, v6);
      v6 += 14;
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A086978(v9);
  return v4;
}

uint64_t *sub_29A088E54(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  *(a2 + 4) = *(a3 + 4);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_29A00C8EC((a2 + 8), *(a3 + 1), *(a3 + 2), (*(a3 + 2) - *(a3 + 1)) >> 3);
  return sub_29A086324((a2 + 32), (a3 + 8));
}

void sub_29A088EBC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

int *sub_29A088ED8(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = (a2 + 10);
    do
    {
      v8 = *v5;
      *(a4 + 4) = *(v5 + 4);
      *a4 = v8;
      if (v5 != a4)
      {
        sub_29A00CB24((a4 + 8), *(v5 + 1), *(v5 + 2), (*(v5 + 2) - *(v5 + 1)) >> 3);
        sub_29A086068((a4 + 32), *(v5 + 4), v7);
      }

      v5 += 14;
      a4 += 56;
      v7 += 14;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_29A088F70(void ***a1)
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
        sub_29A086924(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A088FF8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  if (*(v13 + 56))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v13 + 60) == 1;
  }

  v16 = v15 && *(v13 + 24) == 1;
  if (!v16 || (sub_29A089580(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v40 = 0;
    v41 = 1;
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

void sub_29A089438(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A08919CLL);
}

uint64_t sub_29A089580(uint64_t a1, int a2)
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

void sub_29A08960C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_29A089628(uint64_t **a1, unsigned int *a2, _DWORD *a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 7);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x20uLL);
    *(v10 + 7) = *a3;
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

void *sub_29A0896E4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 3)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 8;
          *v18 = v19;
          v18 += 8;
          v17 += 8;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A00C968(v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 8;
      *v12 = v13;
      v12 += 8;
    }
  }

  v7[1] = v12;
  return result;
}

uint64_t Alembic::AbcGeom::v12::OXformSchema::OXformSchema(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[1];
  v25 = *a2;
  v26 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A089BCC(a1, &v25, a3, a4, a5, a6, a7);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  *a1 = &unk_2A203E208;
  *(a1 + 72) = 0;
  *(a1 + 76) = 127;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 2;
  sub_29A008E78((a1 + 120), "");
  *(a1 + 192) = 2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  sub_29A008E78((a1 + 200), "");
  *(a1 + 240) = 2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_29A008E78((a1 + 248), "");
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  Alembic::AbcGeom::v12::XformSample::XformSample(a1 + 288);
  *(a1 + 336) = 1;
  *(a1 + 344) = 2;
  sub_29A008E78((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_29A008E78((a1 + 400), "");
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  sub_29A057858(a4, a5, a6, a7, &v23);
  v14 = sub_29A057978(a4, a5, a6, a7);
  if (v23)
  {
    v15 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v15 + 24))(&v19);
    (*(*v19 + 24))(&v21);
    v17 = (*(*v21 + 48))(v21, v23);
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    if (v16)
    {
      sub_29A014BEC(v16);
    }
  }

  else
  {
    v17 = v14;
  }

  Alembic::AbcGeom::v12::OXformSchema::init(a1, v17);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  return a1;
}

void sub_29A089AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void **a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (a16)
  {
    sub_29A014BEC(a16);
  }

  v22 = *(v16 + 448);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v16 + 392));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v16 + 344));
  a15 = (v16 + 296);
  sub_29A088F70(&a15);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v19);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v18);
  v23 = *(v16 + 184);
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v24 = *(v16 + 168);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v17);
  v25 = *a10;
  if (*a10)
  {
    *(v16 + 96) = v25;
    operator delete(v25);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v16 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29A089BCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203E268;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A08BE98(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A089CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OXformSchema::init(Alembic::AbcGeom::v12::OXformSchema *this, uint64_t a2)
{
  v13 = this + 8;
  v14 = "OXformSchema::init()";
  v4 = operator new(0x30uLL);
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  sub_29A08CD20(&v12, v4);
  v5 = this + 440;
  v6 = v12;
  v12 = 0uLL;
  v7 = *(this + 56);
  *(this + 440) = v6;
  if (v7)
  {
    sub_29A014BEC(v7);
    if (*(&v12 + 1))
    {
      sub_29A014BEC(*(&v12 + 1));
    }
  }

  v9 = *(this + 5);
  v8 = *(this + 6);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *v5;
  v11 = *(*v5 + 8);
  *v10 = v9;
  v10[1] = v8;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  *(*(this + 55) + 40) = a2;
  *(this + 336) = 1;
  *(this + 7) = 0;
  *(this + 8) = 0;
}

void sub_29A089D90(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v7 = v6;
    sub_29A08B484(v4);
    sub_29A02D768(va, v7);
  }

  else
  {
    sub_29A08B484(v4);
    sub_29A02D6F8(va, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A089D7CLL);
}

uint64_t Alembic::AbcGeom::v12::OXformSchema::OXformSchema(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 5);
  v31 = *(a2 + 4);
  v32 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a2;
  LODWORD(v29) = 1;
  LODWORD(v30) = v12;
  sub_29A089BCC(a1, &v31, a3, &v29, a4, a5, a6);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  *a1 = &unk_2A203E208;
  *(a1 + 72) = 0;
  *(a1 + 76) = 127;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 2;
  sub_29A008E78((a1 + 120), "");
  *(a1 + 192) = 2;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 144) = 0u;
  sub_29A008E78((a1 + 200), "");
  *(a1 + 240) = 2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_29A008E78((a1 + 248), "");
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  Alembic::AbcGeom::v12::XformSample::XformSample(a1 + 288);
  *(a1 + 336) = 1;
  *(a1 + 344) = 2;
  sub_29A008E78((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_29A008E78((a1 + 400), "");
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  LODWORD(v27) = 0;
  LODWORD(v28) = 0;
  sub_29A057858(a4, a5, a6, &v27, &v29);
  LODWORD(v27) = 0;
  LODWORD(v28) = 0;
  v13 = sub_29A057978(a4, a5, a6, &v27);
  if (v29)
  {
    v20 = *a2;
    if (*(a2 + 31) < 0)
    {
      sub_29A008D14(&v21, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      v21 = *(a2 + 2);
      v22 = *(a2 + 3);
    }

    v15 = *(a2 + 4);
    v16 = *(a2 + 5);
    v23 = v15;
    v24 = v16;
    if (v16)
    {
      v17 = 1;
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v23;
      v18 = v24;
      if (v24)
      {
        v17 = 0;
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v18 = 0;
      v17 = 1;
    }

    (*(*v15 + 24))(&v25);
    (*(*v25 + 24))(&v27);
    v14 = (*(*v27 + 48))(v27, v29);
    if (v28)
    {
      sub_29A014BEC(v28);
    }

    if (v26)
    {
      sub_29A014BEC(v26);
    }

    if ((v17 & 1) == 0)
    {
      sub_29A014BEC(v18);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v20);
  }

  else
  {
    v14 = v13;
  }

  Alembic::AbcGeom::v12::OXformSchema::init(a1, v14);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  return a1;
}

void sub_29A08A114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_29A014BEC(a20);
  }

  v26 = *(v20 + 448);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v20 + 392));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v20 + 344));
  a19 = (v20 + 296);
  sub_29A088F70(&a19);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v23);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v22);
  v27 = *(v20 + 184);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  v28 = *(v20 + 168);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v21);
  v29 = *v24;
  if (*v24)
  {
    *(v20 + 96) = v29;
    operator delete(v29);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v20 + 8));
  _Unwind_Resume(a1);
}

void sub_29A08A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_29A014BEC(a22);
  }

  JUMPOUT(0x29A08A1ECLL);
}

void Alembic::AbcGeom::v12::OXformSchema::setChannelValues(uint64_t a1, void *a2)
{
  v3 = *(a1 + 176);
  if (v3)
  {
    if (*(a1 + 72) == 1)
    {
      v6 = *(a1 + 56);
      sub_29A0161D0(&v13, 1uLL, &v6);
      (*(**(a1 + 176) + 48))(&v11);
      v5 = v11;
      v6 = *a2;
      v7 = 0x10000000BLL;
      v9 = 0;
      v10 = 0;
      __p = 0;
      sub_29A00E7E0(&__p, v13, v14, (v14 - v13) >> 3);
      (*(*v5 + 64))(v5, &v6);
      if (__p)
      {
        v9 = __p;
        operator delete(__p);
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }

      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }
    }

    else
    {
      (*(*v3 + 40))(&v6);
      (*(*v6 + 64))(v6, *a2);
      if (v7)
      {
        sub_29A014BEC(v7);
      }
    }
  }
}

void sub_29A08A3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    sub_29A014BEC(a15);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::OXformSchema::set(Alembic::AbcGeom::v12::OXformSchema *this, int **a2)
{
  v71 = this + 8;
  v72 = "OXformSchema::set()";
  if (*(this + 223) < 0)
  {
    if (!*(this + 26))
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = *(this + 6);
    v69 = *(this + 5);
    v70 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&v55, ".inherits");
    v7 = *(*(this + 55) + 40);
    LODWORD(__p[0]) = 2;
    LODWORD(__p[1]) = v7;
    v66 = 0;
    v68 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    sub_29A08C2A4(&v58, &v69, &v55, __p, &v66, &v64, &v62);
    *(this + 48) = v58;
    std::string::operator=((this + 200), &v59);
    v9 = v60;
    v8 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(this + 29);
    *(this + 28) = v9;
    *(this + 29) = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v58);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(v55);
    }

    if (v70)
    {
      sub_29A014BEC(v70);
    }

    Alembic::AbcGeom::v12::XformSample::freezeTopology(a2);
    *(this + 72) = *a2;
    if ((this + 288) != a2)
    {
      sub_29A088C28(this + 296, a2[1], a2[2], 0x6DB6DB6DB6DB6DB7 * ((a2[2] - a2[1]) >> 3));
    }

    *(this + 20) = *(a2 + 2);
    *(this + 7) = Alembic::AbcGeom::v12::XformSample::getNumOpChannels(a2);
    *(this + 8) = Alembic::AbcGeom::v12::XformSample::getNumOps(a2);
    v11 = *(this + 55);
    *(v11 + 24) = 0;
    sub_29A08AE30(v11 + 16, *(this + 7), 0);
    if (*(this + 8))
    {
      v13 = *(this + 5);
      v12 = *(this + 6);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(&v58, ".ops");
      v56 = 0;
      v57 = 0;
      v55 = &v56;
      v14 = *(this + 8);
      v66 = 1;
      v67 = v14;
      (*(*v13 + 96))(__p, v13, &v58, &v55, &v66, 0);
      v15 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v16 = *(this + 21);
      *(this + 10) = v15;
      if (v16)
      {
        sub_29A014BEC(v16);
        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }
      }

      sub_29A01752C(&v55, v56);
      if (v59.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v58);
      }

      if (v12)
      {
        sub_29A014BEC(v12);
      }
    }

    v17 = *(this + 7);
    if (v17)
    {
      if (v17 > 0x100)
      {
        *(this + 72) = 1;
        v21 = *(this + 5);
        v18 = *(this + 6);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29A008E78(&v58, ".vals");
        v56 = 0;
        v57 = 0;
        v55 = &v56;
        v66 = 11;
        v67 = 1;
        (*(*v21 + 104))(__p, v21, &v58, &v55, &v66, *(*(this + 55) + 40));
      }

      else
      {
        *(this + 72) = 0;
        v19 = *(this + 5);
        v18 = *(this + 6);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_29A008E78(&v58, ".vals");
        v56 = 0;
        v57 = 0;
        v55 = &v56;
        v20 = *(this + 7);
        v66 = 11;
        v67 = v20;
        (*(*v19 + 96))(__p, v19, &v58, &v55, &v66, *(*(this + 55) + 40));
      }

      v22 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v23 = *(this + 23);
      *(this + 11) = v22;
      if (v23)
      {
        sub_29A014BEC(v23);
        if (__p[1])
        {
          sub_29A014BEC(__p[1]);
        }
      }

      sub_29A01752C(&v55, v56);
      if (v59.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v58);
      }

      if (v18)
      {
        sub_29A014BEC(v18);
      }
    }

    goto LABEL_47;
  }

  if (*(this + 223))
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!*(this + 28))
  {
    goto LABEL_10;
  }

  if (!Alembic::AbcGeom::v12::XformSample::isTopologyEqual((this + 288), a2))
  {
    sub_29A008864(&v58);
    sub_29A00911C(&v59.__r_.__value_.__l.__size_, "Invalid sample topology!", 24);
    std::stringbuf::str();
    sub_29A008C60(&v55, __p);
    if (v54 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_29A008E1C(exception, &v55);
    __cxa_throw(v5, &unk_2A203B108, sub_29A008B08);
  }

LABEL_47:
  LOBYTE(v58) = Alembic::AbcGeom::v12::XformSample::getInheritsXforms(a2);
  Alembic::Abc::v12::OScalarProperty::set((this + 192), &v58);
  if (!*(this + 20))
  {
    return;
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  NumOpChannels = Alembic::AbcGeom::v12::XformSample::getNumOpChannels(a2);
  sub_29A08AF9C(&v55, NumOpChannels);
  v58 = 0;
  if (!*(this + 8))
  {
    goto LABEL_68;
  }

  v25 = 0;
  do
  {
    v26 = Alembic::AbcGeom::v12::XformSample::operator[](a2, &v58);
    v27 = Alembic::AbcGeom::v12::XformSample::operator[](this + 288, &v58);
    for (i = 0; i < Alembic::AbcGeom::v12::XformOp::getNumChannels(v26); ++i)
    {
      __p[0] = COERCE_VOID_(Alembic::AbcGeom::v12::XformOp::getChannelValue(v26, i));
      sub_29A08B03C(&v55, __p);
      v29 = (v25 + i) >> 6;
      v30 = (*(*(this + 55) + 16) + 8 * v29);
      v31 = 1 << (v25 + i);
      v32 = *v30;
      if ((*v30 & v31) != 0)
      {
        goto LABEL_58;
      }

      ChannelValue = Alembic::AbcGeom::v12::XformOp::getChannelValue(v26, i);
      v34 = Alembic::AbcGeom::v12::XformOp::getChannelValue(v27, i);
      if (ChannelValue <= v34)
      {
        v35 = v34 - ChannelValue;
      }

      else
      {
        v35 = ChannelValue - v34;
      }

      v30 = (*(*(this + 55) + 16) + 8 * v29);
      if (v35 > 1.0e-12)
      {
        v32 = *v30;
LABEL_58:
        v36 = v32 | v31;
        goto LABEL_59;
      }

      v36 = *v30 & ~v31;
LABEL_59:
      *v30 = v36;
      if (*(this + 336) == 1)
      {
        v37 = Alembic::AbcGeom::v12::XformOp::getChannelValue(v26, i);
        DefaultChannelValue = Alembic::AbcGeom::v12::XformOp::getDefaultChannelValue(v26, i);
        if (v37 <= DefaultChannelValue)
        {
          v39 = DefaultChannelValue - v37;
        }

        else
        {
          v39 = v37 - DefaultChannelValue;
        }

        v40 = v39 <= 1.0e-12;
      }

      else
      {
        v40 = 0;
      }

      *(this + 336) = v40;
    }

    v25 += Alembic::AbcGeom::v12::XformOp::getNumChannels(v26);
    v58 = v58 + 1;
  }

  while (v58 < *(this + 8));
LABEL_68:
  Alembic::AbcGeom::v12::OXformSchema::setChannelValues(this, &v55);
  v41 = *(this + 20);
  if (v41)
  {
    if ((*(*v41 + 80))(v41))
    {
      v42 = *(this + 20);
      if (v42)
      {
        (*(*v42 + 72))(v42);
      }
    }

    else
    {
      NumOps = Alembic::AbcGeom::v12::XformSample::getNumOps((this + 288));
      sub_29A0104F4(&v58, NumOps);
      __p[0] = 0;
      if (v59.__r_.__value_.__l.__data_ != v58)
      {
        do
        {
          v44 = Alembic::AbcGeom::v12::XformSample::operator[](this + 288, __p);
          OpEncoding = Alembic::AbcGeom::v12::XformOp::getOpEncoding(v44);
          *(v58 + __p[0]++) = OpEncoding;
        }

        while (__p[0] < (v59.__r_.__value_.__r.__words[0] - v58));
      }

      (*(**(this + 20) + 64))(*(this + 20));
      if (v58)
      {
        v59.__r_.__value_.__r.__words[0] = v58;
        operator delete(v58);
      }
    }
  }

  if (*(this + 271) < 0)
  {
    if (!*(this + 32))
    {
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  if (*(this + 271))
  {
LABEL_81:
    if ((*(this + 336) & 1) == 0)
    {
      v46 = *(this + 6);
      v51 = *(this + 5);
      v52 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(__p, "isNotConstantIdentity");
      v66 = 0;
      v68 = 0;
      v64 = 0;
      v65 = 0;
      v62 = 0;
      v63 = 0;
      v50[0] = 0;
      v50[2] = 0;
      sub_29A08C2A4(&v58, &v51, __p, &v66, &v64, &v62, v50);
      *(this + 60) = v58;
      std::string::operator=((this + 248), &v59);
      v48 = v60;
      v47 = v61;
      if (v61)
      {
        atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
      }

      v49 = *(this + 35);
      *(this + 34) = v48;
      *(this + 35) = v47;
      if (v49)
      {
        sub_29A014BEC(v49);
      }

      Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v58);
      if (v54 < 0)
      {
        operator delete(__p[0]);
      }

      if (v52)
      {
        sub_29A014BEC(v52);
      }

      LOBYTE(v58) = 1;
      Alembic::Abc::v12::OScalarProperty::set((this + 240), &v58);
    }

    goto LABEL_93;
  }

LABEL_80:
  if (!*(this + 34))
  {
    goto LABEL_81;
  }

LABEL_93:
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }
}

void sub_29A08AC6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_29A008F20(&a19);
  sub_29A008B0C(&__p);
  v34 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v31 - 112, v34);
  }

  else
  {
    sub_29A02D6F8(v31 - 112, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A08AC48);
}

void sub_29A08AE30(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_29A00C9A4();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_29A08C784(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    sub_29A08CA88(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    sub_29A08CBBC(&v20, v5);
    return;
  }

  v14 = (*a1 + 8 * (v4 >> 6));
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  sub_29A08CC70(&v20, v5);
}

void sub_29A08AF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A08AF9C(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 3)
  {
    if (a2 >> 61)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A00C9BC(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[8 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void sub_29A08B03C(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00C9BC(a1, v13);
      v13 = v15;
      v7 = *a1;
      v8 = a1[1] - *a1;
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v9];
    v17 = &v14[8 * v13];
    v18 = *a2;
    v19 = &v16[-8 * (v8 >> 3)];
    *v16 = v18;
    v6 = v16 + 8;
    memcpy(v19, v7, v8);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v6;
    a1[2] = v17;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void Alembic::AbcGeom::v12::OXformSchema::setFromPrevious(Alembic::AbcGeom::v12::OXformSchema *this)
{
  v5 = this + 8;
  v6 = "OXformSchema::setFromPrevious()";
  Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 192));
  (*(**(this + 20) + 72))(*(this + 20));
  v2 = *(this + 22);
  if (v2)
  {
    if (*(this + 72) == 1)
    {
      (*(*v2 + 48))(&v3);
    }

    else
    {
      (*(*v2 + 40))(&v3);
    }

    (*(*v3 + 72))(v3);
    if (v4)
    {
      sub_29A014BEC(v4);
    }
  }
}

void sub_29A08B248(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a11, v13);
  }

  else
  {
    sub_29A02D6F8(&a11, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A08B238);
}

void Alembic::AbcGeom::v12::OXformSchema::getTimeSampling(Alembic::AbcGeom::v12::OXformSchema *this@<X0>, void *a2@<X8>)
{
  v5 = this + 8;
  v6 = "OXformSchema::getTimeSampling()";
  sub_29A04428C(this + 2, v3);
  Alembic::Abc::v12::OObject::getArchive(v3, v4);
  Alembic::Abc::v12::OArchive::getTimeSampling(v4, a2);
  Alembic::Abc::v12::OArchive::~OArchive(v4);
  Alembic::Abc::v12::OObject::~OObject(v3);
}

void sub_29A08B344(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  Alembic::Abc::v12::OArchive::~OArchive(va1);
  Alembic::Abc::v12::OObject::~OObject(va);
  v7 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v4 - 48, v7);
  }

  else
  {
    sub_29A02D6F8(v4 - 48, 0);
  }

  __cxa_end_catch();
  *v3 = 0;
  v3[1] = 0;
  JUMPOUT(0x29A08B330);
}

uint64_t Alembic::AbcGeom::v12::OXformSchema::getNumSamples(Alembic::AbcGeom::v12::OXformSchema *this)
{
  result = *(this + 20);
  if (result)
  {
    return (*(*result + 80))(result);
  }

  return result;
}

void sub_29A08B42C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A08B41CLL);
}

void sub_29A08B484(uint64_t a1)
{
  sub_29A02F0A0(a1 + 112);
  sub_29A02F0A0(a1 + 192);
  v2 = *(a1 + 168);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 184);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  Alembic::AbcGeom::v12::XformSample::reset((a1 + 288));
  v4 = *(a1 + 448);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  sub_29A02F0A0(a1 + 344);
  sub_29A02F0A0(a1 + 392);
  *(a1 + 72) = 0;
  *(a1 + 336) = 1;

  sub_29A02F0A0(a1 + 8);
}

_BYTE *Alembic::AbcGeom::v12::OXformSchema::getArbGeomParams@<X0>(Alembic::AbcGeom::v12::OXformSchema *this@<X0>, uint64_t a2@<X8>)
{
  v21 = this + 8;
  v22 = "OXformSchema::getArbGeomParams()";
  v4 = *(this + 375);
  if (v4 < 0)
  {
    if (!*(this + 45))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 375))
  {
LABEL_5:
    if (*(this + 47))
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
  *(this + 86) = v17;
  std::string::operator=((this + 352), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 48);
  *(this + 47) = v7;
  *(this + 48) = v6;
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

  LOBYTE(v4) = *(this + 375);
LABEL_17:
  *a2 = *(this + 86);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_29A008D14(result, *(this + 44), *(this + 45));
  }

  else
  {
    *result = *(this + 22);
    *(a2 + 24) = *(this + 46);
  }

  v10 = *(this + 48);
  *(a2 + 32) = *(this + 47);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A08B678(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
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
  JUMPOUT(0x29A08B664);
}

_BYTE *Alembic::AbcGeom::v12::OXformSchema::getUserProperties@<X0>(Alembic::AbcGeom::v12::OXformSchema *this@<X0>, uint64_t a2@<X8>)
{
  v21 = this + 8;
  v22 = "OXformSchema::getUserProperties()";
  v4 = *(this + 423);
  if (v4 < 0)
  {
    if (!*(this + 51))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 423))
  {
LABEL_5:
    if (*(this + 53))
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
  *(this + 98) = v17;
  std::string::operator=((this + 400), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 54);
  *(this + 53) = v7;
  *(this + 54) = v6;
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

  LOBYTE(v4) = *(this + 423);
LABEL_17:
  *a2 = *(this + 98);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_29A008D14(result, *(this + 50), *(this + 51));
  }

  else
  {
    *result = *(this + 25);
    *(a2 + 24) = *(this + 52);
  }

  v10 = *(this + 54);
  *(a2 + 32) = *(this + 53);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A08B894(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
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
  JUMPOUT(0x29A08B880);
}

_BYTE *Alembic::AbcGeom::v12::OXformSchema::getChildBoundsProperty@<X0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  v24 = &this->__r_.__value_.__s.__data_[8];
  v25 = "OXformSchema::getChildBoundsProperty()";
  if (SHIBYTE(this[5].__r_.__value_.__r.__words[2]) < 0)
  {
    if (!this[5].__r_.__value_.__l.__size_)
    {
      goto LABEL_5;
    }
  }

  else if (!*(&this[5].__r_.__value_.__s + 23))
  {
LABEL_5:
    if (this[6].__r_.__value_.__r.__words[0])
    {
      goto LABEL_19;
    }
  }

  v4 = this[1].__r_.__value_.__r.__words[2];
  data = this[2].__r_.__value_.__l.__data_;
  if (data)
  {
    atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = data;
    atomic_fetch_add_explicit(&data->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v19 = 0;
  }

  v18 = v4;
  sub_29A008E78(__p, ".childBnds");
  v6 = *(this[18].__r_.__value_.__l.__size_ + 40);
  v15[0] = 2;
  v15[2] = v6;
  v14[0] = 0;
  v14[2] = 0;
  v13[0] = 0;
  v13[2] = 0;
  v12[0] = 0;
  v12[2] = 0;
  sub_29A045D40(&v20, &v18, __p, v15, v14, v13, v12);
  LODWORD(this[4].__r_.__value_.__r.__words[2]) = v20;
  std::string::operator=(this + 5, &v21);
  v8 = v22;
  v7 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  size = this[6].__r_.__value_.__l.__size_;
  this[6].__r_.__value_.__r.__words[0] = v8;
  this[6].__r_.__value_.__l.__size_ = v7;
  if (size)
  {
    sub_29A014BEC(size);
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

  if (data)
  {
    sub_29A014BEC(data);
  }

LABEL_19:
  *a2 = this[4].__r_.__value_.__r.__words[2];
  result = (a2 + 8);
  if (SHIBYTE(this[5].__r_.__value_.__r.__words[2]) < 0)
  {
    result = sub_29A008D14(result, this[5].__r_.__value_.__l.__data_, this[5].__r_.__value_.__l.__size_);
  }

  else
  {
    *result = *&this[5].__r_.__value_.__l.__data_;
    *(a2 + 24) = *(&this[5].__r_.__value_.__l + 2);
  }

  v11 = this[6].__r_.__value_.__l.__size_;
  *(a2 + 32) = this[6].__r_.__value_.__l.__data_;
  *(a2 + 40) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A08BAF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, char a26)
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
  JUMPOUT(0x29A08BA98);
}

void Alembic::AbcGeom::v12::OXformSchema::setTimeSampling(Alembic::AbcGeom::v12::OXformSchema *this, uint64_t a2)
{
  v8 = this + 8;
  v9 = "OXformSchema::setTimeSampling( uint32_t)";
  if (*(this + 223) < 0)
  {
    if (*(this + 26))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 223))
  {
    goto LABEL_7;
  }

  if (*(this + 28))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 192));
  }

LABEL_7:
  v4 = *(this + 22);
  if (v4)
  {
    if (*(this + 72) == 1)
    {
      (*(*v4 + 48))(&v6);
    }

    else
    {
      (*(*v4 + 40))(&v6);
    }

    (*(*v6 + 88))(v6, a2);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  v5 = *(this + 55);
  if (v5)
  {
    *(v5 + 40) = a2;
  }
}

void sub_29A08BCE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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
  JUMPOUT(0x29A08BCD0);
}

void Alembic::AbcGeom::v12::OXformSchema::setTimeSampling(Alembic::AbcGeom::v12::OXformSchema *a1, void *a2)
{
  v3 = (a1 + 8);
  v7 = v3;
  v8 = "OXformSchema::setTimeSampling( TimeSamplingPtr)";
  if (*a2)
  {
    sub_29A04428C(v3, v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    v4 = Alembic::Abc::v12::OArchive::addTimeSampling(v6);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    Alembic::AbcGeom::v12::OXformSchema::setTimeSampling(a1, v4);
  }
}

void sub_29A08BDE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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
  JUMPOUT(0x29A08BDD4);
}

void sub_29A08BE70(uint64_t a1)
{
  v1 = sub_29A08D180(a1);

  operator delete(v1);
}

void sub_29A08BE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    sub_29A008E78(&__str, "AbcGeom_Xform_v3");
    v29 = __p;
    v13 = sub_29A00B038(&v21, __p, &unk_29B432B9D, &v29);
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

void sub_29A08C118(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A08C064);
}

void sub_29A08C268(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

uint64_t sub_29A08C2A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A08C37C(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A08C35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A08C37C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  LODWORD(__p[0]) = 0;
  BYTE4(__p[0]) = 1;
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

void sub_29A08C65C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A08C5A8);
}

void sub_29A08C784(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_29A00C9A4();
    }

    v10 = 0;
    v11 = 0uLL;
    sub_29A08C840(&v10, a2);
    v3 = a1[1];
    v8 = *a1;
    v9 = 0;
    v6 = &v8[8 * (v3 >> 6)];
    v7 = v3 & 0x3F;
    sub_29A08C884(&v10, &v8, &v6, v3);
    v4 = *a1;
    *a1 = v10;
    v10 = v4;
    v5 = *(a1 + 1);
    *(a1 + 1) = v11;
    v11 = v5;
    if (v4)
    {
      operator delete(v4);
    }
  }
}

void sub_29A08C828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A08C840(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    sub_29A00C9A4();
  }

  if (a2)
  {
    v3 = ((a2 - 1) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  result = sub_29A00C9BC(a1, v3);
  *a1 = result;
  a1[1] = 0;
  a1[2] = v5;
  return result;
}

void sub_29A08C884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_29A08C928(&v18, &v16, &v14, &v13);
}

void sub_29A08C928(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_29A08C9B8(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_29A08C9B8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *sub_29A08CA88@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *sub_29A08CBBC(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_29A08CC70(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *sub_29A08CD20(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203E288;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A08CD78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = sub_29A08CE34(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A08CD98(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A08CDC0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_29A08CE34(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A08CDF4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E2D8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29A08CE34(uint64_t *a1)
{
  v2 = a1[3];
  v21 = a1[2];
  v22 = 0;
  sub_29A08CFD0(&v21, v2, &__p);
  v3 = a1[2];
  v4 = a1[3];
  if (__p != &v3[8 * (v4 >> 6)] || v12 != (v4 & 0x3F))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        if ((*(a1[2] + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i))
        {
          LODWORD(v21) = i;
          sub_29A00D250(&v23, &v21);
          v4 = a1[3];
        }
      }
    }

    v7 = a1[1];
    v19 = *a1;
    v20 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(&__p, ".animChans");
    v8 = a1[5];
    v18[0] = 2;
    v18[2] = v8;
    v17[0] = 0;
    v17[2] = 0;
    v16[0] = 0;
    v16[2] = 0;
    v15[0] = 0;
    v15[2] = 0;
    sub_29A08D0A8(&v21, &v19, &__p, v18, v17, v16, v15);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (v20)
    {
      sub_29A014BEC(v20);
    }

    sub_29A052640(&__p, &v23);
    Alembic::Abc::v12::OArrayProperty::set(&v21);
    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v21);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    v3 = a1[2];
  }

  if (v3)
  {
    operator delete(v3);
  }

  v9 = a1[1];
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  return a1;
}

uint64_t sub_29A08CFD0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *result;
  if (v3)
  {
    v5 = (64 - v3);
    if (v5 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v3);
    }

    v7 = (0xFFFFFFFFFFFFFFFFLL >> (64 - v3 - v6)) & (-1 << v3) & *v4;
    if (v7)
    {
      v8 = __rbit64(v7);
LABEL_15:
      *a3 = v4;
      *(a3 + 8) = __clz(v8);
      return result;
    }

    if (v5 >= a2)
    {
      *a3 = &v4[(v3 + a2) >> 6];
      *(a3 + 8) = (v3 + a2) & 0x3F;
      return result;
    }

    a2 -= v6;
    *result = ++v4;
  }

  if (a2 >= 0x40)
  {
    do
    {
      v9 = *v4;
      if (*v4)
      {
        goto LABEL_14;
      }

      *result = ++v4;
      a2 -= 64;
    }

    while (a2 > 0x3F);
  }

  if (a2)
  {
    v9 = *v4 & (0xFFFFFFFFFFFFFFFFLL >> -a2);
    if (v9)
    {
LABEL_14:
      v8 = __rbit64(v9);
      goto LABEL_15;
    }
  }

  *a3 = v4;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_29A08D0A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A053AD4(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A08D160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A08D180(uint64_t a1)
{
  *a1 = &unk_2A203E208;
  v2 = *(a1 + 448);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 392));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 344));
  v7 = (a1 + 296);
  sub_29A088F70(&v7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 240));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 192));
  v3 = *(a1 + 184);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 112));
  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 96) = v5;
    operator delete(v5);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

void *Alembic::AbcCollection::v12::OCollectionsSchema::OCollectionsSchema(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2[1];
  v10 = *a2;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A08D2D4(a1, &v10, a3, a4, a5, a6, a7);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  *a1 = &unk_2A203E300;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  return a1;
}

void sub_29A08D2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A08D2D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203E360;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A08DAAC(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A08D3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void *Alembic::AbcCollection::v12::OCollectionsSchema::OCollectionsSchema(void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 5);
  v11 = *(a2 + 4);
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a2;
  v10[0] = 1;
  v10[2] = v8;
  sub_29A08D2D4(a1, &v11, a3, v10, a4, a5, a6);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  *a1 = &unk_2A203E300;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  return a1;
}

void sub_29A08D474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcCollection::v12::OCollectionsSchema::createCollection(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a1 + 8;
  v24 = "OCollectionsSchema::createCollection";
  Alembic::AbcCollection::v12::OCollectionsSchema::getCollection(a1, a6);
  if (*(a6 + 31) < 0)
  {
    if (*(a6 + 16))
    {
      goto LABEL_6;
    }
  }

  else if (*(a6 + 31))
  {
    goto LABEL_6;
  }

  if (*(a6 + 32))
  {
    return;
  }

LABEL_6:
  v12 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16[0] = 0;
  v16[2] = 0;
  sub_29A045248(&v19, &v17, a2, a3, a4, a5, v16);
  *a6 = v19;
  std::string::operator=((a6 + 8), &v20);
  v14 = v21;
  v13 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a6 + 40);
  *(a6 + 32) = v14;
  *(a6 + 40) = v13;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v19);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (*(a6 + 31) < 0)
  {
    if (*(a6 + 16))
    {
      goto LABEL_20;
    }
  }

  else if (*(a6 + 31))
  {
    goto LABEL_20;
  }

  if (*(a6 + 32))
  {
    sub_29A08D868(a1 + 56, a6);
    return;
  }

LABEL_20:
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(a6);
  *a6 = 2;
  sub_29A008E78((a6 + 8), "");
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
}

void sub_29A08D600(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v19);
  v22 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a19, v22);
  }

  else
  {
    sub_29A02D6F8(&a19, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A08D5C8);
}

void Alembic::AbcCollection::v12::OCollectionsSchema::getCollection(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + 8);
  v17 = a1 + 8;
  v18 = "OCollectionsSchema::getCollection(string)";
  PropertyHeader = Alembic::Abc::v12::OCompoundProperty::getPropertyHeader(a1 + 8);
  if (PropertyHeader && (*(PropertyHeader + 56) == 12 ? (v5 = *(PropertyHeader + 24) == 2) : (v5 = 0), v5 && sub_29A08E19C(PropertyHeader + 32)))
  {
    Alembic::Abc::v12::OCompoundProperty::getProperty(v3, v10);
    v6 = v13;
    v7 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 48))(&v15);
    v9[0] = 0;
    v9[2] = 0;
    v8[0] = 0;
    v8[2] = 0;
    sub_29A08E238(a2, &v15, v9, v8);
    if (v16)
    {
      sub_29A014BEC(v16);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }

    if (v12 < 0)
    {
      operator delete(__p);
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

uint64_t sub_29A08D868(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A08DEB8(a1, a2);
  }

  else
  {
    sub_29A08DFEC(a1, *(a1 + 8), a2);
    result = v3 + 48;
    *(a1 + 8) = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

_BYTE *Alembic::AbcCollection::v12::OCollectionsSchema::getCollection@<X0>(Alembic::AbcCollection::v12::OCollectionsSchema *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 7);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - v4) >> 4) <= a2)
  {
    *a3 = 2;
    result = sub_29A008E78((a3 + 8), "");
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  else
  {
    v5 = v4 + 48 * a2;
    *a3 = *v5;
    result = (a3 + 8);
    if (*(v5 + 31) < 0)
    {
      result = sub_29A008D14(result, *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v7 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *result = v7;
    }

    v8 = *(v5 + 40);
    *(a3 + 32) = *(v5 + 32);
    *(a3 + 40) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t sub_29A08D9E0(uint64_t a1)
{
  *a1 = &unk_2A203E300;
  v2 = (a1 + 8);
  v4 = (a1 + 56);
  sub_29A08E9C0(&v4);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_29A08DA44(char *a1)
{
  *a1 = &unk_2A203E300;
  v2 = (a1 + 8);
  v3 = (a1 + 56);
  sub_29A08E9C0(&v3);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  operator delete(a1);
}

void sub_29A08DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    sub_29A008E78(&__str, "AbcCollection_Collections_v1");
    v29 = __p;
    v13 = sub_29A00B038(&v21, __p, &unk_29B432D5C, &v29);
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

void sub_29A08DD2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A08DC78);
}

void sub_29A08DE7C(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

uint64_t sub_29A08DEB8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 48 * v2);
  *(&v16 + 1) = v7 + 48 * v6;
  sub_29A08DFEC(a1, v15, a2);
  *&v16 = v15 + 48;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A08E0A0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A08E14C(&v14);
  return v13;
}

void sub_29A08DFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A08E14C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_29A08DFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    result = sub_29A008D14(result, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *result = v6;
  }

  v7 = *(a3 + 40);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_29A08E058(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    sub_29A00C8B8();
  }

  return operator new(48 * a2);
}

void sub_29A08E0A0(uint64_t a1, Alembic::Abc::v12::OArrayProperty *a2, Alembic::Abc::v12::OArrayProperty *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_29A08DFEC(a1, a4, v9);
      v9 += 48;
      a4 += 48;
      v8 -= 48;
    }

    while (v9 != a3);
    while (v6 != a3)
    {
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v6);
      v6 = (v6 + 48);
    }
  }
}

void sub_29A08E128(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v4);
      v4 = (v5 - 48);
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A08E14C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_29A08E19C(uint64_t a1)
{
  sub_29A008E78(__p, "interpretation");
  sub_29A02CFB4(a1, __p, v6);
  if (v7 < 0)
  {
    v2 = v6[1] == 0;
    operator delete(v6[0]);
  }

  else
  {
    v2 = v7 == 0;
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A08E21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A08E238(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1];
  v21 = *a2;
  v22 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = a2[1];
    v18 = *a2;
    v19 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v18 = v8;
    v19 = 0;
  }

  v17[0] = 0;
  v17[2] = 0;
  v16[0] = 0;
  v16[2] = 0;
  v11 = sub_29A08E384(&v18, a3, a4, v17, v16);
  v20[0] = 1;
  v20[2] = v11;
  sub_29A08E4BC(a1, &v21, v20);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  v12 = a2[1];
  v14 = *a2;
  v15 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A08E5C8(a1, &v14, a3, a4);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  return a1;
}

void sub_29A08E344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_29A08E384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void sub_29A08E488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_29A01752C(&a10, a11);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A08E4BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = a2[1];
    v12 = *a2;
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
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
  v9[0] = 0;
  v9[2] = 0;
  v7 = sub_29A08E384(&v12, a3, v11, v10, v9);
  *a1 = 2;
  sub_29A008E78((a1 + 8), "");
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v7;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return a1;
}

void sub_29A08E5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_29A014BEC(a16);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A08E5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[33] = a1;
  v29[34] = "OTypedArrayProperty::init( ArrayPtr)";
  v6 = (*(**a2 + 16))();
  LODWORD(v27) = 0;
  v28 = 0;
  LODWORD(__p) = 0;
  LODWORD(v21) = 0;
  sub_29A08E8B4(a3, a4, &v27, &__p);
  v7 = *(v6 + 56) == 12 && *(v6 + 24) == 2;
  if (!v7 || !(result = sub_29A08E19C(v6 + 32)))
  {
    sub_29A008864(&v27);
    v9 = sub_29A00911C(v29, "Incorrect match of header datatype: ", 36);
    v10 = sub_29A00D330(v9, (v6 + 56));
    v11 = sub_29A00911C(v10, " to expected: ", 14);
    v26 = 1;
    v25 = 12;
    v12 = sub_29A00D330(v11, &v25);
    v13 = sub_29A00911C(v12, ",\n...or incorrect match of interpretation: ", 43);
    sub_29A008E78(v23, "interpretation");
    sub_29A02CFB4(v6 + 32, v23, &__p);
    if ((v22 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v22 & 0x80u) == 0)
    {
      v15 = v22;
    }

    else
    {
      v15 = v21;
    }

    v16 = sub_29A00911C(v13, p_p, v15);
    v17 = sub_29A00911C(v16, " to expected: ", 14);
    sub_29A00911C(v17, "", 0);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    std::stringbuf::str();
    sub_29A008C60(&__p, v23);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v19 = sub_29A008E1C(exception, &__p);
    __cxa_throw(v19, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A08E7D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a24);
  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v29 = v28;
    sub_29A02F0A0(v24);
    sub_29A02D768(v25 - 64, v29);
  }

  else
  {
    sub_29A02F0A0(v24);
    sub_29A02D6F8(v25 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A08E674);
}

uint64_t sub_29A08E8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v8 = v16;
  if (*(&v14 + 1))
  {
    sub_29A014BEC(*(&v14 + 1));
  }

  sub_29A01752C(v13, v13[1]);
  return v8;
}

void sub_29A08E9C0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v4 - 48));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Alembic::AbcCollection::v12::ICollectionsSchema::init(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 1);
  v28 = a1 + 1;
  v29 = "ICollectionsSchema::init()";
  v8 = a1[5];
  v7 = a1[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a1[7];
  v9 = a1[8];
  v10 = (a1 + 7);
  while (v9 != v11)
  {
    Alembic::Abc::v12::IArrayProperty::~IArrayProperty((v9 - 48));
  }

  a1[8] = v11;
  NumProperties = Alembic::Abc::v12::ICompoundProperty::getNumProperties(v6);
  if (NumProperties)
  {
    for (i = 0; i != NumProperties; ++i)
    {
      PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
      sub_29A08F108(__p, PropertyHeader);
      v15 = v26 == 12 && v24 == 2;
      if (v15 && sub_29A042D80(v25, 0))
      {
        v18 = v8;
        v19 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17[0] = 0;
        v17[2] = 0;
        v16[0] = 0;
        v16[2] = 0;
        Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v20, &v18, v17, v16);
        sub_29A0427FC(v21, v20, __p, a2, a3);
        sub_29A08ECA4(v10, v21);
        Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v21);
        Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v20);
        if (v19)
        {
          sub_29A014BEC(v19);
        }
      }

      if (v27)
      {
        sub_29A014BEC(v27);
      }

      sub_29A01752C(v25, v25[1]);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A08EBE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  v32 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v29 - 104, v32);
  }

  else
  {
    sub_29A02D6F8(v29 - 104, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A08EBC4);
}

uint64_t sub_29A08ECA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A08F1A8(a1, a2);
  }

  else
  {
    sub_29A08DFEC(a1, *(a1 + 8), a2);
    result = v3 + 48;
    *(a1 + 8) = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A08ED04(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  sub_29A01752C(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_BYTE *Alembic::AbcCollection::v12::ICollectionsSchema::getCollection@<X0>(Alembic::AbcCollection::v12::ICollectionsSchema *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 7);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - v4) >> 4) <= a2)
  {
    *a3 = 2;
    result = sub_29A008E78((a3 + 8), "");
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }

  else
  {
    v5 = v4 + 48 * a2;
    *a3 = *v5;
    result = (a3 + 8);
    if (*(v5 + 31) < 0)
    {
      result = sub_29A008D14(result, *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v7 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *result = v7;
    }

    v8 = *(v5 + 40);
    *(a3 + 32) = *(v5 + 32);
    *(a3 + 40) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void Alembic::AbcCollection::v12::ICollectionsSchema::getCollection(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a1 + 8;
  v18 = "ICollectionsSchema::getCollection(string)";
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(a1 + 8);
  if (PropertyHeader && (*(PropertyHeader + 56) == 12 ? (v7 = *(PropertyHeader + 24) == 2) : (v7 = 0), v7 && sub_29A042D80(PropertyHeader + 32, 0)))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v15 = 0;
    }

    v14 = v8;
    v13[0] = 0;
    v13[2] = 0;
    v12[0] = 0;
    v12[2] = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v16, &v14, v13, v12);
    v11[0] = 0;
    v11[2] = 0;
    v10[0] = 0;
    v10[2] = 0;
    sub_29A0427FC(a3, v16, a2, v11, v10);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v16);
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    if (v9)
    {
      sub_29A014BEC(v9);
    }
  }

  else
  {
    *a3 = 2;
    sub_29A008E78((a3 + 8), "");
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
  }
}

void **Alembic::AbcCollection::v12::ICollectionsSchema::getCollectionName@<X0>(void **this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this[7];
  if (0xAAAAAAAAAAAAAAABLL * ((this[8] - v4) >> 4) <= a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    this = sub_29A08F3D8(&v4[48 * a2]);
    if (*(this + 23) < 0)
    {
      return sub_29A008D14(a3, *this, this[1]);
    }

    else
    {
      *a3 = *this;
      *(a3 + 16) = this[2];
    }
  }

  return this;
}

void *sub_29A08F108(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 6) = *(a2 + 6);
  sub_29A019350(__dst + 4, a2 + 4);
  __dst[7] = *(a2 + 7);
  v5 = *(a2 + 9);
  __dst[8] = *(a2 + 8);
  __dst[9] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_29A08F18C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A08F1A8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A08E058(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = (v7 + 48 * v2);
  *(&v16 + 1) = v7 + 48 * v6;
  sub_29A08DFEC(a1, v15, a2);
  *&v16 = v15 + 48;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A08F2DC(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A08F388(&v14);
  return v13;
}

void sub_29A08F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A08F388(va);
  _Unwind_Resume(a1);
}

void sub_29A08F2DC(uint64_t a1, Alembic::Abc::v12::IArrayProperty *a2, Alembic::Abc::v12::IArrayProperty *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      sub_29A08DFEC(a1, a4, v9);
      v9 += 48;
      a4 += 48;
      v8 -= 48;
    }

    while (v9 != a3);
    while (v6 != a3)
    {
      Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v6);
      v6 = (v6 + 48);
    }
  }
}

void sub_29A08F364(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v4);
      v4 = (v5 - 48);
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A08F388(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    Alembic::Abc::v12::IArrayProperty::~IArrayProperty((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A08F430(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      Alembic::Abc::v12::IBasePropertyT<std::shared_ptr<Alembic::AbcCoreAbstract::v12::ArrayPropertyReader>>::getHeader(void)const::phd = v11;
    }
  }

  JUMPOUT(0x29A08F420);
}

uint64_t Alembic::AbcMaterial::v12::OMaterialSchema::OMaterialSchema(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2[1];
  v10 = *a2;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A08F600(a1, &v10, a3, a4, a5, a6, a7);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  *a1 = &unk_2A203E380;
  *(a1 + 56) = 2;
  sub_29A008E78((a1 + 64), "");
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  Alembic::AbcMaterial::v12::OMaterialSchema::init(a1);
  return a1;
}

void sub_29A08F5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v10 + 112);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v11);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v10 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29A08F600(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203E3E0;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A091B34(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A08F6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::init(Alembic::AbcMaterial::v12::OMaterialSchema *this)
{
  v2 = operator new(0xA0uLL);
  v2[1] = 0u;
  v2[2] = 0u;
  v2[5] = 0u;
  *v2 = 0u;
  v2[7] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[4] = 0u;
  v2[3] = 0u;
  *(v2 + 2) = v2 + 24;
  *(v2 + 5) = v2 + 3;
  *(v2 + 6) = 0;
  *(v2 + 7) = 0;
  *(v2 + 10) = 0;
  *(v2 + 9) = 0;
  *(v2 + 8) = v2 + 72;
  *(v2 + 22) = 2;
  sub_29A008E78(v2 + 12, "");
  *(v2 + 19) = 0;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  sub_29A091F40(&v9, v2);
  v3 = v9;
  v9 = 0uLL;
  v4 = *(this + 14);
  *(this + 104) = v3;
  if (v4)
  {
    sub_29A014BEC(v4);
    if (*(&v9 + 1))
    {
      sub_29A014BEC(*(&v9 + 1));
    }
  }

  v6 = *(this + 5);
  v5 = *(this + 6);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(this + 13);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  if (v8)
  {
    sub_29A014BEC(v8);
  }
}

void sub_29A08F818(_Unwind_Exception *a1)
{
  sub_29A01752C(v4, *(v1 + 72));
  sub_29A01752C(v3, *(v1 + 48));
  sub_29A091A74(v2, *(v1 + 24));
  v6 = *(v1 + 8);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcMaterial::v12::OMaterialSchema::OMaterialSchema(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 5);
  v11 = *(a2 + 4);
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a2;
  v10[0] = 1;
  v10[2] = v8;
  sub_29A08F600(a1, &v11, a3, v10, a4, a5, a6);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  *a1 = &unk_2A203E380;
  *(a1 + 56) = 2;
  sub_29A008E78((a1 + 64), "");
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  Alembic::AbcMaterial::v12::OMaterialSchema::init(a1);
  return a1;
}

void sub_29A08F930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *(v12 + 112);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v13);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v12 + 8));
  _Unwind_Resume(a1);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::setShader(uint64_t a1, uint64_t a2, uint64_t a3, const std::string *a4)
{
  v13 = a1 + 8;
  v14 = "OMaterialSchema::setShader";
  sub_29A008E78(&__p, "target");
  sub_29A09CA00(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "shaderType");
  sub_29A09CA00(a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(v10, "");
  sub_29A09C8D8(a2, a3, v10, &__p);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v8 = *(a1 + 104);
  v10[0] = &__p;
  v9 = sub_29A00B038((v8 + 40), &__p.__r_.__value_.__l.__data_, &unk_29B432DD0, v10);
  std::string::operator=((v9 + 7), a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A08FA94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v24 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a22, v24);
  }

  else
  {
    sub_29A02D6F8(&a22, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A08FA80);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::getShaderParameters(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a1 + 1;
  v47 = "OMaterialSchema::getShaderParameters";
  sub_29A008E78(&__p, "target");
  sub_29A09CA00(a2, &__p);
  if (v36.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&__p, "shaderType");
  sub_29A09CA00(a3, &__p);
  if (v36.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&__p, "params");
  sub_29A09C8D8(a2, a3, &__p, &v45);
  if (v36.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  v8 = sub_29A01BCCC(a1[13] + 16, &v45.__r_.__value_.__l.__data_);
  v9 = v8;
  if (a1[13] + 24 == v8)
  {
    LODWORD(__p) = 2;
    sub_29A008E78(&v36, "");
    v37 = 0;
    v38 = 0;
    v39 = 2;
    sub_29A008E78(&v40, "");
    v41 = 0;
    v42 = 0;
    v44 = 0uLL;
    v43 = &v44;
    v12 = a1[6];
    v29 = a1[5];
    v30 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28[0] = 0;
    v28[2] = 0;
    v27[0] = 0;
    v27[2] = 0;
    Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&v31, &v29, &v45, v28, v27);
    v39 = v31;
    std::string::operator=(&v40, &v32);
    v14 = v33;
    v13 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v42;
    v41 = v14;
    v42 = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v31);
    if (v30)
    {
      sub_29A014BEC(v30);
    }

    v16 = a1[13];
    v31 = &v45;
    v17 = sub_29A09282C((v16 + 16), &v45.__r_.__value_.__l.__data_, &unk_29B432DD0, &v31);
    *(v17 + 14) = __p;
    std::string::operator=((v17 + 8), &v36);
    v19 = v37;
    v18 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = v17[12];
    v17[11] = v19;
    v17[12] = v18;
    if (v20)
    {
      sub_29A014BEC(v20);
    }

    *(v17 + 26) = v39;
    std::string::operator=((v17 + 14), &v40);
    v22 = v41;
    v21 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v17[18];
    v17[17] = v22;
    v17[18] = v21;
    if (v23)
    {
      sub_29A014BEC(v23);
    }

    if (v17 + 7 != &__p)
    {
      sub_29A028554(v17 + 19, v43, &v44);
    }

    *a4 = v39;
    v24 = (a4 + 8);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(v24, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      *v24 = *&v40.__r_.__value_.__l.__data_;
      *(a4 + 24) = *(&v40.__r_.__value_.__l + 2);
    }

    v26 = v42;
    *(a4 + 32) = v41;
    *(a4 + 40) = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A01752C(&v43, v44);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v39);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&__p);
  }

  else
  {
    *a4 = *(v8 + 104);
    v10 = (a4 + 8);
    if (*(v9 + 135) < 0)
    {
      sub_29A008D14(v10, *(v9 + 112), *(v9 + 120));
    }

    else
    {
      v11 = *(v9 + 112);
      *(a4 + 24) = *(v9 + 128);
      *v10 = v11;
    }

    *(a4 + 32) = *(v9 + 136);
    v25 = *(v9 + 144);
    *(a4 + 40) = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }
}

void sub_29A08FE9C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(va);
  if (a8)
  {
    sub_29A014BEC(a8);
  }

  sub_29A08FFB0(va1);
  if (*(v9 - 81) < 0)
  {
    operator delete(*(v9 - 104));
  }

  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v9 - 80, v12);
  }

  else
  {
    sub_29A02D6F8(v9 - 80, 0);
  }

  __cxa_end_catch();
  *v8 = 2;
  sub_29A008E78((v8 + 8), "");
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  JUMPOUT(0x29A08FE80);
}

void sub_29A08FFB0(void **a1)
{
  sub_29A01752C((a1 + 12), a1[13]);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 6));

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(a1);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::createNodeCompound(Alembic::AbcMaterial::v12::OMaterialSchema *this)
{
  v16 = this + 8;
  v17 = "OMaterialSchema::createNodeCompound";
  if (*(this + 87) < 0)
  {
    if (!*(this + 9))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 87))
  {
LABEL_5:
    if (*(this + 11))
    {
      return;
    }
  }

  v2 = *(this + 6);
  v10 = *(this + 5);
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".nodes");
  v7[0] = 0;
  v7[2] = 0;
  v6[0] = 0;
  v6[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&v12, &v10, __p, v7, v6);
  *(this + 14) = v12;
  std::string::operator=((this + 64), &v13);
  v4 = v14;
  v3 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 12);
  *(this + 11) = v4;
  *(this + 12) = v3;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v12);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29A090100(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, char a22)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&a22);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_29A014BEC(a21);
  }

  v25 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v22 - 32, v25);
  }

  else
  {
    sub_29A02D6F8(v22 - 32, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0900F0);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::addNetworkNode(Alembic::AbcMaterial::v12::OMaterialSchema *a1, uint64_t a2, const void *a3, const void *a4)
{
  v60 = (a1 + 8);
  v61 = "OMaterialSchema::addNetworkNode";
  sub_29A008E78(&__p, "nodeName");
  sub_29A09CA00(a2, &__p);
  if (v49.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  sub_29A008E78(&__p, "target");
  sub_29A09CA00(a3, &__p);
  if (v49.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  std::operator+<char>();
  if (*(a1 + 13) + 24 != sub_29A01BCCC(*(a1 + 13) + 16, v58))
  {
    sub_29A008864(&__p);
    v20 = sub_29A00911C(&v49.__r_.__value_.__l.__size_, "Node already added: ", 20);
    v21 = *(a2 + 23);
    if (v21 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= 0)
    {
      v23 = *(a2 + 23);
    }

    else
    {
      v23 = *(a2 + 8);
    }

    sub_29A00911C(v20, v22, v23);
    std::stringbuf::str();
    sub_29A008C60(&v42, v46);
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v25 = sub_29A008E1C(exception, &v42);
    __cxa_throw(v25, &unk_2A203B108, sub_29A008B08);
  }

  Alembic::AbcMaterial::v12::OMaterialSchema::createNodeCompound(a1);
  LODWORD(__p) = 2;
  sub_29A008E78(&v49, "");
  v50 = 0;
  v51 = 0;
  v52 = 2;
  sub_29A008E78(&v53, "");
  v54 = 0;
  v55 = 0;
  v57[0] = 0uLL;
  v56 = v57;
  v8 = *(a1 + 12);
  v40 = *(a1 + 11);
  v41 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v46[0]) = 0;
  LODWORD(v46[1]) = 0;
  v38 = 0;
  v39 = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&v42, &v40, a2, v46, &v38);
  LODWORD(__p) = v42;
  std::string::operator=(&v49, &v43);
  v10 = v44;
  v9 = v45;
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v51;
  v50 = v10;
  v51 = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v42);
  if (v41)
  {
    sub_29A014BEC(v41);
  }

  v12 = *(a1 + 13);
  v42 = v58;
  v13 = sub_29A09282C((v12 + 16), v58, &unk_29B432DD0, &v42);
  *(v13 + 14) = __p;
  std::string::operator=((v13 + 8), &v49);
  v15 = v50;
  v14 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v13[12];
  v13[11] = v15;
  v13[12] = v14;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  *(v13 + 26) = v52;
  std::string::operator=((v13 + 14), &v53);
  v18 = v54;
  v17 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = v13[18];
  v13[17] = v18;
  v13[18] = v17;
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (v13 + 7 != &__p)
  {
    sub_29A028554(v13 + 19, v56, v57);
  }

  v34 = __p;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&v35, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = v49;
  }

  v36 = v50;
  v37 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v46, "target");
  v38 = 0;
  v39 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  sub_29A0371E8(&v42, &v34, v46, &v38, &v32, &v30);
  Alembic::Abc::v12::OScalarProperty::set(&v42, a3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v42);
  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v34);
  v26 = __p;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&v27, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v49;
  }

  v28 = v50;
  v29 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v46, "type");
  v38 = 0;
  v39 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  sub_29A0371E8(&v42, &v26, v46, &v38, &v32, &v30);
  Alembic::Abc::v12::OScalarProperty::set(&v42, a4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v42);
  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v26);
  sub_29A01752C(&v56, *&v57[0]);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v52);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&__p);
  if (v59 < 0)
  {
    operator delete(v58[0]);
  }
}

void sub_29A090660(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::exception a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_29A008F20(&a30);
  sub_29A008B0C(&a42);
  if (*(v47 - 97) < 0)
  {
    operator delete(*(v47 - 120));
  }

  v50 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v47 - 96, v50);
  }

  else
  {
    sub_29A02D6F8(v47 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0905A8);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::setNetworkNodeConnection(Alembic::AbcMaterial::v12::OMaterialSchema *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v47 = (a1 + 8);
  v48 = "OMaterialSchema::setNetworkNodeConnection";
  std::operator+<char>();
  if (*(a1 + 13) + 24 == sub_29A01BCCC(*(a1 + 13) + 16, v45))
  {
    Alembic::AbcMaterial::v12::OMaterialSchema::createNodeCompound(a1);
    LODWORD(__str.__r_.__value_.__l.__data_) = 2;
    sub_29A008E78(&__str.__r_.__value_.__l.__size_, "");
    v37 = 0;
    v38 = 0;
    v39 = 2;
    sub_29A008E78(&v40, "");
    v41 = 0;
    v42 = 0;
    v44 = 0uLL;
    v43 = &v44;
    v10 = *(a1 + 12);
    v30 = *(a1 + 11);
    v31 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29[0] = 0;
    v29[2] = 0;
    v28[0] = 0;
    v28[2] = 0;
    Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&__p, &v30, a2, v29, v28);
    LODWORD(__str.__r_.__value_.__l.__data_) = __p;
    std::string::operator=(&__str.__r_.__value_.__r.__words[1], &v33);
    v12 = v34;
    v11 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v38;
    v37 = v12;
    v38 = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&__p);
    if (v31)
    {
      sub_29A014BEC(v31);
    }

    v14 = *(a1 + 13);
    __p = v45;
    v15 = sub_29A09282C((v14 + 16), v45, &unk_29B432DD0, &__p);
    *(v15 + 14) = __str.__r_.__value_.__l.__data_;
    std::string::operator=((v15 + 8), &__str.__r_.__value_.__r.__words[1]);
    v17 = v37;
    v16 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v15[12];
    v15[11] = v17;
    v15[12] = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    *(v15 + 26) = v39;
    std::string::operator=((v15 + 14), &v40);
    v20 = v41;
    v19 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = v15[18];
    v15[17] = v20;
    v15[18] = v19;
    if (v21)
    {
      sub_29A014BEC(v21);
    }

    if (v15 + 7 != &__str)
    {
      sub_29A028554(v15 + 19, v43, &v44);
    }

    sub_29A01752C(&v43, v44);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v39);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&__str);
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(&__str, *a4, *(a4 + 8));
  }

  else
  {
    __str = *a4;
  }

  v22 = *(a5 + 23);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a5 + 8);
  }

  if (v22)
  {
    std::operator+<char>();
    v23 = v33.__r_.__value_.__s.__data_[15] >= 0 ? &__p : __p;
    v24 = v33.__r_.__value_.__s.__data_[15] >= 0 ? v33.__r_.__value_.__s.__data_[15] : v33.__r_.__value_.__r.__words[0];
    std::string::append(&__str, v23, v24);
    if (v33.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
    }
  }

  v25 = *(a1 + 13);
  __p = v45;
  v26 = sub_29A09282C((v25 + 16), v45, &unk_29B432DD0, &__p);
  __p = a3;
  v27 = sub_29A00B038(v26 + 19, a3, &unk_29B432DD0, &__p);
  std::string::operator=((v27 + 7), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }
}

void sub_29A090B60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&__p);
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  sub_29A08FFB0(&a24);
  if (*(v29 - 97) < 0)
  {
    operator delete(*(v29 - 120));
  }

  v32 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v29 - 96, v32);
  }

  else
  {
    sub_29A02D6F8(v29 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A090B40);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::getNetworkNodeParameters(Alembic::AbcMaterial::v12::OMaterialSchema *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = (a1 + 8);
  v56 = "OMaterialSchema::getNetworkNodeParameters";
  std::operator+<char>();
  v51 = 2;
  sub_29A008E78(v52, "");
  v52[3] = 0;
  v52[4] = 0;
  v6 = sub_29A01BCCC(*(a1 + 13) + 16, v53);
  if (*(a1 + 13) + 24 == v6)
  {
    Alembic::AbcMaterial::v12::OMaterialSchema::createNodeCompound(a1);
    v41 = 2;
    sub_29A008E78(&v42, "");
    v43 = 0;
    v44 = 0;
    v45 = 2;
    sub_29A008E78(&v46, "");
    v47 = 0;
    v48 = 0;
    v50 = 0uLL;
    v49 = &v50;
    v7 = *(a1 + 12);
    v35 = *(a1 + 11);
    v36 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&__p, &v35, a2, &v33, &v31);
    v41 = __p;
    std::string::operator=(&v42, &v38);
    v9 = v39;
    v8 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v44;
    v43 = v9;
    v44 = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&__p);
    if (v36)
    {
      sub_29A014BEC(v36);
    }

    v11 = *(a1 + 13);
    __p = v53;
    v12 = sub_29A09282C((v11 + 16), v53, &unk_29B432DD0, &__p);
    *(v12 + 14) = v41;
    std::string::operator=((v12 + 8), &v42);
    v14 = v43;
    v13 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v12[12];
    v12[11] = v14;
    v12[12] = v13;
    if (v15)
    {
      sub_29A014BEC(v15);
    }

    *(v12 + 26) = v45;
    std::string::operator=((v12 + 14), &v46);
    v17 = v47;
    v16 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = v12[18];
    v12[17] = v17;
    v12[18] = v16;
    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if (v12 + 7 != &v41)
    {
      sub_29A028554(v12 + 19, v49, &v50);
    }

    sub_29A01752C(&v49, v50);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v45);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v41);
  }

  if (*(v6 + 135) < 0)
  {
    if (*(v6 + 120))
    {
      goto LABEL_28;
    }
  }

  else if (*(v6 + 135))
  {
    goto LABEL_28;
  }

  if (*(v6 + 136))
  {
    *a3 = *(v6 + 104);
    v19 = a3 + 8;
    if (*(v6 + 135) < 0)
    {
      sub_29A008D14(v19, *(v6 + 112), *(v6 + 120));
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_28:
  v26 = *(v6 + 56);
  if (*(v6 + 87) < 0)
  {
    sub_29A008D14(&v27, *(v6 + 64), *(v6 + 72));
  }

  else
  {
    v27 = *(v6 + 64);
    v28 = *(v6 + 80);
  }

  v20 = *(v6 + 96);
  v29 = *(v6 + 88);
  v30 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, "params");
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&v41, &v26, &__p, &v33, &v31);
  *(v6 + 104) = v41;
  std::string::operator=((v6 + 112), &v42);
  v22 = v43;
  v21 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = *(v6 + 144);
  *(v6 + 136) = v22;
  *(v6 + 144) = v21;
  if (v23)
  {
    sub_29A014BEC(v23);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v41);
  if (v38.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v26);
  *a3 = *(v6 + 104);
  v19 = a3 + 8;
  if ((*(v6 + 135) & 0x80000000) == 0)
  {
LABEL_40:
    v24 = *(v6 + 112);
    *(v19 + 16) = *(v6 + 128);
    *v19 = v24;
    goto LABEL_42;
  }

  sub_29A008D14(v19, *(v6 + 112), *(v6 + 120));
LABEL_42:
  *(a3 + 32) = *(v6 + 136);
  v25 = *(v6 + 144);
  *(a3 + 40) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v51);
  if (v54 < 0)
  {
    operator delete(v53[0]);
  }
}

void sub_29A091068(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v31 - 168));
  if (*(v31 - 97) < 0)
  {
    operator delete(*(v31 - 120));
  }

  v34 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v31 - 96, v34);
  }

  else
  {
    sub_29A02D6F8(v31 - 96, 0);
  }

  __cxa_end_catch();
  *v30 = 2;
  sub_29A008E78((v30 + 8), "");
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  JUMPOUT(0x29A091048);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::setNetworkTerminal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1 + 8;
  v21 = "OMaterialSchema::setNetworkTerminal";
  sub_29A008E78(&__p, "target");
  sub_29A09CA00(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "shaderType");
  sub_29A09CA00(a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "nodeName");
  sub_29A09CA00(a4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v10 = *(a5 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a5 + 8);
  }

  if (v10)
  {
    std::string::append(&__p, ".");
    v11 = *(a5 + 23);
    if (v11 >= 0)
    {
      v12 = a5;
    }

    else
    {
      v12 = *a5;
    }

    if (v11 >= 0)
    {
      v13 = *(a5 + 23);
    }

    else
    {
      v13 = *(a5 + 8);
    }

    std::string::append(&__p, v12, v13);
  }

  sub_29A008E78(v16, "");
  sub_29A09C8D8(a2, a3, v16, &v18);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v14 = *(a1 + 104);
  v16[0] = &v18;
  v15 = sub_29A00B038((v14 + 64), &v18.__r_.__value_.__l.__data_, &unk_29B432DD0, v16);
  std::string::operator=((v15 + 7), &__p);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29A091380(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  v25 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a24, v25);
  }

  else
  {
    sub_29A02D6F8(&a24, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A091368);
}

void sub_29A09142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    JUMPOUT(0x29A091440);
  }

  JUMPOUT(0x29A0913C8);
}

void Alembic::AbcMaterial::v12::OMaterialSchema::setNetworkInterfaceParameterMapping(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 8;
  v8 = "OMaterialSchema::setNetworkInterfaceParameterMapping";
  sub_29A008E78(__p, "mapToNodeName");
  sub_29A09CA00(a3, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A070BA0(*(a1 + 104) + 136);
}

void sub_29A0915A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v24 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(&a22, v24);
  }

  else
  {
    sub_29A02D6F8(&a22, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A091588);
}

const void **sub_29A091654(const void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v20[4] = result;
    if (v11)
    {
      v12 = sub_29A012C48(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v13 + 24;
    v16 = v3[1] - *v3;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *v3, v16);
    v18 = *v3;
    *v3 = v17;
    v3[1] = v7;
    v19 = v3[2];
    v3[2] = v14;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    result = sub_29A01FF14(v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  v3[1] = v7;
  return result;
}

_BYTE *Alembic::AbcMaterial::v12::OMaterialSchema::getNetworkInterfaceParameters@<X0>(Alembic::AbcMaterial::v12::OMaterialSchema *this@<X0>, uint64_t a2@<X8>)
{
  v23 = this + 8;
  v24 = "OMaterialSchema::getNetworkInterfaceParameters";
  v4 = *(this + 13);
  if (*(v4 + 119) < 0)
  {
    if (!*(v4 + 104))
    {
      goto LABEL_5;
    }
  }

  else if (!*(v4 + 119))
  {
LABEL_5:
    if (*(v4 + 120))
    {
      goto LABEL_17;
    }
  }

  v5 = *(this + 6);
  v17 = *(this + 5);
  v18 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".interfaceParams");
  v14[0] = 0;
  v14[2] = 0;
  v13[0] = 0;
  v13[2] = 0;
  Alembic::Abc::v12::OCompoundProperty::OCompoundProperty(&v19, &v17, __p, v14, v13);
  v6 = *(this + 13);
  *(v6 + 88) = v19;
  std::string::operator=((v6 + 96), &v20);
  v8 = v21;
  v7 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v6 + 128);
  *(v6 + 120) = v8;
  *(v6 + 128) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v19);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  v4 = *(this + 13);
LABEL_17:
  *a2 = *(v4 + 88);
  result = (a2 + 8);
  if (*(v4 + 119) < 0)
  {
    result = sub_29A008D14(result, *(v4 + 96), *(v4 + 104));
  }

  else
  {
    v11 = *(v4 + 96);
    *(a2 + 24) = *(v4 + 112);
    *result = v11;
  }

  v12 = *(v4 + 128);
  *(a2 + 32) = *(v4 + 120);
  *(a2 + 40) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A0918EC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
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
  JUMPOUT(0x29A0918D8);
}

void *sub_29A0919AC(void *a1)
{
  *a1 = &unk_2A203E380;
  v2 = a1[14];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));
  return a1;
}

void sub_29A091A08(void *a1)
{
  *a1 = &unk_2A203E380;
  v2 = a1[14];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1));

  operator delete(a1);
}

void sub_29A091A74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A091A74(a1, *a2);
    sub_29A091A74(a1, a2[1]);
    sub_29A091AD0((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A091AD0(uint64_t a1)
{
  sub_29A01752C(a1 + 120, *(a1 + 128));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 72));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_29A091B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    sub_29A008E78(&__str, "AbcMaterial_Material_v1");
    v29 = __p;
    v13 = sub_29A00B038(&v21, __p, &unk_29B432DD0, &v29);
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

void sub_29A091DB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A091D00);
}

void sub_29A091F04(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

void *sub_29A091F40(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203E400;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A091F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = sub_29A092054(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A091FB8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A091FE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_29A092054(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A092014(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E450))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A092054(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    sub_29A0925E4(&v41, 2 * v2);
    if (*(a1 + 40) != a1 + 48)
    {
      sub_29A070BA0(&v41);
    }

    v3 = *(a1 + 8);
    v38 = *a1;
    v39 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".shaderNames");
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    sub_29A045248(v40, &v38, __p, &v36, &v34, &v32, &v30);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (v39)
    {
      sub_29A014BEC(v39);
    }

    sub_29A0926A0(__p, &v41);
    Alembic::Abc::v12::OArrayProperty::set(v40);
    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v40);
    v40[0] = &v41;
    sub_29A012C90(v4);
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    sub_29A0925E4(&v41, 2 * v5);
    if (*(a1 + 64) != a1 + 72)
    {
      sub_29A070BA0(&v41);
    }

    v6 = *(a1 + 8);
    v25 = *a1;
    v26 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".terminals");
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    sub_29A045248(v40, &v25, __p, &v36, &v34, &v32, &v30);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (v26)
    {
      sub_29A014BEC(v26);
    }

    sub_29A0926A0(__p, &v41);
    Alembic::Abc::v12::OArrayProperty::set(v40);
    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v40);
    v40[0] = &v41;
    sub_29A012C90(v7);
  }

  v8 = *(a1 + 16);
  if (v8 != (a1 + 24))
  {
    do
    {
      v9 = v8[21];
      if (v9)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        sub_29A0925E4(&v41, 2 * v9);
        if (v8[19] != v8 + 20)
        {
          sub_29A070BA0(&v41);
        }

        v20 = *(v8 + 14);
        if (*(v8 + 87) < 0)
        {
          sub_29A008D14(&v21, v8[8], v8[9]);
        }

        else
        {
          v21 = *(v8 + 4);
          v22 = v8[10];
        }

        v10 = v8[12];
        v23 = v8[11];
        v24 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        sub_29A008E78(__p, ".connections");
        v36 = 0;
        v37 = 0;
        v34 = 0;
        v35 = 0;
        v32 = 0;
        v33 = 0;
        sub_29A092750(v40, &v20, __p, &v36, &v34, &v32);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p[0]);
        }

        Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v20);
        sub_29A0926A0(__p, &v41);
        Alembic::Abc::v12::OArrayProperty::set(v40);
        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v40);
        v40[0] = &v41;
        sub_29A012C90(v11);
      }

      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v8 = v13;
    }

    while (v13 != (a1 + 24));
  }

  if (*(a1 + 136) != *(a1 + 144))
  {
    v15 = *(a1 + 8);
    v18 = *a1;
    v19 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".interface");
    LODWORD(v41) = 0;
    LODWORD(v42) = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    sub_29A045248(v40, &v18, __p, &v41, &v36, &v34, &v32);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (v19)
    {
      sub_29A014BEC(v19);
    }

    sub_29A0926A0(__p, (a1 + 136));
    Alembic::Abc::v12::OArrayProperty::set(v40);
    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v40);
  }

  v40[0] = (a1 + 136);
  sub_29A012C90(v40);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 88));
  sub_29A01752C(a1 + 64, *(a1 + 72));
  sub_29A01752C(a1 + 40, *(a1 + 48));
  sub_29A091A74(a1 + 16, *(a1 + 24));
  v16 = *(a1 + 8);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  return a1;
}

const void **sub_29A0925E4(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v12[4] = result;
    v4 = sub_29A012C48(result, a2);
    v5 = &v4[v3];
    v7 = &v4[24 * v6];
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
    return sub_29A01FF14(v12);
  }

  return result;
}

void *sub_29A0926A0(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_29A0161D0(&__p, 1uLL, &v5);
  *a1 = v3;
  a1[1] = 0x10000000CLL;
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

void sub_29A092734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A092750(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_29A045320(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A09280C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A09282C(char *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A0928C4(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

char *sub_29A0928C4@<X0>(char *a1@<X0>, __int128 **a2@<X2>, char **a3@<X8>)
{
  v6 = operator new(0xB0uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A092944(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

char *sub_29A092944(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = 0u;
  *(__dst + 17) = 0;
  *(__dst + 104) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 6) = 2;
  sub_29A008E78(__dst + 4, "");
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  *(__dst + 18) = 2;
  sub_29A008E78(__dst + 10, "");
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  *(__dst + 17) = 0;
  *(__dst + 16) = 0;
  *(__dst + 15) = __dst + 128;
  return __dst;
}

void sub_29A0929FC(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_29A092A28(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A091AD0(v2 + 32);
    }

    operator delete(v2);
  }
}

void Alembic::AbcMaterial::v12::IMaterialSchema::init(Alembic::AbcMaterial::v12::IMaterialSchema *this)
{
  v2 = this + 8;
  v76 = this + 8;
  v77 = "IMaterialSchema::init()";
  v4 = *(this + 5);
  v3 = *(this + 6);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&v72, ".nodes");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v2);
  v6 = PropertyHeader;
  if (v73.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v72);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  else if (!PropertyHeader)
  {
    goto LABEL_17;
  }

  v67 = v4;
  v68 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v69, &v67, &v65, &v63);
  sub_29A008E78(&__p, ".nodes");
  v58 = 0;
  v59 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v72, &v69, &__p, &v58);
  *(this + 50) = v72;
  std::string::operator=((this + 208), &v73);
  v8 = v74;
  v7 = v75;
  if (v75)
  {
    atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(this + 30);
  *(this + 29) = v8;
  *(this + 30) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v72);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v69);
  if (v68)
  {
    sub_29A014BEC(v68);
  }

LABEL_17:
  sub_29A008E78(&v72, ".interfaceParams");
  v10 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v2);
  v11 = v10;
  if (v73.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v72);
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else if (!v10)
  {
    goto LABEL_31;
  }

  v56 = v4;
  v57 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v69, &v56, &v65, &v63);
  sub_29A008E78(&__p, ".interfaceParams");
  v58 = 0;
  v59 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v72, &v69, &__p, &v58);
  *(this + 38) = v72;
  std::string::operator=((this + 160), &v73);
  v13 = v74;
  v12 = v75;
  if (v75)
  {
    atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(this + 24);
  *(this + 23) = v13;
  *(this + 24) = v12;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v72);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v69);
  if (v57)
  {
    sub_29A014BEC(v57);
  }

LABEL_31:
  sub_29A008E78(&v72, ".terminals");
  v15 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v2);
  v16 = v15;
  if (v73.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v72);
    if (!v16)
    {
      goto LABEL_53;
    }
  }

  else if (!v15)
  {
    goto LABEL_53;
  }

  v54 = v4;
  v55 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v69, &v54, &v65, &v63);
  sub_29A008E78(&__p, ".terminals");
  v58 = 0;
  v59 = 0;
  v52 = 0;
  v53 = 0;
  sub_29A0427FC(&v72, &v69, &__p, &v58, &v52);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v69);
  if (v55)
  {
    sub_29A014BEC(v55);
  }

  __p = 0;
  v61 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 2;
  sub_29A041D34(&v72, &__p, &v69);
  v17 = *(__p + 2);
  v18 = *(__p + 3) - v17;
  if (v18)
  {
    v19 = v18 >> 3;
    v20 = v19 <= 1 ? 1 : v19;
    v21 = 1;
    do
    {
      v22 = *v17++;
      v21 *= v22;
      --v20;
    }

    while (v20);
    if (v21 >= 2)
    {
      v23 = 0;
      v24 = v21 >> 1;
      do
      {
        v25 = *__p + v23;
        v69 = v25;
        v26 = sub_29A00B038(this + 10, v25, &unk_29B432F2A, &v69);
        std::string::operator=((v26 + 7), (v25 + 24));
        v23 += 48;
        --v24;
      }

      while (v24);
    }
  }

  if (v61)
  {
    sub_29A014BEC(v61);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v72);
LABEL_53:
  sub_29A008E78(&v72, ".shaderNames");
  v27 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v2);
  v28 = v27;
  if (v73.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v72);
    if (!v28)
    {
      goto LABEL_75;
    }
  }

  else if (!v27)
  {
    goto LABEL_75;
  }

  v50 = v4;
  v51 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v69, &v50, &v65, &v63);
  sub_29A008E78(&__p, ".shaderNames");
  v58 = 0;
  v59 = 0;
  v52 = 0;
  v53 = 0;
  sub_29A0427FC(&v72, &v69, &__p, &v58, &v52);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v69);
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  __p = 0;
  v61 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 2;
  sub_29A041D34(&v72, &__p, &v69);
  v29 = *(__p + 2);
  v30 = *(__p + 3) - v29;
  if (v30)
  {
    v31 = v30 >> 3;
    v32 = v31 <= 1 ? 1 : v31;
    v33 = 1;
    do
    {
      v34 = *v29++;
      v33 *= v34;
      --v32;
    }

    while (v32);
    if (v33 >= 2)
    {
      v35 = 0;
      v36 = v33 >> 1;
      do
      {
        v37 = *__p + v35;
        v69 = v37;
        v38 = sub_29A00B038(this + 7, v37, &unk_29B432F2A, &v69);
        std::string::operator=((v38 + 7), (v37 + 24));
        v35 += 48;
        --v36;
      }

      while (v36);
    }
  }

  if (v61)
  {
    sub_29A014BEC(v61);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v72);
LABEL_75:
  sub_29A008E78(&v72, ".interface");
  v39 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v2);
  v40 = v39;
  if (v73.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v72);
    if (!v40)
    {
LABEL_77:
      if (!v3)
      {
        return;
      }

LABEL_98:
      sub_29A014BEC(v3);
      return;
    }
  }

  else if (!v39)
  {
    goto LABEL_77;
  }

  v48 = v4;
  v49 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v69, &v48, &v65, &v63);
  sub_29A008E78(&__p, ".interface");
  v58 = 0;
  v59 = 0;
  v52 = 0;
  v53 = 0;
  sub_29A0427FC(&v72, &v69, &__p, &v58, &v52);
  if (v62 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v69);
  if (v49)
  {
    sub_29A014BEC(v49);
  }

  __p = 0;
  v61 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 2;
  sub_29A041D34(&v72, &__p, &v69);
  v41 = *(__p + 2);
  v42 = *(__p + 3) - v41;
  if (v42)
  {
    v43 = v42 >> 3;
    if (v43 <= 1)
    {
      v43 = 1;
    }

    v44 = 1;
    do
    {
      v45 = *v41++;
      v44 *= v45;
      --v43;
    }

    while (v43);
  }

  else
  {
    v44 = 0;
  }

  sub_29A0925E4(this + 16, v44 >> 1);
  if (v44 >= 2)
  {
    v46 = *__p;
    v69 = v46;
    v47 = sub_29A00B038(this + 13, v46, &unk_29B432F2A, &v69);
    std::string::operator=((v47 + 7), (v46 + 24));
    sub_29A070BA0(this + 128);
  }

  if (v61)
  {
    sub_29A014BEC(v61);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v72);
  if (v3)
  {
    goto LABEL_98;
  }
}

void sub_29A0931DC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, std::__shared_weak_count *a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a23)
  {
    sub_29A014BEC(a23);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((v36 - 144));
  if (v35)
  {
    sub_29A014BEC(v35);
  }

  v39 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v40 = v39;
    sub_29A02F0A0(v34);
    sub_29A02D768(v36 - 96, v40);
  }

  else
  {
    sub_29A02F0A0(v34);
    sub_29A02D6F8(v36 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0931BCLL);
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getTargetNames(uint64_t a1, uint64_t a2)
{
  v14 = a1 + 8;
  v15 = "IMaterial::getTargetNames";
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = &v12;
  v8 = 0;
  v9 = 0;
  v3 = *(a1 + 56);
  v4 = (a1 + 64);
  if (v3 != (a1 + 64))
  {
    do
    {
      sub_29A09CB4C((v3 + 4), &v8, 0);
      if (v9 - v8 == 48)
      {
        sub_29A095658(&v11, v8, v8);
      }

      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  sub_29A012CE4(a2);
  sub_29A0925E4(a2, v13);
  sub_29A0935F4(a2, *(a2 + 8), v11, &v12);
  v16 = &v8;
  sub_29A012C90(&v16);
  sub_29A019EE8(&v11, v12);
}

void sub_29A093560(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, char *);
  v16 = va_arg(va2, void);
  *(v4 - 56) = va;
  sub_29A012C90((v4 - 56));
  sub_29A019EE8(va1, v15);
  v7 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v8 = v7;
    sub_29A02F0A0(v3);
    sub_29A02D768(va2, v8);
  }

  else
  {
    sub_29A02F0A0(v3);
    sub_29A02D6F8(va2, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A093548);
}

std::string *sub_29A0935F4(char **a1, std::string *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a4);
  }

  return sub_29A095778(a1, a2, a3, a4, v4);
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getShaderTypesForTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1 + 8;
  v24 = "IMaterialSchema::getShaderTypesForTarget";
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = &v21;
  v17 = 0;
  v18 = 0;
  v4 = *(a1 + 56);
  v5 = (a1 + 64);
  if (v4 != (a1 + 64))
  {
    do
    {
      sub_29A09CB4C((v4 + 4), &v17, 0);
      v7 = v17;
      if (v18 - v17 == 48)
      {
        v8 = *(v17 + 23);
        if (v8 >= 0)
        {
          v9 = *(v17 + 23);
        }

        else
        {
          v9 = v17[1];
        }

        v10 = *(a2 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(a2 + 8);
        }

        if (v9 == v10)
        {
          v12 = v8 >= 0 ? v17 : *v17;
          v13 = v11 >= 0 ? a2 : *a2;
          if (!memcmp(v12, v13, v9))
          {
            sub_29A095658(&v20, v7 + 3, (v7 + 3));
          }
        }
      }

      v14 = v4[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v4[2];
          v16 = *v15 == v4;
          v4 = v15;
        }

        while (!v16);
      }

      v4 = v15;
    }

    while (v15 != v5);
  }

  sub_29A012CE4(a3);
  sub_29A0925E4(a3, v22);
  sub_29A0935F4(a3, *(a3 + 8), v20, &v21);
  v25 = &v17;
  sub_29A012C90(&v25);
  sub_29A019EE8(&v20, v21);
}

void sub_29A0937C0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char *a14, uint64_t a15, char a16, uint64_t a17, void **a18)
{
  a18 = &a10;
  sub_29A012C90(&a18);
  sub_29A019EE8(&a13, a14);
  v21 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v22 = v21;
    sub_29A02F0A0(v18);
    sub_29A02D768(&a16, v22);
  }

  else
  {
    sub_29A02F0A0(v18);
    sub_29A02D6F8(&a16, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0937A4);
}

uint64_t Alembic::AbcMaterial::v12::IMaterialSchema::getShader(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v13 = a1 + 8;
  v14 = "IMaterialSchema::getShader";
  sub_29A008E78(__p, "");
  sub_29A09C8D8(a2, a3, __p, &v12);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_29A01BCCC(a1 + 56, &v12.__r_.__value_.__l.__data_);
  if (a1 + 64 == v8)
  {
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  else
  {
    std::string::operator=(a4, (v8 + 56));
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    return 1;
  }
}

void sub_29A09392C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v24 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v25 = v24;
    sub_29A02F0A0(v21);
    sub_29A02D768(&a21, v25);
  }

  else
  {
    sub_29A02F0A0(v21);
    sub_29A02D6F8(&a21, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A093910);
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getShaderParameters(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 2;
  sub_29A008E78((a4 + 8), "");
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  v8 = a1 + 8;
  v19 = v8;
  v20 = "IMaterialSchema::getShaderParameters";
  sub_29A008E78(&__p, "params");
  sub_29A09C8D8(a2, a3, &__p, &v18);
  if (v15.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(__p);
  }

  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v8);
  if (PropertyHeader && !*(PropertyHeader + 24))
  {
    v13[0] = 0;
    v13[2] = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&__p, v8, &v18, v13);
    *a4 = __p;
    std::string::operator=((a4 + 8), &v15);
    v11 = v16;
    v10 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a4 + 40);
    *(a4 + 32) = v11;
    *(a4 + 40) = v10;
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&__p);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_29A093AF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&a12);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  v30 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v31 = v30;
    sub_29A02F0A0(v26);
    sub_29A02D768(v27 - 48, v31);
  }

  else
  {
    sub_29A02F0A0(v26);
    sub_29A02D6F8(v27 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A093AE0);
}

uint64_t Alembic::AbcMaterial::v12::IMaterialSchema::getNumNetworkNodes(Alembic::AbcMaterial::v12::IMaterialSchema *this)
{
  if (*(this + 231) < 0)
  {
    if (*(this + 27))
    {
      return 0;
    }
  }

  else if (*(this + 231))
  {
    return 0;
  }

  if (*(this + 29))
  {
    return Alembic::Abc::v12::ICompoundProperty::getNumProperties((this + 200));
  }

  return 0;
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkNodeNames(uint64_t a1, void ***a2)
{
  sub_29A012CE4(a2);
  if (*(a1 + 231) < 0)
  {
    if (*(a1 + 216))
    {
      return;
    }
  }

  else if (*(a1 + 231))
  {
    return;
  }

  if (*(a1 + 232))
  {
    NumProperties = Alembic::Abc::v12::ICompoundProperty::getNumProperties((a1 + 200));
    sub_29A0925E4(a2, NumProperties);
    v5 = Alembic::Abc::v12::ICompoundProperty::getNumProperties((a1 + 200));
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        if (!*(Alembic::Abc::v12::ICompoundProperty::getPropertyHeader((a1 + 200)) + 24))
        {
          sub_29A070BA0(a2);
        }
      }
    }
  }
}

void sub_29A093D60(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = v11;
    sub_29A02F0A0(v9);
    sub_29A02D768(&a9, v12);
  }

  else
  {
    sub_29A02F0A0(v9);
    sub_29A02D6F8(&a9, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A093D48);
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkNode(Alembic::AbcMaterial::v12::IMaterialSchema *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = this + 8;
  v10 = "IMateriaSchema::getNetworkNode";
  if ((*(this + 231) & 0x80000000) == 0)
  {
    if (!*(this + 231))
    {
      goto LABEL_5;
    }

LABEL_8:
    *a3 = 2;
    sub_29A008E78((a3 + 8), "");
    *(a3 + 88) = 0;
    v6 = a3 + 88;
    *(v6 - 32) = 0;
    *(v6 - 24) = 0;
    *(v6 + 8) = 0;
    *(v6 - 56) = 0;
    *(v6 - 48) = 0;
    *(v6 - 40) = 0;
    *(v6 - 16) = 0;
    *(v6 - 8) = v6;
    return;
  }

  if (*(this + 27))
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!*(this + 29))
  {
    goto LABEL_8;
  }

  if (Alembic::Abc::v12::ICompoundProperty::getNumProperties((this + 200)) <= a2)
  {
    goto LABEL_8;
  }

  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader((this + 200));
  if (*(PropertyHeader + 24))
  {
    goto LABEL_8;
  }

  v7[0] = 0;
  v7[2] = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v8, this + 200, PropertyHeader, v7);
  Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::NetworkNode(a3, v8);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v8);
}

void sub_29A093EDC(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(va);
  v9 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v10 = v9;
    sub_29A02F0A0(v5);
    sub_29A02D768(v6 - 48, v10);
  }

  else
  {
    sub_29A02F0A0(v5);
    sub_29A02D6F8(v6 - 48, 0);
  }

  __cxa_end_catch();
  *v4 = 2;
  sub_29A008E78((v4 + 8), "");
  JUMPOUT(0x29A093E80);
}

Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode *Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::NetworkNode(Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode *this)
{
  *this = 2;
  sub_29A008E78(this + 1, "");
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 11) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 9) = 0;
  *(this + 10) = this + 88;
  return this;
}

{
  *this = 2;
  sub_29A008E78(this + 1, "");
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 11) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 9) = 0;
  *(this + 10) = this + 88;
  return this;
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkNode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 200);
  if (*(a1 + 231) < 0)
  {
    sub_29A008D14(&v8, *(a1 + 208), *(a1 + 216));
  }

  else
  {
    v8 = *(a1 + 208);
    v9 = *(a1 + 224);
  }

  v6 = *(a1 + 240);
  v10 = *(a1 + 232);
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::NetworkNode(a3, &v7, a2);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v7);
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkTerminalTargetNames(uint64_t a1, uint64_t a2)
{
  v16 = a1 + 8;
  v17 = "IMateriaSchema::getNetworkTerminalTargetNames";
  sub_29A012CE4(a2);
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = &v14;
  v10 = 0;
  v11 = 0;
  v4 = *(a1 + 80);
  v5 = (a1 + 88);
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      sub_29A09CB4C((v4 + 4), &v10, 0);
      if (v11 - v10 == 48)
      {
        sub_29A095658(&v13, v10, v10);
      }

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

    while (v7 != v5);
    v9 = v15;
  }

  sub_29A0925E4(a2, v9);
  sub_29A0935F4(a2, *(a2 + 8), v13, &v14);
  v18 = &v10;
  sub_29A012C90(&v18);
  sub_29A019EE8(&v13, v14);
}

void sub_29A0941AC(void *a1, int a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, char *);
  v16 = va_arg(va2, void);
  *(v4 - 56) = va;
  sub_29A012C90((v4 - 56));
  sub_29A019EE8(va1, v15);
  v7 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v8 = v7;
    sub_29A02F0A0(v3);
    sub_29A02D768(va2, v8);
  }

  else
  {
    sub_29A02F0A0(v3);
    sub_29A02D6F8(va2, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A094194);
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkTerminalShaderTypesForTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1 + 8;
  v26 = "IMateriaSchema::getNetworkTerminalShaderTypesForTarget";
  sub_29A012CE4(a3);
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = &v23;
  v19 = 0;
  v20 = 0;
  v6 = *(a1 + 80);
  v7 = (a1 + 88);
  if (v6 == v7)
  {
    v18 = 0;
  }

  else
  {
    do
    {
      sub_29A09CB4C((v6 + 4), &v19, 0);
      v8 = v19;
      if (v20 - v19 == 48)
      {
        v9 = *(v19 + 23);
        if (v9 >= 0)
        {
          v10 = *(v19 + 23);
        }

        else
        {
          v10 = v19[1];
        }

        v11 = *(a2 + 23);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(a2 + 8);
        }

        if (v10 == v11)
        {
          v13 = v9 >= 0 ? v19 : *v19;
          v14 = v12 >= 0 ? a2 : *a2;
          if (!memcmp(v13, v14, v10))
          {
            sub_29A095658(&v22, v8 + 3, (v8 + 3));
          }
        }
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v7);
    v18 = v24;
  }

  sub_29A0925E4(a3, v18);
  sub_29A0935F4(a3, *(a3 + 8), v22, &v23);
  v27 = &v19;
  sub_29A012C90(&v27);
  sub_29A019EE8(&v22, v23);
}

void sub_29A0943C0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, char *a14, uint64_t a15, char a16, uint64_t a17, void **a18)
{
  a18 = &a10;
  sub_29A012C90(&a18);
  sub_29A019EE8(&a13, a14);
  v21 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v22 = v21;
    sub_29A02F0A0(v18);
    sub_29A02D768(&a16, v22);
  }

  else
  {
    sub_29A02F0A0(v18);
    sub_29A02D6F8(&a16, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0943A4);
}

BOOL Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkTerminal(uint64_t a1, const void **a2, uint64_t a3, std::string *a4, uint64_t a5)
{
  v27 = a1 + 8;
  v28 = "IMateriaSchema::getNetworkTerminal";
  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = &v24;
  sub_29A022DE0(&v24, v10 + 1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v24.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 46;
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  v16 = std::string::append(&v24, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = sub_29A01BCCC(a1 + 80, __p);
  v19 = a1 + 88 == v18;
  v20 = a1 + 88 != v18;
  if (!v19)
  {
    memset(&v24, 0, sizeof(v24));
    sub_29A09CB4C(v18 + 56, &v24, 1);
    std::string::operator=(a4, v24.__r_.__value_.__l.__data_);
    if (0xAAAAAAAAAAAAAAABLL * ((v24.__r_.__value_.__l.__size_ - v24.__r_.__value_.__r.__words[0]) >> 3) < 2)
    {
      sub_29A008E78(&v22, "");
    }

    else if (*(v24.__r_.__value_.__r.__words[0] + 47) < 0)
    {
      sub_29A008D14(&v22, *(v24.__r_.__value_.__r.__words[0] + 24), *(v24.__r_.__value_.__r.__words[0] + 32));
    }

    else
    {
      v22 = *(v24.__r_.__value_.__r.__words[0] + 24);
      v23 = *(v24.__r_.__value_.__r.__words[0] + 40);
    }

    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = v22;
    *(a5 + 16) = v23;
    *&v22 = &v24;
    sub_29A012C90(&v22);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  return v20;
}

void sub_29A09463C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  a9 = &a12;
  sub_29A012C90(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v29 = v28;
    sub_29A02F0A0(v25);
    sub_29A02D768(&a25, v29);
  }

  else
  {
    sub_29A02F0A0(v25);
    sub_29A02D6F8(&a25, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A09461CLL);
}

BOOL Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkInterfaceParameterMapping(uint64_t a1, unint64_t a2, std::string *this, std::string *a4, uint64_t a5)
{
  v5 = *(a1 + 128);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - v5) >> 3) <= a2)
  {
    return 0;
  }

  std::string::operator=(this, (v5 + 24 * a2));
  return Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkInterfaceParameterMapping(a1, &this->__r_.__value_.__l.__data_, a4, a5);
}

BOOL Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkInterfaceParameterMapping(uint64_t a1, const void **a2, std::string *a3, uint64_t a4)
{
  v15 = a1 + 8;
  v16 = "IMateriaSchema::getNetworkInterfaceParameterMapping";
  v7 = sub_29A01BCCC(a1 + 104, a2);
  v8 = a1 + 112 == v7;
  v9 = a1 + 112 != v7;
  if (!v8)
  {
    __str = 0;
    v13 = 0;
    v14 = 0;
    sub_29A09CB4C(v7 + 56, &__str, 1);
    std::string::operator=(a3, __str);
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - __str) >> 3) < 2)
    {
      sub_29A008E78(&v11, "");
    }

    else if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&v11, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = __str[1];
    }

    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v11;
    v11.__r_.__value_.__r.__words[0] = &__str;
    sub_29A012C90(&v11);
  }

  return v9;
}

void sub_29A094938(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  a9 = &a12;
  sub_29A012C90(&a9);
  v18 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v19 = v18;
    sub_29A02F0A0(v15);
    sub_29A02D768(&a15, v19);
  }

  else
  {
    sub_29A02F0A0(v15);
    sub_29A02D6F8(&a15, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A094920);
}

void Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkInterfaceParameterMappingNames(uint64_t a1, uint64_t a2)
{
  if (a1 + 128 != a2)
  {
    sub_29A095E3C(a2, *(a1 + 128), *(a1 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 3));
  }
}

_BYTE *Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkInterfaceParameters@<X0>(Alembic::AbcMaterial::v12::IMaterialSchema *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 38);
  result = (a2 + 8);
  if (*(this + 183) < 0)
  {
    result = sub_29A008D14(result, *(this + 20), *(this + 21));
  }

  else
  {
    *result = *(this + 10);
    *(a2 + 24) = *(this + 22);
  }

  v5 = *(this + 24);
  *(a2 + 32) = *(this + 23);
  *(a2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::NetworkNode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_29A008D14(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  return a1;
}

uint64_t Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::NetworkNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 2;
  v6 = (a1 + 8);
  sub_29A008E78((a1 + 8), "");
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 31) < 0)
  {
    if (*(a2 + 16))
    {
      return a1;
    }
  }

  else if (*(a2 + 31))
  {
    return a1;
  }

  if (*(a2 + 32))
  {
    PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(a2);
    if (PropertyHeader)
    {
      if (!*(PropertyHeader + 24))
      {
        v12[0] = 0;
        v12[2] = 0;
        Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v13, a2, a3, v12);
        *a1 = v13;
        std::string::operator=(v6, &v14);
        v9 = v15;
        v8 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        v10 = *(a1 + 40);
        *(a1 + 32) = v9;
        *(a1 + 40) = v8;
        if (v10)
        {
          sub_29A014BEC(v10);
        }

        Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v13);
      }
    }
  }

  return a1;
}

void sub_29A094C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(va);
  sub_29A01752C(v4, *(v3 + 11));
  sub_29A012C90(va);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v3);
  _Unwind_Resume(a1);
}

BOOL Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::valid(Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode *this)
{
  if (*(this + 31) < 0)
  {
    if (*(this + 2))
    {
      return 0;
    }
  }

  else if (*(this + 31))
  {
    return 0;
  }

  return *(this + 4) != 0;
}

void **Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getName@<X0>(Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    if (*(this + 2))
    {
      goto LABEL_8;
    }
  }

  else if (*(this + 31))
  {
    goto LABEL_8;
  }

  if (*(this + 4))
  {
    result = sub_29A0960DC(this);
    if (*(result + 23) < 0)
    {
      v4 = *result;
      v5 = result[1];

      return sub_29A008D14(a2, v4, v5);
    }

    else
    {
      *a2 = *result;
      *(a2 + 16) = result[2];
    }

    return result;
  }

LABEL_8:

  return sub_29A008E78(a2, "");
}

uint64_t Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getTarget(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16))
    {
      return 0;
    }
  }

  else if (*(a1 + 31))
  {
    return 0;
  }

  if (!*(a1 + 32))
  {
    return 0;
  }

  sub_29A008E78(__p, "target");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(a1);
  v5 = PropertyHeader;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!PropertyHeader)
  {
    return 0;
  }

LABEL_10:
  if (*(v5 + 24) != 1)
  {
    return 0;
  }

  result = 0;
  if (*(v5 + 56) == 12 && *(v5 + 60) == 1)
  {
    result = sub_29A032984(v5 + 32, 0);
    if (result)
    {
      LODWORD(v10) = 0;
      DWORD2(v10) = 0;
      LODWORD(v7) = 0;
      LODWORD(v8) = 0;
      sub_29A0323F8(__p, a1, v5, &v10, &v7);
      v7 = 0;
      v8 = 0;
      v9 = 2;
      sub_29A0323A4(__p, &v7, &v10);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v10;
      *(a2 + 16) = v11;
      Alembic::Abc::v12::IScalarProperty::~IScalarProperty(__p);
      return 1;
    }
  }

  return result;
}

uint64_t Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getNodeType(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16))
    {
      return 0;
    }
  }

  else if (*(a1 + 31))
  {
    return 0;
  }

  if (!*(a1 + 32))
  {
    return 0;
  }

  sub_29A008E78(__p, "type");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(a1);
  v5 = PropertyHeader;
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!PropertyHeader)
  {
    return 0;
  }

LABEL_10:
  if (*(v5 + 24) != 1)
  {
    return 0;
  }

  result = 0;
  if (*(v5 + 56) == 12 && *(v5 + 60) == 1)
  {
    result = sub_29A032984(v5 + 32, 0);
    if (result)
    {
      LODWORD(v10) = 0;
      DWORD2(v10) = 0;
      LODWORD(v7) = 0;
      LODWORD(v8) = 0;
      sub_29A0323F8(__p, a1, v5, &v10, &v7);
      v7 = 0;
      v8 = 0;
      v9 = 2;
      sub_29A0323A4(__p, &v7, &v10);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v10;
      *(a2 + 16) = v11;
      Alembic::Abc::v12::IScalarProperty::~IScalarProperty(__p);
      return 1;
    }
  }

  return result;
}

void Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getParameters(Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 2;
  sub_29A008E78((a2 + 8), "");
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (*(this + 31) < 0)
  {
    if (*(this + 2))
    {
      return;
    }
  }

  else if (*(this + 31))
  {
    return;
  }

  if (*(this + 4))
  {
    sub_29A008E78(&__p, "params");
    PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this);
    v5 = PropertyHeader;
    if (v13.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__p);
      if (!v5)
      {
        return;
      }
    }

    else if (!PropertyHeader)
    {
      return;
    }

    if (!*(v5 + 24))
    {
      sub_29A008E78(v10, "params");
      v9[0] = 0;
      v9[2] = 0;
      Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&__p, this, v10, v9);
      *a2 = __p;
      std::string::operator=((a2 + 8), &v13);
      v7 = v14;
      v6 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a2 + 40);
      *(a2 + 32) = v7;
      *(a2 + 40) = v6;
      if (v8)
      {
        sub_29A014BEC(v8);
      }

      Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&__p);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }
  }
}

void sub_29A09518C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v23);
  _Unwind_Resume(a1);
}

unint64_t Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getNumConnections(Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode *this)
{
  if ((*(this + 48) & 1) == 0)
  {
    sub_29A008E78(__p, ".connections");
    PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(this);
    v3 = PropertyHeader;
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (!v3)
      {
LABEL_20:
        *(this + 48) = 1;
        return 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3);
      }
    }

    else if (!PropertyHeader)
    {
      goto LABEL_20;
    }

    sub_29A008E78(v15, ".connections");
    LODWORD(v13) = 0;
    LODWORD(v14) = 0;
    v12[0] = 0;
    v12[2] = 0;
    sub_29A0427FC(__p, this, v15, &v13, v12);
    if (v17 < 0)
    {
      operator delete(v15[0]);
    }

    v13 = 0;
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    v16 = 2;
    sub_29A041D34(__p, &v13, v15);
    v4 = *(v13 + 16);
    v5 = *(v13 + 24) - v4;
    if (v5)
    {
      v6 = v5 >> 3;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      v7 = 1;
      do
      {
        v8 = *v4++;
        v7 *= v8;
        --v6;
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    sub_29A0925E4(this + 7, v7 >> 1);
    if (v7 >= 2)
    {
      v9 = *v13;
      v15[0] = v9;
      v10 = sub_29A00B038(this + 10, &v9->__r_.__value_.__l.__data_, &unk_29B432F2A, v15);
      std::string::operator=((v10 + 7), v9 + 1);
      sub_29A070BA0(this + 56);
    }

    if (v14)
    {
      sub_29A014BEC(v14);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(__p);
    goto LABEL_20;
  }

  return 0xAAAAAAAAAAAAAAABLL * ((*(this + 8) - *(this + 7)) >> 3);
}

void sub_29A0953A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&a20);
  _Unwind_Resume(a1);
}

void Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::splitConnectionValue(uint64_t a1, uint64_t a2, std::string *a3, uint64_t a4)
{
  __str = 0;
  v8 = 0;
  v9 = 0;
  sub_29A09CB4C(a2, &__str, 1);
  std::string::operator=(a3, __str);
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - __str) >> 3) < 2)
  {
    sub_29A008E78(&v6, "");
  }

  else if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&v6, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = __str[1];
  }

  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v6;
  v6.__r_.__value_.__r.__words[0] = &__str;
  sub_29A012C90(&v6);
}

void sub_29A0954D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  sub_29A012C90(&a9);
  _Unwind_Resume(a1);
}

BOOL Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getConnection(Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode *a1, unint64_t a2, std::string *a3, std::string *a4, uint64_t a5)
{
  if (Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getNumConnections(a1) <= a2)
  {
    return 0;
  }

  std::string::operator=(a3, (*(a1 + 7) + 24 * a2));

  return Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getConnection(a1, &a3->__r_.__value_.__l.__data_, a4, a5);
}

BOOL Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getConnection(Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode *a1, const void **a2, std::string *a3, uint64_t a4)
{
  Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getNumConnections(a1);
  v8 = sub_29A01BCCC(a1 + 80, a2);
  v9 = v8;
  v10 = a1 + 88;
  if (v10 != v8)
  {
    if (*(v8 + 79) < 0)
    {
      v8 = sub_29A008D14(__p, *(v8 + 56), *(v8 + 64));
    }

    else
    {
      *__p = *(v8 + 56);
      v13 = *(v8 + 72);
    }

    Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::splitConnectionValue(v8, __p, a3, a4);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v10 != v9;
}

void sub_29A09563C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A095658(uint64_t **a1, const void **a2, uint64_t a3)
{
  v5 = sub_29A00B0D0(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29A0956D8(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

_BYTE *sub_29A0956D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x38uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *a2, *(a2 + 8));
  }

  else
  {
    *(result + 2) = *a2;
    *(result + 6) = *(a2 + 16);
  }

  *(a3 + 16) = 1;
  return result;
}

void sub_29A09575C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

std::string *sub_29A095778(char **a1, std::string *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * (&v9[-v10] >> 3)) >= a5)
    {
      v18 = v10 - a2;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3);
      if (v19 >= a5)
      {
        sub_29A095A18(a1, v5, a1[1], &v5[a5]);
        std::string::operator=(v5, (v7 + 4));
        if (v6 != 1)
        {
          v22 = v5;
          do
          {
            v23 = v7[1];
            if (v23)
            {
              do
              {
                v24 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v24 = v7[2];
                v25 = *v24 == v7;
                v7 = v24;
              }

              while (!v25);
            }

            std::string::operator=(++v22, (v24 + 4));
            v7 = v24;
          }

          while (v6-- > 2);
        }
      }

      else
      {
        *v35 = a3;
        sub_29A095B38(v35, v19);
        v21 = *v35;
        a1[1] = sub_29A095BC4(a1, *v35, a4, a1[1]);
        if (v18 >= 1)
        {
          sub_29A095A18(a1, v5, v10, &v5[v6]);
          sub_29A095DB0(v35, v7, v21, v5);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_29A00C9A4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
      v38 = a1;
      if (v15)
      {
        v17 = sub_29A012C48(a1, v15);
      }

      else
      {
        v17 = 0;
      }

      *v35 = v17;
      v36 = &v17[24 * v16];
      *&v37 = v36;
      *(&v37 + 1) = &v17[24 * v15];
      sub_29A095A88(v35, v7, v6);
      v27 = v36;
      memcpy(v37, v5, a1[1] - v5);
      v28 = *a1;
      v29 = v36;
      *&v37 = v37 + a1[1] - v5;
      a1[1] = v5;
      v30 = v5 - v28;
      v31 = &v29[-(v5 - v28)];
      memcpy(v31, v28, v30);
      v32 = *a1;
      *a1 = v31;
      v33 = a1[2];
      *(a1 + 1) = v37;
      *&v37 = v32;
      *(&v37 + 1) = v33;
      *v35 = v32;
      v36 = v32;
      sub_29A01FF14(v35);
      return v27;
    }
  }

  return v5;
}

uint64_t sub_29A095A18(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_29A095D30(&v12, a2, v7, v6);
}

void *sub_29A095A88(void *result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    do
    {
      if (*(a2 + 55) < 0)
      {
        result = sub_29A008D14(v4, a2[4], a2[5]);
      }

      else
      {
        v7 = *(a2 + 2);
        *(v4 + 16) = a2[6];
        *v4 = v7;
      }

      v8 = a2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = a2[2];
          v10 = *v9 == a2;
          a2 = v9;
        }

        while (!v10);
      }

      v4 += 24;
      a2 = v9;
    }

    while (v4 != v6);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

void **sub_29A095B38(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void *sub_29A095BC4(uint64_t a1, void *a2, void *a3, void *__dst)
{
  v4 = __dst;
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_29A008D14(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4[2] = v6[6];
        *v4 = v7;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v4 = v15 + 24;
      v15 += 24;
      v6 = v9;
    }

    while (v9 != a3);
  }

  v13 = 1;
  sub_29A095CB0(v12);
  return v4;
}

uint64_t sub_29A095CB0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A095CE8(a1);
  }

  return a1;
}

void sub_29A095CE8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_29A095D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void *sub_29A095DB0(int a1, void *a2, void *a3, std::string *this)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      std::string::operator=(this, (v5 + 4));
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      ++this;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}