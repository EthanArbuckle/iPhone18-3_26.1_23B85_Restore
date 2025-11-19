void Alembic::AbcGeom::v12::OSubDSchema::createFaceVaryingInterpolateBoundaryProperty(Alembic::AbcGeom::v12::OSubDSchema *this)
{
  v2 = *(this + 6);
  v14 = *(this + 5);
  v15 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".faceVaryingInterpolateBoundary");
  v3 = *(this + 290);
  v11[0] = 2;
  v11[2] = v3;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A065BF8(&v16, &v14, __p, v11, v10, v9, v8);
  *(this + 98) = v16;
  std::string::operator=((this + 400), &v17);
  v5 = v18;
  v4 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 54);
  *(this + 53) = v5;
  *(this + 54) = v4;
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

  if (*(this + 144))
  {
    v7 = 0;
    do
    {
      v16 = 0;
      Alembic::Abc::v12::OScalarProperty::set((this + 392), &v16);
      ++v7;
    }

    while (v7 < *(this + 144));
  }
}

void sub_29A07A4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void Alembic::AbcGeom::v12::OSubDSchema::createFaceVaryingPropagateCornersProperty(Alembic::AbcGeom::v12::OSubDSchema *this)
{
  v2 = *(this + 6);
  v14 = *(this + 5);
  v15 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".faceVaryingPropagateCorners");
  v3 = *(this + 290);
  v11[0] = 2;
  v11[2] = v3;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A065BF8(&v16, &v14, __p, v11, v10, v9, v8);
  *(this + 110) = v16;
  std::string::operator=((this + 448), &v17);
  v5 = v18;
  v4 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 60);
  *(this + 59) = v5;
  *(this + 60) = v4;
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

  if (*(this + 144))
  {
    v7 = 0;
    do
    {
      v16 = 0;
      Alembic::Abc::v12::OScalarProperty::set((this + 440), &v16);
      ++v7;
    }

    while (v7 < *(this + 144));
  }
}

void sub_29A07A640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void Alembic::AbcGeom::v12::OSubDSchema::createInterpolateBoundaryProperty(Alembic::AbcGeom::v12::OSubDSchema *this)
{
  v2 = *(this + 6);
  v14 = *(this + 5);
  v15 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".interpolateBoundary");
  v3 = *(this + 290);
  v11[0] = 2;
  v11[2] = v3;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A065BF8(&v16, &v14, __p, v11, v10, v9, v8);
  *(this + 122) = v16;
  std::string::operator=((this + 496), &v17);
  v5 = v18;
  v4 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 65) = v5;
  v6 = *(this + 66);
  *(this + 66) = v4;
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

  if (*(this + 144))
  {
    v7 = 0;
    do
    {
      v16 = 0;
      Alembic::Abc::v12::OScalarProperty::set((this + 488), &v16);
      ++v7;
    }

    while (v7 < *(this + 144));
  }
}

void sub_29A07A7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void Alembic::AbcGeom::v12::OSubDSchema::createVelocitiesProperty(Alembic::AbcGeom::v12::OSubDSchema *this)
{
  v2 = *(this + 6);
  v15 = *(this + 5);
  v16 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".velocities");
  v3 = *(this + 290);
  v11[0] = 2;
  v11[2] = v3;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A052004(&v17, &v15, &__p, v11, v10, v9, v8);
  *(this + 218) = v17;
  std::string::operator=((this + 880), &v18);
  v5 = v19;
  v4 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 113) = v5;
  v6 = *(this + 114);
  *(this + 114) = v4;
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
  if (*(this + 144))
  {
    v7 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 872);
      ++v7;
    }

    while (v7 < *(this + 144));
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

void sub_29A07A940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::OSubDSchema::createUVsProperty(uint64_t a1, uint64_t a2)
{
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  *&v39 = 0;
  *(&v39 + 1) = 0x20000000ALL;
  v40 = 0u;
  *v41 = 0u;
  *&v41[16] = 0x100000005;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 127;
  v38[0] = 0;
  v38[1] = 0;
  v37 = v38;
  Alembic::Abc::v12::SetSourceName(&v37, (a1 + 1096));
  if (*(a2 + 536) != 127 && (*(a2 + 528) || *(a2 + 552) != *(a2 + 544)))
  {
    sub_29A05259C(v34, &v49);
    sub_29A052640(&v30, &v46);
    sub_29A0526E4(&__dst, v34, &v30, *(a2 + 568));
    *&v39 = __dst;
    *(&v39 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v40, v22, v23[0], (v23[0] - v22) >> 3);
    *&v41[8] = v24;
    *&v41[13] = *(&v24 + 5);
    sub_29A00CB24(&v42, __p, v26, (v26 - __p) >> 3);
    v45 = v28;
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v22)
    {
      v23[0] = v22;
      operator delete(v22);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    v9 = *(a1 + 48);
    v19 = *(a1 + 40);
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v34, "uv");
    v10 = v45;
    sub_29A07BC38(a1, &v17);
    LODWORD(v30) = 4;
    v31 = &v17;
    v15 = 3;
    v16 = &v37;
    v13 = 0;
    v14 = 0;
    sub_29A052798(&__dst, &v19, v34, 1, v10, 1, &v30, &v15, &v13);
    sub_29A050950(a1 + 920, &__dst);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v29);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v27);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v23);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    if (v18)
    {
      sub_29A014BEC(v18);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(*v34);
    }

    v7 = v20;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_29A014BEC(v7);
    goto LABEL_18;
  }

  sub_29A05259C(v34, &v49);
  v4 = *(a2 + 568);
  *&__dst = *v34;
  *(&__dst + 5) = *&v34[5];
  v22 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_29A00E7E0(&v22, v35, v36, (v36 - v35) >> 3);
  *&v24 = 0;
  *(&v24 + 1) = 0x100000005;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v28 = v4;
  *&v39 = __dst;
  *(&v39 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v40, v22, v23[0], (v23[0] - v22) >> 3);
  *&v41[8] = v24;
  *&v41[13] = *(&v24 + 5);
  sub_29A00CB24(&v42, __p, v26, (v26 - __p) >> 3);
  v45 = v28;
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23[0] = v22;
    operator delete(v22);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v5 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v34, "uv");
  v6 = v45;
  sub_29A07BC38(a1, &v17);
  LODWORD(v30) = 4;
  v31 = &v17;
  v15 = 3;
  v16 = &v37;
  v13 = 0;
  v14 = 0;
  sub_29A052798(&__dst, &v11, v34, 0, v6, 1, &v30, &v15, &v13);
  sub_29A050950(a1 + 920, &__dst);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v29);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v27);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v23);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__dst);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
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
  if (*(a1 + 1152))
  {
    v8 = 0;
    do
    {
      sub_29A04F06C(a1 + 920, &v39);
      ++v8;
    }

    while (v8 < *(a1 + 1152));
  }

  sub_29A01752C(&v37, v38[0]);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_29A07AE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54)
{
  sub_29A050A50(&a21);
  if (a18)
  {
    sub_29A014BEC(a18);
  }

  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_29A014BEC(a20);
  }

  sub_29A01752C(v54 - 224, *(v54 - 216));
  sub_29A050844((v54 - 200));
  v56 = *(v54 - 112);
  if (v56)
  {
    *(v54 - 104) = v56;
    operator delete(v56);
  }

  v57 = *(v54 - 88);
  if (v57)
  {
    *(v54 - 80) = v57;
    operator delete(v57);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OSubDSchema::initCreases(Alembic::AbcGeom::v12::OSubDSchema *this, int a2)
{
  v41 = this + 8;
  v42 = "OSubDSchema::initCreases()";
  v5 = *(this + 5);
  v4 = *(this + 6);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_29A0510D4(this + 248);
  v7 = *(v6 + 72);
  v39 = *(v6 + 64);
  v40 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v5;
  v34 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".creaseIndices");
  LODWORD(v17) = 4;
  v18 = &v39;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  sub_29A051A7C(&v35, &v33, &__p, &v17, &v28, &v26, &v24);
  *(this + 134) = v35;
  std::string::operator=((this + 544), &v36);
  v9 = v37;
  v8 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 71) = v9;
  v10 = *(this + 72);
  *(this + 72) = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v35);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    sub_29A014BEC(v34);
  }

  v22 = v5;
  v23 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".creaseLengths");
  LODWORD(v17) = 4;
  v18 = &v39;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  sub_29A051A7C(&v35, &v22, &__p, &v17, &v28, &v26, &v24);
  *(this + 146) = v35;
  std::string::operator=((this + 592), &v36);
  v12 = v37;
  v11 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 77) = v12;
  v13 = *(this + 78);
  *(this + 78) = v11;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v35);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  v20 = v5;
  v21 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".creaseSharpnesses");
  LODWORD(v17) = 4;
  v18 = &v39;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  sub_29A05633C(&v35, &v20, &__p, &v17, &v28, &v26, &v24);
  *(this + 158) = v35;
  std::string::operator=((this + 640), &v36);
  v15 = v37;
  v14 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 83) = v15;
  v16 = *(this + 84);
  *(this + 84) = v14;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v35);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (a2)
  {
    do
    {
      sub_29A051F60(&v35, &__p);
      Alembic::Abc::v12::OArrayProperty::set(this + 536);
      if (v36.__r_.__value_.__l.__size_)
      {
        v36.__r_.__value_.__r.__words[2] = v36.__r_.__value_.__l.__size_;
        operator delete(v36.__r_.__value_.__l.__size_);
      }

      sub_29A051F60(&v35, &__p);
      Alembic::Abc::v12::OArrayProperty::set(this + 584);
      if (v36.__r_.__value_.__l.__size_)
      {
        v36.__r_.__value_.__r.__words[2] = v36.__r_.__value_.__l.__size_;
        operator delete(v36.__r_.__value_.__l.__size_);
      }

      sub_29A055520(&v35, &v17);
      Alembic::Abc::v12::OArrayProperty::set(this + 632);
      if (v36.__r_.__value_.__l.__size_)
      {
        v36.__r_.__value_.__r.__words[2] = v36.__r_.__value_.__l.__size_;
        operator delete(v36.__r_.__value_.__l.__size_);
      }

      --a2;
    }

    while (a2);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29A07B350(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v31 - 128));
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  v34 = *(v31 - 72);
  if (v34)
  {
    sub_29A014BEC(v34);
  }

  if (v29)
  {
    sub_29A014BEC(v29);
  }

  v35 = __cxa_begin_catch(a1);
  v36 = *(*v30 + 16);
  if (a2 == 2)
  {
    v37 = v35;
    v36(v30);
    sub_29A02D768(v31 - 64, v37);
  }

  else
  {
    v36(v30);
    sub_29A02D6F8(v31 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A07B32CLL);
}

void Alembic::AbcGeom::v12::OSubDSchema::initCorners(Alembic::AbcGeom::v12::OSubDSchema *this, int a2)
{
  v36 = this + 8;
  v37 = "OSubDSchema::initCorners()";
  v5 = *(this + 5);
  v4 = *(this + 6);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_29A0510D4(this + 248);
  v7 = *(v6 + 72);
  v34 = *(v6 + 64);
  v35 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = v5;
  v29 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".cornerIndices");
  LODWORD(v14) = 4;
  v15 = &v34;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  sub_29A051A7C(&v30, &v28, &__p, &v14, &v23, &v21, &v19);
  *(this + 170) = v30;
  std::string::operator=((this + 688), &v31);
  v9 = v32;
  v8 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 89) = v9;
  v10 = *(this + 90);
  *(this + 90) = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
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

  v17 = v5;
  v18 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".cornerSharpnesses");
  LODWORD(v14) = 4;
  v15 = &v34;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  sub_29A05633C(&v30, &v17, &__p, &v14, &v23, &v21, &v19);
  *(this + 182) = v30;
  std::string::operator=((this + 736), &v31);
  v12 = v32;
  v11 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 95) = v12;
  v13 = *(this + 96);
  *(this + 96) = v11;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v30);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (a2)
  {
    do
    {
      sub_29A051F60(&v30, &__p);
      Alembic::Abc::v12::OArrayProperty::set(this + 680);
      if (v31.__r_.__value_.__l.__size_)
      {
        v31.__r_.__value_.__r.__words[2] = v31.__r_.__value_.__l.__size_;
        operator delete(v31.__r_.__value_.__l.__size_);
      }

      sub_29A055520(&v30, &v14);
      Alembic::Abc::v12::OArrayProperty::set(this + 728);
      if (v31.__r_.__value_.__l.__size_)
      {
        v31.__r_.__value_.__r.__words[2] = v31.__r_.__value_.__l.__size_;
        operator delete(v31.__r_.__value_.__l.__size_);
      }

      --a2;
    }

    while (a2);
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }

  if (v35)
  {
    sub_29A014BEC(v35);
  }

  if (v4)
  {
    sub_29A014BEC(v4);
  }
}

void sub_29A07B7F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, void *a30, uint64_t a31)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a28);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_29A014BEC(a13);
  }

  v36 = *(v33 - 72);
  if (v36)
  {
    sub_29A014BEC(v36);
  }

  if (v31)
  {
    sub_29A014BEC(v31);
  }

  v37 = __cxa_begin_catch(a1);
  v38 = *(*v32 + 16);
  if (a2 == 2)
  {
    v39 = v37;
    v38(v32);
    sub_29A02D768(v33 - 64, v39);
  }

  else
  {
    v38(v32);
    sub_29A02D6F8(v33 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A07B7D4);
}

void Alembic::AbcGeom::v12::OSubDSchema::initHoles(Alembic::AbcGeom::v12::OSubDSchema *this, int a2)
{
  v26 = this + 8;
  v27 = "OSubDSchema::initHoles()";
  v4 = sub_29A0510D4(this + 248);
  v5 = *(v4 + 72);
  v24 = *(v4 + 64);
  v25 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 6);
  v18 = *(this + 5);
  v19 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".holes");
  v13 = 4;
  v14 = &v24;
  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  sub_29A051A7C(&v20, &v18, &__p, &v13, v12, v11, v10);
  *(this + 194) = v20;
  std::string::operator=((this + 784), &v21);
  v8 = v22;
  v7 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 101) = v8;
  v9 = *(this + 102);
  *(this + 102) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    sub_29A014BEC(v19);
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  if (a2)
  {
    do
    {
      sub_29A051F60(&v20, &__p);
      Alembic::Abc::v12::OArrayProperty::set(this + 776);
      if (v21.__r_.__value_.__l.__size_)
      {
        v21.__r_.__value_.__r.__words[2] = v21.__r_.__value_.__l.__size_;
        operator delete(v21.__r_.__value_.__l.__size_);
      }

      --a2;
    }

    while (a2);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }
}

void sub_29A07BB14(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, void *a28, uint64_t a29)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a26);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    sub_29A014BEC(a25);
  }

  v33 = *(v30 - 56);
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  v34 = __cxa_begin_catch(a1);
  v35 = *(*v29 + 16);
  if (a2 == 2)
  {
    v36 = v34;
    v35(v29);
    sub_29A02D768(v30 - 48, v36);
  }

  else
  {
    v35(v29);
    sub_29A02D6F8(v30 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A07BB00);
}

void sub_29A07BC38(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_29A07BCDC(_Unwind_Exception *a1, uint64_t a2, ...)
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

void Alembic::AbcGeom::v12::OSubDSchema::createPositionsProperty(Alembic::AbcGeom::v12::OSubDSchema *this)
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
  v3 = *(this + 290);
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
  if (*(this + 144))
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
      v8 = *(this + 144);
    }

    while (v7 < v8);
  }

  else
  {
    v8 = 0;
  }

  sub_29A07BF60(this, *(this + 290), v8);
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

void sub_29A07BEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
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

void sub_29A07BF60(uint64_t a1, int a2, uint64_t a3)
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

void sub_29A07C0CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
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
  JUMPOUT(0x29A07C0B8);
}

uint64_t Alembic::AbcGeom::v12::OSubDSchema::setFromPrevious(Alembic::AbcGeom::v12::OSubDSchema *this)
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
  if (*(this + 375) < 0)
  {
    if (*(this + 45))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 375))
  {
    goto LABEL_19;
  }

  if (*(this + 47))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 344));
  }

LABEL_19:
  if (*(this + 423) < 0)
  {
    if (*(this + 51))
    {
      goto LABEL_25;
    }
  }

  else if (*(this + 423))
  {
    goto LABEL_25;
  }

  if (*(this + 53))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 392));
  }

LABEL_25:
  if (*(this + 471) < 0)
  {
    if (*(this + 57))
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 471))
  {
    goto LABEL_31;
  }

  if (*(this + 59))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 440));
  }

LABEL_31:
  if (*(this + 519) < 0)
  {
    if (*(this + 63))
    {
      goto LABEL_37;
    }
  }

  else if (*(this + 519))
  {
    goto LABEL_37;
  }

  if (*(this + 65))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 488));
  }

LABEL_37:
  if (*(this + 567) < 0)
  {
    if (*(this + 69))
    {
      goto LABEL_43;
    }
  }

  else if (*(this + 567))
  {
    goto LABEL_43;
  }

  if (*(this + 71))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 536));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 584));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 632));
  }

LABEL_43:
  if (*(this + 711) < 0)
  {
    if (*(this + 87))
    {
      goto LABEL_49;
    }
  }

  else if (*(this + 711))
  {
    goto LABEL_49;
  }

  if (*(this + 89))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 680));
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 728));
  }

LABEL_49:
  if (*(this + 807) < 0)
  {
    if (*(this + 99))
    {
      goto LABEL_55;
    }
  }

  else if (*(this + 807))
  {
    goto LABEL_55;
  }

  if (*(this + 101))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 776));
  }

LABEL_55:
  if (*(this + 855) < 0)
  {
    if (*(this + 105))
    {
      goto LABEL_61;
    }
  }

  else if (*(this + 855))
  {
    goto LABEL_61;
  }

  if (*(this + 107))
  {
    Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 824));
  }

LABEL_61:
  Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
  if (*(this + 903) < 0)
  {
    if (*(this + 111))
    {
      goto LABEL_67;
    }
  }

  else if (*(this + 903))
  {
    goto LABEL_67;
  }

  if (*(this + 113))
  {
    Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 872));
  }

LABEL_67:
  result = sub_29A051208(this + 920);
  if (result)
  {
    return sub_29A0501E0(this + 920);
  }

  return result;
}

void sub_29A07C394(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A07C384);
}

uint64_t Alembic::AbcGeom::v12::OSubDSchema::setTimeSampling(Alembic::AbcGeom::v12::OSubDSchema *this, int a2)
{
  *(this + 290) = a2;
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
  if (*(this + 375) < 0)
  {
    if (*(this + 45))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 375))
  {
    goto LABEL_19;
  }

  if (*(this + 47))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 344));
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
  if (*(this + 423) < 0)
  {
    if (*(this + 51))
    {
      goto LABEL_31;
    }
  }

  else if (*(this + 423))
  {
    goto LABEL_31;
  }

  if (*(this + 53))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 392));
  }

LABEL_31:
  if (*(this + 471) < 0)
  {
    if (*(this + 57))
    {
      goto LABEL_37;
    }
  }

  else if (*(this + 471))
  {
    goto LABEL_37;
  }

  if (*(this + 59))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 440));
  }

LABEL_37:
  if (*(this + 519) < 0)
  {
    if (*(this + 63))
    {
      goto LABEL_43;
    }
  }

  else if (*(this + 519))
  {
    goto LABEL_43;
  }

  if (*(this + 65))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 488));
  }

LABEL_43:
  if (*(this + 855) < 0)
  {
    if (*(this + 105))
    {
      goto LABEL_49;
    }
  }

  else if (*(this + 855))
  {
    goto LABEL_49;
  }

  if (*(this + 107))
  {
    Alembic::Abc::v12::OScalarProperty::setTimeSampling((this + 824));
  }

LABEL_49:
  if (*(this + 567) < 0)
  {
    if (*(this + 69))
    {
      goto LABEL_55;
    }
  }

  else if (*(this + 567))
  {
    goto LABEL_55;
  }

  if (*(this + 71))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 536));
  }

LABEL_55:
  if (*(this + 615) < 0)
  {
    if (*(this + 75))
    {
      goto LABEL_61;
    }
  }

  else if (*(this + 615))
  {
    goto LABEL_61;
  }

  if (*(this + 77))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 584));
  }

LABEL_61:
  if (*(this + 663) < 0)
  {
    if (*(this + 81))
    {
      goto LABEL_67;
    }
  }

  else if (*(this + 663))
  {
    goto LABEL_67;
  }

  if (*(this + 83))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 632));
  }

LABEL_67:
  if (*(this + 711) < 0)
  {
    if (*(this + 87))
    {
      goto LABEL_73;
    }
  }

  else if (*(this + 711))
  {
    goto LABEL_73;
  }

  if (*(this + 89))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 680));
  }

LABEL_73:
  if (*(this + 759) < 0)
  {
    if (*(this + 93))
    {
      goto LABEL_79;
    }
  }

  else if (*(this + 759))
  {
    goto LABEL_79;
  }

  if (*(this + 95))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 728));
  }

LABEL_79:
  if (*(this + 807) < 0)
  {
    if (*(this + 99))
    {
      goto LABEL_85;
    }
  }

  else if (*(this + 807))
  {
    goto LABEL_85;
  }

  if (*(this + 101))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 776));
  }

LABEL_85:
  if (*(this + 903) < 0)
  {
    if (*(this + 111))
    {
      goto LABEL_91;
    }
  }

  else if (*(this + 903))
  {
    goto LABEL_91;
  }

  if (*(this + 113))
  {
    Alembic::Abc::v12::OArrayProperty::setTimeSampling((this + 872));
  }

LABEL_91:
  result = sub_29A051208(this + 920);
  if (result)
  {
    return sub_29A050CD8(this + 920);
  }

  return result;
}

void sub_29A07C6D4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A07C6C4);
}

int *Alembic::AbcGeom::v12::OSubDSchema::setTimeSampling(Alembic::AbcGeom::v12::OSubDSchema *a1, void *a2)
{
  result = (a1 + 8);
  v7 = result;
  v8 = "OSubDSchema::setTimeSampling( TimeSamplingPtr)";
  if (*a2)
  {
    sub_29A04428C(result, v5);
    Alembic::Abc::v12::OObject::getArchive(v5, v6);
    v4 = Alembic::Abc::v12::OArchive::addTimeSampling(v6);
    Alembic::Abc::v12::OArchive::~OArchive(v6);
    Alembic::Abc::v12::OObject::~OObject(v5);
    return Alembic::AbcGeom::v12::OSubDSchema::setTimeSampling(a1, v4);
  }

  return result;
}

void sub_29A07C7AC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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
  JUMPOUT(0x29A07C79CLL);
}

uint64_t *Alembic::AbcGeom::v12::OSubDSchema::createFaceSet(uint64_t a1, const void **a2)
{
  v4 = (a1 + 8);
  v36 = a1 + 8;
  v37 = "OSubDSchema::createFaceSet ()";
  if (a1 + 1128 != sub_29A01BCCC(a1 + 1120, a2))
  {
    sub_29A008864(v18);
    sub_29A00911C(v19, "faceSet has already been created in SubD.", 41);
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
  v5 = sub_29A071CB8((a1 + 1120), a2, &unk_29B432B03, &v38);
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
  v6 = sub_29A071CB8((a1 + 1120), a2, &unk_29B432B03, v18) + 7;
  Alembic::Abc::v12::OObject::~OObject(v28);
  return v6;
}

void sub_29A07CAC0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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
  if ((atomic_load_explicit(&qword_2A153ED08, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A153ED08))
    {
      v17 = operator new(0x198uLL);
      sub_29A0729EC(v17);
      qword_2A153ED00 = v17;
      __cxa_guard_release(&qword_2A153ED08);
    }
  }

  JUMPOUT(0x29A07CA28);
}

void sub_29A07CBBC(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A153ED08);
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcGeom::v12::OSubDSchema::getFaceSetNames(uint64_t result, uint64_t a2)
{
  if (*(result + 1120) != result + 1128)
  {
    sub_29A070BA0(a2);
  }

  return result;
}

void sub_29A07CC94(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A07CC80);
}

uint64_t Alembic::AbcGeom::v12::OSubDSchema::getFaceSet@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a2;
  v4 = sub_29A071CB8((a1 + 1120), a2, &unk_29B432B03, &v9);
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

void sub_29A07CE08(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A07CDF4);
}

void sub_29A07CE8C(uint64_t a1)
{
  v1 = sub_29A07D8BC(a1);

  operator delete(v1);
}

void sub_29A07CEB4(uint64_t a1)
{
  sub_29A02F0A0(a1 + 248);
  sub_29A02F0A0(a1 + 296);
  sub_29A02F0A0(a1 + 344);
  sub_29A02F0A0(a1 + 392);
  sub_29A02F0A0(a1 + 440);
  sub_29A02F0A0(a1 + 488);
  sub_29A02F0A0(a1 + 536);
  sub_29A02F0A0(a1 + 584);
  sub_29A02F0A0(a1 + 632);
  sub_29A02F0A0(a1 + 680);
  sub_29A02F0A0(a1 + 728);
  sub_29A02F0A0(a1 + 776);
  sub_29A02F0A0(a1 + 824);
  sub_29A02F0A0(a1 + 872);
  sub_29A051268(a1 + 920);
  sub_29A071518(a1 + 1120, *(a1 + 1128));
  *(a1 + 1120) = a1 + 1128;
  *(a1 + 1128) = 0u;

  sub_29A07D0F8(a1);
}

uint64_t sub_29A07CF7C(uint64_t a1)
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

  if (*(a1 + 327) < 0)
  {
    if (*(a1 + 312))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 327))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 328))
  {
    goto LABEL_22;
  }

  if (*(a1 + 375) < 0)
  {
    if (!*(a1 + 360))
    {
      goto LABEL_20;
    }

LABEL_22:
    v1 = *(a1 + 1144);
    return v1 & 1;
  }

  if (*(a1 + 375))
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!*(a1 + 376))
  {
    goto LABEL_22;
  }

  v1 = 1;
  return v1 & 1;
}

void *sub_29A07D010(void *a1)
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

void sub_29A07D07C(void *a1)
{
  *a1 = &unk_2A203E1B8;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  operator delete(a1);
}

void sub_29A07D0F8(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A02F0A0(a1 + 200);

  sub_29A02F0A0(a1 + 8);
}

BOOL sub_29A07D14C(uint64_t a1)
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

uint64_t sub_29A07D178(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203E1E8;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A07D350(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A07D254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A07D274(uint64_t a1, int a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_29A07BF60(a1, a2, 0);
  }
}

void sub_29A07D2C0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A07D2ACLL);
}

void sub_29A07D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
    sub_29A008E78(&__str, "AbcGeom_SubD_v1");
    v30 = __p;
    v13 = sub_29A00B038(&v22, __p, &unk_29B432B03, &v30);
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
      v14 = sub_29A00B038(&v22, __p, &unk_29B432B03, &v30);
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

void sub_29A07D64C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
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
  JUMPOUT(0x29A07D598);
}

void sub_29A07D7A8(uint64_t a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));

  operator delete(a1);
}

uint64_t sub_29A07D7E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A0372C4(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A07D89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29A07D8BC(uint64_t a1)
{
  *a1 = &unk_2A203E130;
  sub_29A071518(a1 + 1120, *(a1 + 1128));
  if (*(a1 + 1119) < 0)
  {
    operator delete(*(a1 + 1096));
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 1048));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 992));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 944));
  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 872));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 824));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 776));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 728));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 680));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 632));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 584));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 536));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 488));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 440));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 248));
  *a1 = &unk_2A203E1B8;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

uint64_t Alembic::AbcGeom::v12::ISubDSchema::getTopologyVariance(Alembic::AbcGeom::v12::ISubDSchema *this)
{
  if (Alembic::Abc::v12::IArrayProperty::isConstant((this + 296)) && Alembic::Abc::v12::IArrayProperty::isConstant((this + 344)))
  {
    return Alembic::Abc::v12::IArrayProperty::isConstant((this + 248)) ^ 1;
  }

  else
  {
    return 2;
  }
}

void sub_29A07DA5C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A07DA4CLL);
}

unint64_t Alembic::AbcGeom::v12::ISubDSchema::getNumSamples(Alembic::AbcGeom::v12::ISubDSchema *this)
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

void sub_29A07DC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::ISubDSchema::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A0470B8(a1 + 248, a2, a3);
  sub_29A047134(a1 + 296, (a2 + 32), a3);
  sub_29A047134(a1 + 344, (a2 + 48), a3);
  if (*(a1 + 423) < 0)
  {
    if (*(a1 + 408))
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 423))
  {
    goto LABEL_7;
  }

  if (*(a1 + 424))
  {
    Alembic::Abc::v12::IScalarProperty::get(a1 + 392, a2 + 64, a3, 4);
    goto LABEL_8;
  }

LABEL_7:
  *(a2 + 64) = 0;
LABEL_8:
  if (*(a1 + 471) < 0)
  {
    if (*(a1 + 456))
    {
      goto LABEL_14;
    }
  }

  else if (*(a1 + 471))
  {
    goto LABEL_14;
  }

  if (*(a1 + 472))
  {
    Alembic::Abc::v12::IScalarProperty::get(a1 + 440, a2 + 68, a3, 4);
    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 68) = 0;
LABEL_15:
  if (*(a1 + 519) < 0)
  {
    if (*(a1 + 504))
    {
      goto LABEL_21;
    }
  }

  else if (*(a1 + 519))
  {
    goto LABEL_21;
  }

  if (*(a1 + 520))
  {
    Alembic::Abc::v12::IScalarProperty::get(a1 + 488, a2 + 72, a3, 4);
    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 72) = 0;
LABEL_22:
  Alembic::Abc::v12::IScalarProperty::get(a1 + 56, a2 + 200, a3, 48);
  if (*(a1 + 567) < 0)
  {
    if (*(a1 + 552))
    {
      goto LABEL_28;
    }
  }

  else if (*(a1 + 567))
  {
    goto LABEL_28;
  }

  if (*(a1 + 568))
  {
    sub_29A047134(a1 + 536, (a2 + 80), a3);
  }

LABEL_28:
  if (*(a1 + 615) < 0)
  {
    if (*(a1 + 600))
    {
      goto LABEL_34;
    }
  }

  else if (*(a1 + 615))
  {
    goto LABEL_34;
  }

  if (*(a1 + 616))
  {
    sub_29A047134(a1 + 584, (a2 + 96), a3);
  }

LABEL_34:
  if (*(a1 + 663) < 0)
  {
    if (*(a1 + 648))
    {
      goto LABEL_40;
    }
  }

  else if (*(a1 + 663))
  {
    goto LABEL_40;
  }

  if (*(a1 + 664))
  {
    sub_29A0471B0(a1 + 632, (a2 + 112), a3);
  }

LABEL_40:
  if (*(a1 + 711) < 0)
  {
    if (*(a1 + 696))
    {
      goto LABEL_46;
    }
  }

  else if (*(a1 + 711))
  {
    goto LABEL_46;
  }

  if (*(a1 + 712))
  {
    sub_29A047134(a1 + 680, (a2 + 128), a3);
  }

LABEL_46:
  if (*(a1 + 759) < 0)
  {
    if (*(a1 + 744))
    {
      goto LABEL_52;
    }
  }

  else if (*(a1 + 759))
  {
    goto LABEL_52;
  }

  if (*(a1 + 760))
  {
    sub_29A0471B0(a1 + 728, (a2 + 144), a3);
  }

LABEL_52:
  if (*(a1 + 807) < 0)
  {
    if (*(a1 + 792))
    {
      goto LABEL_58;
    }
  }

  else if (*(a1 + 807))
  {
    goto LABEL_58;
  }

  if (*(a1 + 808))
  {
    sub_29A047134(a1 + 776, (a2 + 160), a3);
  }

LABEL_58:
  if (*(a1 + 855) < 0)
  {
    if (*(a1 + 840))
    {
      goto LABEL_64;
    }
  }

  else if (*(a1 + 855))
  {
    goto LABEL_64;
  }

  if (*(a1 + 856))
  {
    Alembic::Abc::v12::IScalarProperty::get(a1 + 824, a2 + 176, a3, 24);
    goto LABEL_65;
  }

LABEL_64:
  MEMORY[0x29C2C1A60](a2 + 176, "catmull-clark");
LABEL_65:
  if (*(a1 + 1055) < 0)
  {
    if (*(a1 + 1040))
    {
      return;
    }
  }

  else if (*(a1 + 1055))
  {
    return;
  }

  if (*(a1 + 1056))
  {
    if (Alembic::Abc::v12::IArrayProperty::getNumSamples((a1 + 1024)))
    {
      sub_29A0472A8(a1 + 1024, (a2 + 16), a3);
    }
  }
}

void sub_29A07DF90(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A07DF7CLL);
}

uint64_t Alembic::AbcGeom::v12::ISubDSchema::operator=(uint64_t a1, uint64_t a2)
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

  *(a1 + 1024) = *(a2 + 1024);
  std::string::operator=((a1 + 1032), (a2 + 1032));
  v7 = *(a2 + 1056);
  v8 = *(a2 + 1064);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1056) = v7;
  v9 = *(a1 + 1064);
  *(a1 + 1064) = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  *(a1 + 296) = *(a2 + 296);
  std::string::operator=((a1 + 304), (a2 + 304));
  v11 = *(a2 + 328);
  v10 = *(a2 + 336);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 336);
  *(a1 + 328) = v11;
  *(a1 + 336) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  *(a1 + 344) = *(a2 + 344);
  std::string::operator=((a1 + 352), (a2 + 352));
  v14 = *(a2 + 376);
  v13 = *(a2 + 384);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 384);
  *(a1 + 376) = v14;
  *(a1 + 384) = v13;
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  *(a1 + 392) = *(a2 + 392);
  std::string::operator=((a1 + 400), (a2 + 400));
  v17 = *(a2 + 424);
  v16 = *(a2 + 432);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 432);
  *(a1 + 424) = v17;
  *(a1 + 432) = v16;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  *(a1 + 440) = *(a2 + 440);
  std::string::operator=((a1 + 448), (a2 + 448));
  v20 = *(a2 + 472);
  v19 = *(a2 + 480);
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 480);
  *(a1 + 472) = v20;
  *(a1 + 480) = v19;
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  *(a1 + 488) = *(a2 + 488);
  std::string::operator=((a1 + 496), (a2 + 496));
  v22 = *(a2 + 520);
  v23 = *(a2 + 528);
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 520) = v22;
  v24 = *(a1 + 528);
  *(a1 + 528) = v23;
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  *(a1 + 536) = *(a2 + 536);
  std::string::operator=((a1 + 544), (a2 + 544));
  v25 = *(a2 + 568);
  v26 = *(a2 + 576);
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 568) = v25;
  v27 = *(a1 + 576);
  *(a1 + 576) = v26;
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  *(a1 + 584) = *(a2 + 584);
  std::string::operator=((a1 + 592), (a2 + 592));
  v28 = *(a2 + 616);
  v29 = *(a2 + 624);
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 616) = v28;
  v30 = *(a1 + 624);
  *(a1 + 624) = v29;
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  *(a1 + 632) = *(a2 + 632);
  std::string::operator=((a1 + 640), (a2 + 640));
  v31 = *(a2 + 664);
  v32 = *(a2 + 672);
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 664) = v31;
  v33 = *(a1 + 672);
  *(a1 + 672) = v32;
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  *(a1 + 680) = *(a2 + 680);
  std::string::operator=((a1 + 688), (a2 + 688));
  v34 = *(a2 + 712);
  v35 = *(a2 + 720);
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 712) = v34;
  v36 = *(a1 + 720);
  *(a1 + 720) = v35;
  if (v36)
  {
    sub_29A014BEC(v36);
  }

  *(a1 + 728) = *(a2 + 728);
  std::string::operator=((a1 + 736), (a2 + 736));
  v37 = *(a2 + 760);
  v38 = *(a2 + 768);
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 760) = v37;
  v39 = *(a1 + 768);
  *(a1 + 768) = v38;
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  *(a1 + 776) = *(a2 + 776);
  std::string::operator=((a1 + 784), (a2 + 784));
  v40 = *(a2 + 808);
  v41 = *(a2 + 816);
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 808) = v40;
  v42 = *(a1 + 816);
  *(a1 + 816) = v41;
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  *(a1 + 824) = *(a2 + 824);
  std::string::operator=((a1 + 832), (a2 + 832));
  v43 = *(a2 + 856);
  v44 = *(a2 + 864);
  if (v44)
  {
    atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 856) = v43;
  v45 = *(a1 + 864);
  *(a1 + 864) = v44;
  if (v45)
  {
    sub_29A014BEC(v45);
  }

  sub_29A046D94(a1 + 872, a2 + 872);
  *(a1 + 392) = *(a2 + 392);
  std::string::operator=((a1 + 400), (a2 + 400));
  v47 = *(a2 + 424);
  v46 = *(a2 + 432);
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v48 = *(a1 + 432);
  *(a1 + 424) = v47;
  *(a1 + 432) = v46;
  if (v48)
  {
    sub_29A014BEC(v48);
  }

  pthread_mutex_lock((a1 + 1104));
  *(a1 + 1072) = 0;
  sub_29A074880(a1 + 1080, *(a1 + 1088));
  *(a1 + 1080) = a1 + 1088;
  *(a1 + 1088) = 0u;
  pthread_mutex_unlock((a1 + 1104));
  return a1;
}

void Alembic::AbcGeom::v12::ISubDSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v126 = a1 + 8;
  v127 = "ISubDSchema::init()";
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v80.__r_.__value_.__l.__data_ = 0uLL;
  v79 = &v80;
  v121 = 2;
  sub_29A019350(v122, &v79);
  v124 = 0;
  v123 = 0u;
  v125 = 1;
  sub_29A01752C(&v79, v80.__r_.__value_.__l.__data_);
  sub_29A02E010(a2, &v121);
  sub_29A02E010(a3, &v121);
  v117 = v8;
  v118 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v117, &v115, &v113);
  sub_29A008E78(__p, "P");
  v110[0] = 5;
  v110[2] = 1;
  v109[0] = 1;
  v109[2] = v121;
  sub_29A047324(&v79, v119, __p, v110, v109);
  *(a1 + 248) = v79;
  std::string::operator=((a1 + 256), &v80);
  v10 = v81;
  v9 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 288);
  *(a1 + 280) = v10;
  *(a1 + 288) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v118)
  {
    sub_29A014BEC(v118);
  }

  v107 = v8;
  v108 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v107, &v115, &v113);
  sub_29A008E78(__p, ".faceIndices");
  sub_29A0479A8(&v79, v119, __p, a2, a3);
  *(a1 + 296) = v79;
  std::string::operator=((a1 + 304), &v80);
  v13 = v81;
  v12 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 336);
  *(a1 + 328) = v13;
  *(a1 + 336) = v12;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v108)
  {
    sub_29A014BEC(v108);
  }

  v105 = v8;
  v106 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v105, &v115, &v113);
  sub_29A008E78(__p, ".faceCounts");
  sub_29A0479A8(&v79, v119, __p, a2, a3);
  *(a1 + 344) = v79;
  std::string::operator=((a1 + 352), &v80);
  v16 = v81;
  v15 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 384);
  *(a1 + 376) = v16;
  *(a1 + 384) = v15;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v106)
  {
    sub_29A014BEC(v106);
  }

  sub_29A008E78(&v79, ".faceVaryingInterpolateBoundary");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v19 = PropertyHeader;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v19)
    {
      goto LABEL_47;
    }
  }

  else if (!PropertyHeader)
  {
    goto LABEL_47;
  }

  v103 = v8;
  v104 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v103, &v115, &v113);
  sub_29A008E78(__p, ".faceVaryingInterpolateBoundary");
  sub_29A0684E4(&v79, v119, __p, a2, a3);
  *(a1 + 392) = v79;
  std::string::operator=((a1 + 400), &v80);
  v21 = v81;
  v20 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 432);
  *(a1 + 424) = v21;
  *(a1 + 432) = v20;
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v104)
  {
    sub_29A014BEC(v104);
  }

LABEL_47:
  sub_29A008E78(&v79, ".faceVaryingPropagateCorners");
  v23 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v24 = v23;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v24)
    {
      goto LABEL_61;
    }
  }

  else if (!v23)
  {
    goto LABEL_61;
  }

  v101 = v8;
  v102 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v101, &v115, &v113);
  sub_29A008E78(__p, ".faceVaryingPropagateCorners");
  sub_29A0684E4(&v79, v119, __p, a2, a3);
  *(a1 + 440) = v79;
  std::string::operator=((a1 + 448), &v80);
  v26 = v81;
  v25 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = *(a1 + 480);
  *(a1 + 472) = v26;
  *(a1 + 480) = v25;
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v102)
  {
    sub_29A014BEC(v102);
  }

LABEL_61:
  sub_29A008E78(&v79, ".interpolateBoundary");
  v28 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v29 = v28;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v29)
    {
      goto LABEL_75;
    }
  }

  else if (!v28)
  {
    goto LABEL_75;
  }

  v99 = v8;
  v100 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v99, &v115, &v113);
  sub_29A008E78(__p, ".interpolateBoundary");
  sub_29A0684E4(&v79, v119, __p, a2, a3);
  *(a1 + 488) = v79;
  std::string::operator=((a1 + 496), &v80);
  v31 = v81;
  v30 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 520) = v31;
  v32 = *(a1 + 528);
  *(a1 + 528) = v30;
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v100)
  {
    sub_29A014BEC(v100);
  }

LABEL_75:
  sub_29A008E78(&v79, ".creaseIndices");
  v33 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v34 = v33;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v34)
    {
      goto LABEL_89;
    }
  }

  else if (!v33)
  {
    goto LABEL_89;
  }

  v97 = v8;
  v98 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v97, &v115, &v113);
  sub_29A008E78(__p, ".creaseIndices");
  sub_29A0479A8(&v79, v119, __p, a2, a3);
  *(a1 + 536) = v79;
  std::string::operator=((a1 + 544), &v80);
  v36 = v81;
  v35 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 568) = v36;
  v37 = *(a1 + 576);
  *(a1 + 576) = v35;
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v98)
  {
    sub_29A014BEC(v98);
  }

LABEL_89:
  sub_29A008E78(&v79, ".creaseLengths");
  v38 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v39 = v38;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v39)
    {
      goto LABEL_103;
    }
  }

  else if (!v38)
  {
    goto LABEL_103;
  }

  v95 = v8;
  v96 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v95, &v115, &v113);
  sub_29A008E78(__p, ".creaseLengths");
  sub_29A0479A8(&v79, v119, __p, a2, a3);
  *(a1 + 584) = v79;
  std::string::operator=((a1 + 592), &v80);
  v41 = v81;
  v40 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 616) = v41;
  v42 = *(a1 + 624);
  *(a1 + 624) = v40;
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v96)
  {
    sub_29A014BEC(v96);
  }

LABEL_103:
  sub_29A008E78(&v79, ".creaseSharpnesses");
  v43 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v44 = v43;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v44)
    {
      goto LABEL_117;
    }
  }

  else if (!v43)
  {
    goto LABEL_117;
  }

  v93 = v8;
  v94 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v93, &v115, &v113);
  sub_29A008E78(__p, ".creaseSharpnesses");
  sub_29A047FD4(&v79, v119, __p, a2, a3);
  *(a1 + 632) = v79;
  std::string::operator=((a1 + 640), &v80);
  v46 = v81;
  v45 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 664) = v46;
  v47 = *(a1 + 672);
  *(a1 + 672) = v45;
  if (v47)
  {
    sub_29A014BEC(v47);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v94)
  {
    sub_29A014BEC(v94);
  }

LABEL_117:
  sub_29A008E78(&v79, ".cornerIndices");
  v48 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v49 = v48;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v49)
    {
      goto LABEL_131;
    }
  }

  else if (!v48)
  {
    goto LABEL_131;
  }

  v91 = v8;
  v92 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v91, &v115, &v113);
  sub_29A008E78(__p, ".cornerIndices");
  sub_29A0479A8(&v79, v119, __p, a2, a3);
  *(a1 + 680) = v79;
  std::string::operator=((a1 + 688), &v80);
  v51 = v81;
  v50 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 712) = v51;
  v52 = *(a1 + 720);
  *(a1 + 720) = v50;
  if (v52)
  {
    sub_29A014BEC(v52);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v92)
  {
    sub_29A014BEC(v92);
  }

LABEL_131:
  sub_29A008E78(&v79, ".cornerSharpnesses");
  v53 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v54 = v53;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v54)
    {
      goto LABEL_145;
    }
  }

  else if (!v53)
  {
    goto LABEL_145;
  }

  v89 = v8;
  v90 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v89, &v115, &v113);
  sub_29A008E78(__p, ".cornerSharpnesses");
  sub_29A047FD4(&v79, v119, __p, a2, a3);
  *(a1 + 728) = v79;
  std::string::operator=((a1 + 736), &v80);
  v56 = v81;
  v55 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 760) = v56;
  v57 = *(a1 + 768);
  *(a1 + 768) = v55;
  if (v57)
  {
    sub_29A014BEC(v57);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v90)
  {
    sub_29A014BEC(v90);
  }

LABEL_145:
  sub_29A008E78(&v79, ".holes");
  v58 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v59 = v58;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v59)
    {
      goto LABEL_159;
    }
  }

  else if (!v58)
  {
    goto LABEL_159;
  }

  v87 = v8;
  v88 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v87, &v115, &v113);
  sub_29A008E78(__p, ".holes");
  sub_29A0479A8(&v79, v119, __p, a2, a3);
  *(a1 + 776) = v79;
  std::string::operator=((a1 + 784), &v80);
  v61 = v81;
  v60 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 808) = v61;
  v62 = *(a1 + 816);
  *(a1 + 816) = v60;
  if (v62)
  {
    sub_29A014BEC(v62);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v88)
  {
    sub_29A014BEC(v88);
  }

LABEL_159:
  sub_29A008E78(&v79, ".scheme");
  v63 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v64 = v63;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v64)
    {
      goto LABEL_173;
    }
  }

  else if (!v63)
  {
    goto LABEL_173;
  }

  v85 = v8;
  v86 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v85, &v115, &v113);
  sub_29A008E78(__p, ".scheme");
  sub_29A0323F8(&v79, v119, __p, a2, a3);
  *(a1 + 824) = v79;
  std::string::operator=((a1 + 832), &v80);
  v66 = v81;
  v65 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 856) = v66;
  v67 = *(a1 + 864);
  *(a1 + 864) = v65;
  if (v67)
  {
    sub_29A014BEC(v67);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v86)
  {
    sub_29A014BEC(v86);
  }

LABEL_173:
  sub_29A008E78(&v79, "uv");
  v68 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v69 = v68;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v69)
    {
      goto LABEL_183;
    }
  }

  else if (!v68)
  {
    goto LABEL_183;
  }

  v77 = v8;
  v78 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v119, "uv");
  sub_29A048600(&v79, &v77, v119, a2, a3);
  sub_29A046D94(a1 + 872, &v79);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v84);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v83);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v78)
  {
    sub_29A014BEC(v78);
  }

LABEL_183:
  sub_29A008E78(&v79, ".velocities");
  v70 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v71 = v70;
  if (v80.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v79);
    if (!v71)
    {
      goto LABEL_197;
    }
  }

  else if (!v70)
  {
    goto LABEL_197;
  }

  v75 = v8;
  v76 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v119, &v75, &v115, &v113);
  sub_29A008E78(__p, ".velocities");
  sub_29A04AFA0(&v79, v119, __p, a2, a3);
  *(a1 + 1024) = v79;
  std::string::operator=((a1 + 1032), &v80);
  v73 = v81;
  v72 = v82;
  if (v82)
  {
    atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1056) = v73;
  v74 = *(a1 + 1064);
  *(a1 + 1064) = v72;
  if (v74)
  {
    sub_29A014BEC(v74);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v79);
  if (v112 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v119);
  if (v76)
  {
    sub_29A014BEC(v76);
  }

LABEL_197:
  *(a1 + 1072) = 0;
  if (*(&v123 + 1))
  {
    sub_29A014BEC(*(&v123 + 1));
  }

  sub_29A01752C(v122, v122[1]);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A07F364(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&a13);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v67 - 208));
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  sub_29A02E0BC(v67 - 160);
  if (v66)
  {
    sub_29A014BEC(v66);
  }

  v70 = __cxa_begin_catch(a1);
  v71 = *(*v65 + 16);
  if (a2 == 2)
  {
    v72 = v70;
    v71(v65);
    sub_29A02D768(v67 - 96, v72);
  }

  else
  {
    v71(v65);
    sub_29A02D6F8(v67 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A07F344);
}

uint64_t Alembic::AbcGeom::v12::ISubDSchema::getFaceSetNames(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 1104));
  Alembic::AbcGeom::v12::ISubDSchema::loadFaceSetNames(a1);
  if (*(a1 + 1080) != a1 + 1088)
  {
    sub_29A070BA0(a2);
  }

  return pthread_mutex_unlock((a1 + 1104));
}

void sub_29A07FA6C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pthread_mutex_unlock((v9 + 1104));
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
  JUMPOUT(0x29A07FA54);
}

void Alembic::AbcGeom::v12::ISubDSchema::loadFaceSetNames(uint64_t **this)
{
  v2 = (this + 1);
  v16 = v2;
  v17 = "ISubDSchema::loadFaceSetNames()";
  if ((this[134] & 1) == 0)
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
          v6 = sub_29A074DC0(this + 135, ChildHeader, &unk_29B432B04, &v18);
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

    *(this + 1072) = 1;
    Alembic::Abc::v12::IObject::~IObject(v15);
  }
}

void sub_29A07FC60(void *a1, int a2)
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
  JUMPOUT(0x29A07FC44);
}

BOOL Alembic::AbcGeom::v12::ISubDSchema::hasFaceSet(uint64_t a1, const void **a2)
{
  pthread_mutex_lock((a1 + 1104));
  if ((*(a1 + 1072) & 1) == 0)
  {
    Alembic::AbcGeom::v12::ISubDSchema::loadFaceSetNames(a1);
  }

  v4 = sub_29A01BCCC(a1 + 1080, a2);
  pthread_mutex_unlock((a1 + 1104));
  return a1 + 1088 != v4;
}

void sub_29A07FD6C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pthread_mutex_unlock((v9 + 1104));
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
  JUMPOUT(0x29A07FD58);
}

uint64_t Alembic::AbcGeom::v12::ISubDSchema::getFaceSet@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a1 + 8);
  v28 = a1 + 8;
  v29 = "ISubDSchema::getFaceSet()";
  pthread_mutex_lock((a1 + 1104));
  if ((*(a1 + 1072) & 1) == 0)
  {
    Alembic::AbcGeom::v12::ISubDSchema::loadFaceSetNames(a1);
  }

  if (a1 + 1088 == sub_29A01BCCC(a1 + 1080, a2))
  {
    sub_29A008864(v16);
    sub_29A00911C(v17, "The requested FaceSet name can't be found in SubD.", 50);
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
  v7 = sub_29A074DC0((a1 + 1080), a2, &unk_29B432B04, v16);
  if (!sub_29A0751C8((v7 + 7)))
  {
    sub_29A07386C(v6, v25);
    LODWORD(v26) = 0;
    DWORD2(v26) = 0;
    v15[0] = 0;
    v15[2] = 0;
    sub_29A0751F8(v16, v25, a2, &v26, v15);
    v30 = a2;
    v8 = sub_29A074DC0((a1 + 1080), a2, &unk_29B432B04, &v30);
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
  v9 = sub_29A074DC0((a1 + 1080), a2, &unk_29B432B04, v16);
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

  return pthread_mutex_unlock((a1 + 1104));
}

void sub_29A0800E4(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A008F20((v6 - 200));
  sub_29A008B0C(va);
  pthread_mutex_unlock((v5 + 1104));
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
  JUMPOUT(0x29A080050);
}

void Alembic::AbcGeom::v12::CreateVisibilityProperty(Alembic::Abc::v12::OObject *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 2;
  sub_29A008E78(&v11, "");
  v13 = 0;
  v14 = 0;
  if (*a2)
  {
    Alembic::Abc::v12::OObject::getArchive(a1, v9);
    v6 = Alembic::Abc::v12::OArchive::addTimeSampling(v9);
    Alembic::Abc::v12::OArchive::~OArchive(v9);
    Alembic::AbcGeom::v12::CreateVisibilityProperty(a1, v6, a3);
  }

  else
  {
    *a3 = v10;
    v7 = (a3 + 8);
    if (SHIBYTE(v12) < 0)
    {
      sub_29A008D14(v7, v11, *(&v11 + 1));
      v8 = v14;
      *(a3 + 32) = v13;
      *(a3 + 40) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *v7 = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
    }
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v10);
}

void sub_29A0802DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(va);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::CreateVisibilityProperty(Alembic::AbcGeom::v12 *this@<X0>, Alembic::Abc::v12::OObject *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  Alembic::Abc::v12::OObject::getProperties(this, v10);
  sub_29A008E78(__p, "visible");
  v7[0] = 2;
  v7[2] = v3;
  v6[0] = 0;
  v6[2] = 0;
  v5[0] = 0;
  v5[2] = 0;
  sub_29A080900(a3, v10, __p, v7, v6, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v10);
}

void sub_29A08039C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((v21 - 64));
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::GetVisibilityProperty(Alembic::AbcGeom::v12 *this@<X0>, uint64_t a2@<X8>)
{
  Alembic::Abc::v12::IObject::getProperties(this, v10);
  sub_29A008E78(__p, "visible");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v10);
  v5 = PropertyHeader;
  if ((v9 & 0x80000000) == 0)
  {
    if (PropertyHeader)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a2 = 2;
    sub_29A008E78((a2 + 8), "");
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    goto LABEL_7;
  }

  operator delete(__p[0]);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_29A008E78(__p, "visible");
  v7[0] = 0;
  v7[2] = 0;
  v6[0] = 0;
  v6[2] = 0;
  sub_29A080DE8(a2, v10, __p, v7, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_7:
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v10);
}

uint64_t Alembic::AbcGeom::v12::GetVisibility(Alembic::AbcGeom::v12 *a1, uint64_t a2)
{
  v13 = 2;
  sub_29A008E78(&v14, "");
  v15 = 0;
  v16 = 0;
  Alembic::AbcGeom::v12::GetVisibilityProperty(a1, &v9);
  v13 = v9;
  std::string::operator=(&v14, &v10);
  v5 = v11;
  v4 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v16;
  v15 = v5;
  v16 = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v9);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v14.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

LABEL_11:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  if (*(&v14.__r_.__value_.__s + 23))
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v15)
  {
    goto LABEL_11;
  }

  LOBYTE(v9) = 0;
  Alembic::Abc::v12::IScalarProperty::get(&v13, &v9, a2, 1);
  v7 = v9;
LABEL_12:
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v13);
  return v7;
}

void sub_29A0805CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(va);
  _Unwind_Resume(a1);
}

BOOL Alembic::AbcGeom::v12::IsAncestorInvisible(Alembic::AbcGeom::v12 *this, uint64_t a2)
{
  if (*(this + 39) < 0)
  {
    if (*(this + 3))
    {
      goto LABEL_41;
    }
  }

  else if (*(this + 39))
  {
LABEL_41:
    sub_29A008864(&v31);
    sub_29A00911C(&v31.__r_.__value_.__r.__words[2], "IsAncestorInvisible (): object passed in isn't valid.", 53);
    std::stringbuf::str();
    sub_29A008C60(&v18, &__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v17 = sub_29A008E1C(exception, &v18);
    __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
  }

  if (!*(this + 5))
  {
    goto LABEL_41;
  }

  Alembic::AbcGeom::v12::GetVisibilityProperty(this, &__p);
  if (v28 < 0)
  {
    if (!v27)
    {
      goto LABEL_10;
    }

LABEL_12:
    v4 = -1;
    goto LABEL_13;
  }

  if (v28)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v29)
  {
    goto LABEL_12;
  }

  v31.__r_.__value_.__s.__data_[0] = 0;
  Alembic::Abc::v12::IScalarProperty::get(&__p, &v31, a2, 1);
  v4 = v31.__r_.__value_.__s.__data_[0];
LABEL_13:
  sub_29A030028(&v31, this);
  while (1)
  {
    if (v4 != -1)
    {
      v14 = v4 == 0;
      goto LABEL_40;
    }

    Alembic::Abc::v12::IObject::getParent(&v31, &v18);
    LODWORD(v31.__r_.__value_.__r.__words[1]) = v19.__r_.__value_.__l.__data_;
    std::string::operator=(&v31.__r_.__value_.__r.__words[2], &v19.__r_.__value_.__r.__words[1]);
    v6 = v21;
    v5 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v35;
    v34 = v6;
    v35 = v5;
    if (v7)
    {
      sub_29A014BEC(v7);
    }

    v9 = v23;
    v8 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v37;
    v36 = v9;
    v37 = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }

    std::string::operator=(v38, &v25);
    Alembic::Abc::v12::IObject::~IObject(&v18);
    if (v33 < 0)
    {
      if (v32)
      {
        break;
      }
    }

    else if (v33)
    {
      break;
    }

    if (!v34)
    {
      break;
    }

    Alembic::AbcGeom::v12::GetVisibilityProperty(&v31, &v18);
    LODWORD(__p) = v18;
    std::string::operator=((&__p + 8), &v19);
    v12 = v20;
    v11 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v30;
    v29 = v12;
    v30 = v11;
    if (v13)
    {
      sub_29A014BEC(v13);
    }

    Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v18);
    if (v28 < 0)
    {
      v4 = -1;
      if (!v27)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v4 = -1;
      if (!v28)
      {
LABEL_36:
        if (v29)
        {
          LOBYTE(v18) = 0;
          Alembic::Abc::v12::IScalarProperty::get(&__p, &v18, a2, 1);
          v4 = v18;
        }
      }
    }
  }

  v14 = 0;
LABEL_40:
  Alembic::Abc::v12::IObject::~IObject(&v31);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&__p);
  return v14;
}

void sub_29A08088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A080900(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_29A0809DC(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A0809BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v12);
  _Unwind_Resume(a1);
}

void sub_29A0809DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  LODWORD(__p[0]) = 2;
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

void sub_29A080CC0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A080C0CLL);
}

uint64_t sub_29A080DE8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v16 = *(v13 + 56) == 2 && *(v13 + 60) == 1 && *(v13 + 24) == 1;
  if (!v16 || (sub_29A081374(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 1;
    v40 = 2;
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

void sub_29A08122C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A080F8CLL);
}

uint64_t sub_29A081374(uint64_t a1, int a2)
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

void sub_29A081400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Alembic::AbcGeom::v12::XformOp *Alembic::AbcGeom::v12::XformOp::XformOp(Alembic::AbcGeom::v12::XformOp *this)
{
  *this = 1;
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  sub_29A00BF50(this + 1, 3uLL);
  return this;
}

void sub_29A081480(_Unwind_Exception *a1)
{
  v5 = v4;
  sub_29A082B84(v3, *v5);
  v7 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

Alembic::AbcGeom::v12::XformOp *Alembic::AbcGeom::v12::XformOp::XformOp(Alembic::AbcGeom::v12::XformOp *this, unsigned int a2, unsigned int a3)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  if (a2 < 7)
  {
    sub_29A00BF50(this + 1, qword_29B432B18[a2]);
  }

  Alembic::AbcGeom::v12::XformOp::setHint(this, a3);
  return this;
}

void sub_29A081534(_Unwind_Exception *a1)
{
  sub_29A082B84(v3, *v4);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcGeom::v12::XformOp::setHint(uint64_t this, unsigned int a2)
{
  v2 = *this;
  if (a2 && !v2 || a2 >= 5 && v2 == 1)
  {
    goto LABEL_19;
  }

  if (v2 <= 5 && ((1 << v2) & 0x34) != 0)
  {
    if (a2 <= 1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v4 = v2 == 6 || v2 == 3;
  v5 = v4;
  if (a2 >= 2 && v5)
  {
LABEL_19:
    LOBYTE(a2) = 0;
  }

LABEL_20:
  *(this + 4) = a2;
  return this;
}

Alembic::AbcGeom::v12::XformOp *Alembic::AbcGeom::v12::XformOp::XformOp(Alembic::AbcGeom::v12::XformOp *this, unsigned int a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 6) = 0;
  *this = a2 >> 4;
  Alembic::AbcGeom::v12::XformOp::setHint(this, a2 & 0xF);
  v4 = *this;
  if (v4 < 7)
  {
    sub_29A00BF50(v3, qword_29B432B18[v4]);
  }

  return this;
}

void sub_29A081644(_Unwind_Exception *a1)
{
  v5 = v4;
  sub_29A082B84(v3, *v5);
  v7 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::XformOp::setType(uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  if (a2 <= 6)
  {
    sub_29A00BF50((a1 + 8), qword_29B432B18[a2]);
  }
}

BOOL Alembic::AbcGeom::v12::XformOp::isXAnimated(Alembic::AbcGeom::v12::XformOp *this)
{
  if ((*this - 4) < 3)
  {
    return 0;
  }

  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v2 = *(v1 + 7);
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t Alembic::AbcGeom::v12::XformOp::isYAnimated(Alembic::AbcGeom::v12::XformOp *this)
{
  if ((*this - 4) < 3)
  {
    return 0;
  }

  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 7);
    if (v2 <= 1)
    {
      break;
    }

LABEL_6:
    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  if (!v2)
  {
    ++v1;
    goto LABEL_6;
  }

  return 1;
}

uint64_t Alembic::AbcGeom::v12::XformOp::isZAnimated(Alembic::AbcGeom::v12::XformOp *this)
{
  if ((*this - 4) < 3)
  {
    return 0;
  }

  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 7);
    if (v2 <= 2)
    {
      break;
    }

LABEL_6:
    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  if (v2 != 2)
  {
    ++v1;
    goto LABEL_6;
  }

  return 1;
}

BOOL Alembic::AbcGeom::v12::XformOp::isAngleAnimated(Alembic::AbcGeom::v12::XformOp *this)
{
  v1 = *(this + 5);
  if ((*this - 4) > 2)
  {
    for (; v1; v1 = *v1)
    {
      v4 = *(v1 + 7);
      if (v4 <= 3)
      {
        if (v4 == 3)
        {
          return 1;
        }

        ++v1;
      }
    }

    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  do
  {
    v2 = *(v1 + 7);
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t Alembic::AbcGeom::v12::XformOp::isChannelAnimated(Alembic::AbcGeom::v12::XformOp *this, unsigned int a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v2 + 7);
    if (v3 <= a2)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_5;
  }

  return 1;
}

double Alembic::AbcGeom::v12::XformOp::getDefaultChannelValue(Alembic::AbcGeom::v12::XformOp *this, unint64_t a2)
{
  if (*this == 3)
  {
    if (a2 > 0xF)
    {
      return 0.0;
    }

    result = 1.0;
    if (((1 << a2) & 0x8421) == 0)
    {
      return 0.0;
    }
  }

  else
  {
    result = 0.0;
    if (!*this)
    {
      return 1.0;
    }
  }

  return result;
}

double Alembic::AbcGeom::v12::XformOp::getChannelValue(Alembic::AbcGeom::v12::XformOp *this, unint64_t a2)
{
  v2 = *(this + 1);
  result = 0.0;
  if (a2 < (*(this + 2) - v2) >> 3)
  {
    return *(v2 + 8 * a2);
  }

  return result;
}

double Alembic::AbcGeom::v12::XformOp::setVector(uint64_t a1, uint64_t a2)
{
  if (*a1 == 3)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Meaningless to set Abc::V3d on matrix op", 40);
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

  v2 = *(a1 + 8);
  *v2 = *a2;
  *(v2 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(v2 + 16) = result;
  return result;
}

void sub_29A0819D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

double Alembic::AbcGeom::v12::XformOp::setTranslate(_DWORD *a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    sub_29A008864(&v8);
    sub_29A00911C(v9, "Meaningless to set translate on non-translate op.", 49);
    std::stringbuf::str();
    sub_29A008C60(v7, &__p);
    if (v6 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_29A008E1C(exception, v7);
    __cxa_throw(v4, &unk_2A203B108, sub_29A008B08);
  }

  return Alembic::AbcGeom::v12::XformOp::setVector(a1, a2);
}

void sub_29A081AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

double Alembic::AbcGeom::v12::XformOp::setScale(_DWORD *a1, uint64_t a2)
{
  if (*a1)
  {
    sub_29A008864(&v8);
    sub_29A00911C(v9, "Meaningless to set scale on non-scale op.", 41);
    std::stringbuf::str();
    sub_29A008C60(v7, &__p);
    if (v6 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_29A008E1C(exception, v7);
    __cxa_throw(v4, &unk_2A203B108, sub_29A008B08);
  }

  return Alembic::AbcGeom::v12::XformOp::setVector(a1, a2);
}

void sub_29A081B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

double Alembic::AbcGeom::v12::XformOp::setAxis(_DWORD *a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    sub_29A008864(&v8);
    sub_29A00911C(v9, "Meaningless to set rotation axis on non-rotation or fixed angle rotation op.", 76);
    std::stringbuf::str();
    sub_29A008C60(v7, &__p);
    if (v6 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_29A008E1C(exception, v7);
    __cxa_throw(v4, &unk_2A203B108, sub_29A008B08);
  }

  return Alembic::AbcGeom::v12::XformOp::setVector(a1, a2);
}

void sub_29A081C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t Alembic::AbcGeom::v12::XformOp::setAngle(uint64_t this, double a2)
{
  if ((*this - 4) >= 3)
  {
    if (*this != 2)
    {
      sub_29A008864(&v8);
      sub_29A00911C(v9, "Meaningless to set rotation angle on non-rotation op.", 53);
      std::stringbuf::str();
      sub_29A008C60(v7, &__p);
      if (v6 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v4 = sub_29A008E1C(exception, v7);
      __cxa_throw(v4, &unk_2A203B108, sub_29A008B08);
    }

    v2 = (*(this + 8) + 24);
  }

  else
  {
    v2 = *(this + 8);
  }

  *v2 = a2;
  return this;
}

void sub_29A081D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t Alembic::AbcGeom::v12::XformOp::setMatrix(uint64_t result, uint64_t a2)
{
  if (*result != 3)
  {
    sub_29A008864(&v10);
    sub_29A00911C(v11, "Cannot set non-matrix op from Abc::M44d", 39);
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

  v2 = 0;
  v3 = *(result + 8);
  do
  {
    for (i = 0; i != 32; i += 8)
    {
      *(v3 + i) = *(a2 + i);
    }

    ++v2;
    v3 += 32;
    a2 += 32;
  }

  while (v2 != 4);
  return result;
}

void sub_29A081E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

double Alembic::AbcGeom::v12::XformOp::getVector@<D0>(Alembic::AbcGeom::v12::XformOp *this@<X0>, uint64_t a2@<X8>)
{
  if (*this == 3)
  {
    sub_29A008864(&v9);
    sub_29A00911C(v10, "Meaningless to get Abc::V3d from matrix op", 42);
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

  v2 = *(this + 1);
  result = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = result;
  return result;
}

void sub_29A081F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

double Alembic::AbcGeom::v12::XformOp::getTranslate@<D0>(Alembic::AbcGeom::v12::XformOp *this@<X0>, uint64_t a2@<X8>)
{
  if (*this != 1)
  {
    sub_29A008864(&v8);
    sub_29A00911C(v9, "Meaningless to get translate vector from non-translate op.", 58);
    std::stringbuf::str();
    sub_29A008C60(v7, &__p);
    if (v6 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_29A008E1C(exception, v7);
    __cxa_throw(v4, &unk_2A203B108, sub_29A008B08);
  }

  return Alembic::AbcGeom::v12::XformOp::getVector(this, a2);
}

void sub_29A082028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

double Alembic::AbcGeom::v12::XformOp::getScale@<D0>(Alembic::AbcGeom::v12::XformOp *this@<X0>, uint64_t a2@<X8>)
{
  if (*this)
  {
    sub_29A008864(&v8);
    sub_29A00911C(v9, "Meaningless to get scaling vector from non-scale op.", 52);
    std::stringbuf::str();
    sub_29A008C60(v7, &__p);
    if (v6 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_29A008E1C(exception, v7);
    __cxa_throw(v4, &unk_2A203B108, sub_29A008B08);
  }

  return Alembic::AbcGeom::v12::XformOp::getVector(this, a2);
}

void sub_29A082104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

double Alembic::AbcGeom::v12::XformOp::getAxis@<D0>(Alembic::AbcGeom::v12::XformOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this > 4)
  {
    if (v2 == 5)
    {
      result = 0.0;
      *a2 = xmmword_29B432590;
      *(a2 + 16) = 0;
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_13;
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0x3FF0000000000000;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 4)
      {
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0x3FF0000000000000;
        return result;
      }

LABEL_13:
      sub_29A008864(&v9);
      sub_29A00911C(v10, "Meaningless to get rotation axis from non-rotation op.", 54);
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

    return Alembic::AbcGeom::v12::XformOp::getVector(this, a2);
  }

  return result;
}

void sub_29A082244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

double Alembic::AbcGeom::v12::XformOp::getAngle(Alembic::AbcGeom::v12::XformOp *this)
{
  if ((*this - 4) >= 3)
  {
    if (*this != 2)
    {
      sub_29A008864(&v8);
      sub_29A00911C(v9, "Meaningless to get rotation angle from non-rotation op.", 55);
      std::stringbuf::str();
      sub_29A008C60(v7, &__p);
      if (v6 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v4 = sub_29A008E1C(exception, v7);
      __cxa_throw(v4, &unk_2A203B108, sub_29A008B08);
    }

    v1 = *(this + 1) + 24;
  }

  else
  {
    v1 = *(this + 1);
  }

  return *v1;
}

void sub_29A082334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void Alembic::AbcGeom::v12::XformOp::getXRotation(Alembic::AbcGeom::v12::XformOp *this)
{
  if (*this != 4)
  {
    if (*this != 2)
    {
      sub_29A008864(&v16);
      sub_29A00911C(&v17 + 1, "Meaningless to get rotation angle from non-rotation op.", 55);
      std::stringbuf::str();
      sub_29A008C60(&v14, &__p);
      if (v13 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v11 = sub_29A008E1C(exception, &v14);
      __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
    }

    v16 = 1.0;
    v17 = 0u;
    v18 = 0u;
    v19 = 1.0;
    v20 = 0u;
    v21 = 0u;
    Alembic::AbcGeom::v12::XformOp::getVector(this, &v14);
    v2 = *(*(this + 1) + 24) * 3.14159265;
    v3 = v14.f64[1] * v14.f64[1] + v14.f64[0] * v14.f64[0] + v15 * v15;
    if (v3 < 4.45014772e-308)
    {
      v4 = sub_29B284C54(&v14);
    }

    else
    {
      v4 = sqrt(v3);
    }

    v5 = v2 / 180.0;
    if (v4 == 0.0)
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }

    else
    {
      v6 = v14.f64[0] / v4;
      v7 = v14.f64[1] / v4;
      v8 = v15 / v4;
    }

    v9 = __sincos_stret(v5);
    v16 = v9.__cosval + v6 * v6 * (1.0 - v9.__cosval);
    *&v17 = v9.__sinval * v8 + v6 * v7 * (1.0 - v9.__cosval);
    *(&v17 + 1) = v6 * v8 * (1.0 - v9.__cosval) - v7 * v9.__sinval;
    *&v18 = 0;
    *(&v18 + 1) = v6 * v7 * (1.0 - v9.__cosval) - v8 * v9.__sinval;
    v19 = v9.__cosval + v7 * v7 * (1.0 - v9.__cosval);
    *&v20 = v9.__sinval * v6 + v7 * v8 * (1.0 - v9.__cosval);
    *(&v20 + 1) = 0;
    *&v21 = v9.__sinval * v7 + v6 * v8 * (1.0 - v9.__cosval);
    *(&v21 + 1) = v7 * v8 * (1.0 - v9.__cosval) - v6 * v9.__sinval;
    v22 = v9.__cosval + v8 * v8 * (1.0 - v9.__cosval);
    v23 = 0u;
    v24 = 0u;
    v25 = 0x3FF0000000000000;
    sub_29B284A0C(&v16, &v14);
  }
}

void sub_29A08258C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void Alembic::AbcGeom::v12::XformOp::getYRotation(Alembic::AbcGeom::v12::XformOp *this)
{
  if (*this != 5)
  {
    if (*this != 2)
    {
      sub_29A008864(&v16);
      sub_29A00911C(&v17 + 1, "Meaningless to get rotation angle from non-rotation op.", 55);
      std::stringbuf::str();
      sub_29A008C60(&v14, &__p);
      if (v13 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v11 = sub_29A008E1C(exception, &v14);
      __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
    }

    v16 = 1.0;
    v17 = 0u;
    v18 = 0u;
    v19 = 1.0;
    v20 = 0u;
    v21 = 0u;
    Alembic::AbcGeom::v12::XformOp::getVector(this, &v14);
    v2 = *(*(this + 1) + 24) * 3.14159265;
    v3 = v14.f64[1] * v14.f64[1] + v14.f64[0] * v14.f64[0] + v15 * v15;
    if (v3 < 4.45014772e-308)
    {
      v4 = sub_29B284C54(&v14);
    }

    else
    {
      v4 = sqrt(v3);
    }

    v5 = v2 / 180.0;
    if (v4 == 0.0)
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }

    else
    {
      v6 = v14.f64[0] / v4;
      v7 = v14.f64[1] / v4;
      v8 = v15 / v4;
    }

    v9 = __sincos_stret(v5);
    v16 = v9.__cosval + v6 * v6 * (1.0 - v9.__cosval);
    *&v17 = v9.__sinval * v8 + v6 * v7 * (1.0 - v9.__cosval);
    *(&v17 + 1) = v6 * v8 * (1.0 - v9.__cosval) - v7 * v9.__sinval;
    *&v18 = 0;
    *(&v18 + 1) = v6 * v7 * (1.0 - v9.__cosval) - v8 * v9.__sinval;
    v19 = v9.__cosval + v7 * v7 * (1.0 - v9.__cosval);
    *&v20 = v9.__sinval * v6 + v7 * v8 * (1.0 - v9.__cosval);
    *(&v20 + 1) = 0;
    *&v21 = v9.__sinval * v7 + v6 * v8 * (1.0 - v9.__cosval);
    *(&v21 + 1) = v7 * v8 * (1.0 - v9.__cosval) - v6 * v9.__sinval;
    v22 = v9.__cosval + v8 * v8 * (1.0 - v9.__cosval);
    v23 = 0u;
    v24 = 0u;
    v25 = 0x3FF0000000000000;
    sub_29B284A0C(&v16, &v14);
  }
}

void sub_29A0827E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void Alembic::AbcGeom::v12::XformOp::getZRotation(Alembic::AbcGeom::v12::XformOp *this)
{
  if (*this != 6)
  {
    if (*this != 2)
    {
      sub_29A008864(&v16);
      sub_29A00911C(&v17 + 1, "Meaningless to get rotation angle from non-rotation op.", 55);
      std::stringbuf::str();
      sub_29A008C60(&v14, &__p);
      if (v13 < 0)
      {
        operator delete(__p);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v11 = sub_29A008E1C(exception, &v14);
      __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
    }

    v16 = 1.0;
    v17 = 0u;
    v18 = 0u;
    v19 = 1.0;
    v20 = 0u;
    v21 = 0u;
    Alembic::AbcGeom::v12::XformOp::getVector(this, &v14);
    v2 = *(*(this + 1) + 24) * 3.14159265;
    v3 = v14.f64[1] * v14.f64[1] + v14.f64[0] * v14.f64[0] + v15 * v15;
    if (v3 < 4.45014772e-308)
    {
      v4 = sub_29B284C54(&v14);
    }

    else
    {
      v4 = sqrt(v3);
    }

    v5 = v2 / 180.0;
    if (v4 == 0.0)
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }

    else
    {
      v6 = v14.f64[0] / v4;
      v7 = v14.f64[1] / v4;
      v8 = v15 / v4;
    }

    v9 = __sincos_stret(v5);
    v16 = v9.__cosval + v6 * v6 * (1.0 - v9.__cosval);
    *&v17 = v9.__sinval * v8 + v6 * v7 * (1.0 - v9.__cosval);
    *(&v17 + 1) = v6 * v8 * (1.0 - v9.__cosval) - v7 * v9.__sinval;
    *&v18 = 0;
    *(&v18 + 1) = v6 * v7 * (1.0 - v9.__cosval) - v8 * v9.__sinval;
    v19 = v9.__cosval + v7 * v7 * (1.0 - v9.__cosval);
    *&v20 = v9.__sinval * v6 + v7 * v8 * (1.0 - v9.__cosval);
    *(&v20 + 1) = 0;
    *&v21 = v9.__sinval * v7 + v6 * v8 * (1.0 - v9.__cosval);
    *(&v21 + 1) = v7 * v8 * (1.0 - v9.__cosval) - v6 * v9.__sinval;
    v22 = v9.__cosval + v8 * v8 * (1.0 - v9.__cosval);
    v23 = 0u;
    v24 = 0u;
    v25 = 0x3FF0000000000000;
    sub_29B284A0C(&v16, &v14);
  }
}

void sub_29A082A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

__n128 Alembic::AbcGeom::v12::XformOp::getMatrix@<Q0>(Alembic::AbcGeom::v12::XformOp *this@<X0>, uint64_t a2@<X8>)
{
  if (*this != 3)
  {
    sub_29A008864(&v12);
    sub_29A00911C(v13, "Can't get matrix from non-matrix op.", 36);
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

  v2 = 0;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
  v3 = *(this + 1);
  do
  {
    v4 = a2 + v2;
    result = *(v3 + v2);
    v6 = *(v3 + v2 + 16);
    *v4 = result;
    *(v4 + 16) = v6;
    v2 += 32;
  }

  while (v2 != 128);
  return result;
}

void sub_29A082B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void sub_29A082B84(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A082B84(a1, *a2);
    sub_29A082B84(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t Alembic::AbcGeom::v12::XformSample::XformSample(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *this = 0;
  *(this + 32) = 1;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *this = 0;
  *(this + 32) = 1;
  *(this + 40) = 0;
  return this;
}

uint64_t Alembic::AbcGeom::v12::XformSample::addOp(uint64_t a1, Alembic::AbcGeom::v12::XformOp *this, uint64_t a3)
{
  for (i = 0; i != 3; ++i)
  {
    Alembic::AbcGeom::v12::XformOp::setChannelValue(this, i, *(a3 + 8 * i));
  }

  if (*(a1 + 33))
  {
    if (*a1 != 1)
    {
      sub_29A008864(v22);
      sub_29A00911C(v23, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v21, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v13 = sub_29A008E1C(exception, v21);
      __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
    }

    v7 = *(a1 + 40);
    Type = Alembic::AbcGeom::v12::XformOp::getType(this);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(a1 + 8) + 56 * v7)))
    {
      sub_29A008864(v22);
      v16 = sub_29A00911C(v23, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v16, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v21, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v17 = __cxa_allocate_exception(0x20uLL);
      v18 = sub_29A008E1C(v17, v21);
      __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
    }

    v9 = *(a1 + 8) + 56 * v7;
    v10 = *this;
    *(v9 + 4) = *(this + 4);
    *v9 = v10;
    if (v9 != this)
    {
      sub_29A00CB24((v9 + 8), *(this + 1), *(this + 2), (*(this + 2) - *(this + 1)) >> 3);
      sub_29A086068((v9 + 32), *(this + 4), this + 10);
    }

    *(a1 + 40) = (*(a1 + 40) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  }

  else
  {
    if (*a1 >= 2u)
    {
      sub_29A008864(v22);
      sub_29A00911C(v23, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v21, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = __cxa_allocate_exception(0x20uLL);
      v15 = sub_29A008E1C(v14, v21);
      __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
    }

    *a1 = 1;
    sub_29A082F30(a1 + 8, this);
    return 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  }

  return v7;
}

{
  v6 = 0;
  for (i = 0; i != 4; ++i)
  {
    v8 = v6;
    v9 = 4;
    do
    {
      Alembic::AbcGeom::v12::XformOp::setChannelValue(this, v8, *(a3 + 8 * v8));
      ++v8;
      --v9;
    }

    while (v9);
    v6 += 4;
  }

  if (*(a1 + 33))
  {
    v10 = *(a1 + 40);
    Type = Alembic::AbcGeom::v12::XformOp::getType(this);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(a1 + 8) + 56 * v10)))
    {
      sub_29A008864(v25);
      v15 = sub_29A00911C(v26, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v15, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v24, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v17 = sub_29A008E1C(exception, v24);
      __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
    }

    if (*a1 != 1)
    {
      sub_29A008864(v25);
      sub_29A00911C(v26, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v24, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      v20 = __cxa_allocate_exception(0x20uLL);
      v21 = sub_29A008E1C(v20, v24);
      __cxa_throw(v21, &unk_2A203B108, sub_29A008B08);
    }

    v12 = *(a1 + 8) + 56 * v10;
    v13 = *this;
    *(v12 + 4) = *(this + 4);
    *v12 = v13;
    if (v12 != this)
    {
      sub_29A00CB24((v12 + 8), *(this + 1), *(this + 2), (*(this + 2) - *(this + 1)) >> 3);
      sub_29A086068((v12 + 32), *(this + 4), this + 10);
    }

    *(a1 + 40) = (*(a1 + 40) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  }

  else
  {
    if (*a1 >= 2u)
    {
      sub_29A008864(v25);
      sub_29A00911C(v26, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v24, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      v18 = __cxa_allocate_exception(0x20uLL);
      v19 = sub_29A008E1C(v18, v24);
      __cxa_throw(v19, &unk_2A203B108, sub_29A008B08);
    }

    *a1 = 1;
    sub_29A082F30(a1 + 8, this);
    return 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  }

  return v10;
}

void sub_29A082EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t sub_29A082F30(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A086634(a1, a2);
  }

  else
  {
    sub_29A086780(a1, *(a1 + 8), a2);
    result = v3 + 56;
    *(a1 + 8) = v3 + 56;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t Alembic::AbcGeom::v12::XformSample::addOp(uint64_t a1, Alembic::AbcGeom::v12::XformOp *this, uint64_t a3, double a4)
{
  for (i = 0; i != 3; ++i)
  {
    Alembic::AbcGeom::v12::XformOp::setChannelValue(this, i, *(a3 + 8 * i));
  }

  Alembic::AbcGeom::v12::XformOp::setChannelValue(this, 3, a4);
  if (*(a1 + 33))
  {
    v9 = *(a1 + 40);
    Type = Alembic::AbcGeom::v12::XformOp::getType(this);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(a1 + 8) + 56 * v9)))
    {
      sub_29A008864(v24);
      v14 = sub_29A00911C(v25, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v14, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v23, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v16 = sub_29A008E1C(exception, v23);
      __cxa_throw(v16, &unk_2A203B108, sub_29A008B08);
    }

    if (*a1 != 1)
    {
      sub_29A008864(v24);
      sub_29A00911C(v25, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v23, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      v19 = __cxa_allocate_exception(0x20uLL);
      v20 = sub_29A008E1C(v19, v23);
      __cxa_throw(v20, &unk_2A203B108, sub_29A008B08);
    }

    v11 = *(a1 + 8) + 56 * v9;
    v12 = *this;
    *(v11 + 4) = *(this + 4);
    *v11 = v12;
    if (v11 != this)
    {
      sub_29A00CB24((v11 + 8), *(this + 1), *(this + 2), (*(this + 2) - *(this + 1)) >> 3);
      sub_29A086068((v11 + 32), *(this + 4), this + 10);
    }

    *(a1 + 40) = (*(a1 + 40) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  }

  else
  {
    if (*a1 >= 2u)
    {
      sub_29A008864(v24);
      sub_29A00911C(v25, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v23, __p);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      v17 = __cxa_allocate_exception(0x20uLL);
      v18 = sub_29A008E1C(v17, v23);
      __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
    }

    *a1 = 1;
    sub_29A082F30(a1 + 8, this);
    return 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  }

  return v9;
}

void sub_29A08328C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t Alembic::AbcGeom::v12::XformSample::addOp(uint64_t a1, uint64_t a2, double a3)
{
  Alembic::AbcGeom::v12::XformOp::setChannelValue(a2, 0, a3);
  if (*(a1 + 33))
  {
    v5 = *(a1 + 40);
    Type = Alembic::AbcGeom::v12::XformOp::getType(a2);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(a1 + 8) + 56 * v5)))
    {
      sub_29A008864(v20);
      v10 = sub_29A00911C(v21, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v10, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v19, __p);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v12 = sub_29A008E1C(exception, v19);
      __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
    }

    if (*a1 != 1)
    {
      sub_29A008864(v20);
      sub_29A00911C(v21, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v19, __p);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = __cxa_allocate_exception(0x20uLL);
      v16 = sub_29A008E1C(v15, v19);
      __cxa_throw(v16, &unk_2A203B108, sub_29A008B08);
    }

    v7 = *(a1 + 8) + 56 * v5;
    v8 = *a2;
    *(v7 + 4) = *(a2 + 4);
    *v7 = v8;
    if (v7 != a2)
    {
      sub_29A00CB24((v7 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
      sub_29A086068((v7 + 32), *(a2 + 32), (a2 + 40));
    }

    *(a1 + 40) = (*(a1 + 40) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  }

  else
  {
    if (*a1 >= 2u)
    {
      sub_29A008864(v20);
      sub_29A00911C(v21, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v19, __p);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = __cxa_allocate_exception(0x20uLL);
      v14 = sub_29A008E1C(v13, v19);
      __cxa_throw(v14, &unk_2A203B108, sub_29A008B08);
    }

    *a1 = 1;
    sub_29A082F30(a1 + 8, a2);
    return 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  }

  return v5;
}

void sub_29A083594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void sub_29A0838D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t Alembic::AbcGeom::v12::XformSample::addOp(Alembic::AbcGeom::v12::XformSample *this, const Alembic::AbcGeom::v12::XformOp *a2)
{
  if (*(this + 33))
  {
    v4 = *(this + 5);
    Type = Alembic::AbcGeom::v12::XformOp::getType(a2);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(this + 1) + 56 * v4)))
    {
      sub_29A008864(v19);
      v9 = sub_29A00911C(v20, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v9, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v11 = sub_29A008E1C(exception, v18);
      __cxa_throw(v11, &unk_2A203B108, sub_29A008B08);
    }

    if (*this != 1)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = __cxa_allocate_exception(0x20uLL);
      v15 = sub_29A008E1C(v14, v18);
      __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
    }

    v6 = *(this + 1) + 56 * v4;
    v7 = *a2;
    *(v6 + 4) = *(a2 + 4);
    *v6 = v7;
    if (v6 != a2)
    {
      sub_29A00CB24((v6 + 8), *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
      sub_29A086068((v6 + 32), *(a2 + 4), a2 + 10);
    }

    *(this + 5) = (*(this + 5) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3));
  }

  else
  {
    if (*this >= 2u)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = __cxa_allocate_exception(0x20uLL);
      v13 = sub_29A008E1C(v12, v18);
      __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
    }

    *this = 1;
    sub_29A082F30(this + 8, a2);
    return 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3) - 1;
  }

  return v4;
}

void sub_29A083BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

uint64_t *Alembic::AbcGeom::v12::XformSample::getOp@<X0>(Alembic::AbcGeom::v12::XformSample *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 1) + 56 * a2;
  v5 = *(v4 + 4);
  *a3 = *v4;
  *(a3 + 4) = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  sub_29A00C8EC((a3 + 8), *(v4 + 8), *(v4 + 16), (*(v4 + 16) - *(v4 + 8)) >> 3);
  return sub_29A086324((a3 + 32), v4 + 32);
}

void sub_29A083C84(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::XformSample::operator[](uint64_t a1, void *a2)
{
  return *(a1 + 8) + 56 * *a2;
}

{
  return *(a1 + 8) + 56 * *a2;
}

uint64_t Alembic::AbcGeom::v12::XformSample::getNumOpChannels(Alembic::AbcGeom::v12::XformSample *this)
{
  v1 = *(this + 1);
  if (*(this + 2) == v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v5 += Alembic::AbcGeom::v12::XformOp::getNumChannels((v1 + v3));
    ++v4;
    v1 = *(this + 1);
    v3 += 56;
  }

  while (v4 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v1) >> 3));
  return v5;
}

void Alembic::AbcGeom::v12::XformSample::setTranslation(uint64_t a1, uint64_t a2)
{
  Alembic::AbcGeom::v12::XformOp::XformOp(&v21, 1, 0);
  for (i = 0; i != 3; ++i)
  {
    Alembic::AbcGeom::v12::XformOp::setChannelValue(&v21, i, *(a2 + 8 * i));
  }

  if (*(a1 + 33))
  {
    if (*a1 != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v10 = sub_29A008E1C(exception, v18);
      __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
    }

    v5 = *(a1 + 40);
    Type = Alembic::AbcGeom::v12::XformOp::getType(&v21);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(a1 + 8) + 56 * v5)))
    {
      sub_29A008864(v19);
      v11 = sub_29A00911C(v20, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v11, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = __cxa_allocate_exception(0x20uLL);
      v13 = sub_29A008E1C(v12, v18);
      __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
    }

    v7 = *(a1 + 8) + 56 * v5;
    v8 = v21;
    *(v7 + 4) = v22;
    *v7 = v8;
    if (v7 != &v21)
    {
      sub_29A00CB24((v7 + 8), v23, v24, (v24 - v23) >> 3);
      sub_29A086068((v7 + 32), v25, v26);
    }

    *(a1 + 40) = (*(a1 + 40) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  }

  else
  {
    if ((*a1 | 2) != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = __cxa_allocate_exception(0x20uLL);
      v15 = sub_29A008E1C(v14, v18);
      __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
    }

    *a1 = 2;
    sub_29A082F30(a1 + 8, &v21);
  }

  sub_29A082B84(&v25, *v26);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_29A084078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  sub_29A0840DC(v5 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0840DC(uint64_t a1)
{
  sub_29A082B84(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void Alembic::AbcGeom::v12::XformSample::setRotation(uint64_t a1, uint64_t a2, double a3)
{
  Alembic::AbcGeom::v12::XformOp::XformOp(&v23, 2, 0);
  for (i = 0; i != 3; ++i)
  {
    Alembic::AbcGeom::v12::XformOp::setChannelValue(&v23, i, *(a2 + 8 * i));
  }

  Alembic::AbcGeom::v12::XformOp::setChannelValue(&v23, 3, a3);
  if (*(a1 + 33))
  {
    if (*a1 != 2)
    {
      sub_29A008864(v21);
      sub_29A00911C(v22, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v20, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v12 = sub_29A008E1C(exception, v20);
      __cxa_throw(v12, &unk_2A203B108, sub_29A008B08);
    }

    v7 = *(a1 + 40);
    Type = Alembic::AbcGeom::v12::XformOp::getType(&v23);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(a1 + 8) + 56 * v7)))
    {
      sub_29A008864(v21);
      v13 = sub_29A00911C(v22, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v13, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v20, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = __cxa_allocate_exception(0x20uLL);
      v15 = sub_29A008E1C(v14, v20);
      __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
    }

    v9 = *(a1 + 8) + 56 * v7;
    v10 = v23;
    *(v9 + 4) = v24;
    *v9 = v10;
    if (v9 != &v23)
    {
      sub_29A00CB24((v9 + 8), v25, v26, (v26 - v25) >> 3);
      sub_29A086068((v9 + 32), v27, v28);
    }

    *(a1 + 40) = (*(a1 + 40) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  }

  else
  {
    if ((*a1 | 2) != 2)
    {
      sub_29A008864(v21);
      sub_29A00911C(v22, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v20, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = __cxa_allocate_exception(0x20uLL);
      v17 = sub_29A008E1C(v16, v20);
      __cxa_throw(v17, &unk_2A203B108, sub_29A008B08);
    }

    *a1 = 2;
    sub_29A082F30(a1 + 8, &v23);
  }

  sub_29A082B84(&v27, *v28);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }
}

void sub_29A084424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  sub_29A0840DC(v5 - 104);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::XformSample::setScale(uint64_t a1, uint64_t a2)
{
  Alembic::AbcGeom::v12::XformOp::XformOp(&v21, 0, 0);
  for (i = 0; i != 3; ++i)
  {
    Alembic::AbcGeom::v12::XformOp::setChannelValue(&v21, i, *(a2 + 8 * i));
  }

  if (*(a1 + 33))
  {
    if (*a1 != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v10 = sub_29A008E1C(exception, v18);
      __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
    }

    v5 = *(a1 + 40);
    Type = Alembic::AbcGeom::v12::XformOp::getType(&v21);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(a1 + 8) + 56 * v5)))
    {
      sub_29A008864(v19);
      v11 = sub_29A00911C(v20, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v11, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = __cxa_allocate_exception(0x20uLL);
      v13 = sub_29A008E1C(v12, v18);
      __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
    }

    v7 = *(a1 + 8) + 56 * v5;
    v8 = v21;
    *(v7 + 4) = v22;
    *v7 = v8;
    if (v7 != &v21)
    {
      sub_29A00CB24((v7 + 8), v23, v24, (v24 - v23) >> 3);
      sub_29A086068((v7 + 32), v25, v26);
    }

    *(a1 + 40) = (*(a1 + 40) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  }

  else
  {
    if ((*a1 | 2) != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = __cxa_allocate_exception(0x20uLL);
      v15 = sub_29A008E1C(v14, v18);
      __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
    }

    *a1 = 2;
    sub_29A082F30(a1 + 8, &v21);
  }

  sub_29A082B84(&v25, *v26);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_29A084774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  sub_29A0840DC(v5 - 88);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::XformSample::setXRotation(Alembic::AbcGeom::v12::XformSample *this, double a2)
{
  v4 = Alembic::AbcGeom::v12::XformOp::XformOp(&v21, 4, 0);
  Alembic::AbcGeom::v12::XformOp::setChannelValue(v4, 0, a2);
  if (*(this + 33))
  {
    if (*this != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v10 = sub_29A008E1C(exception, v18);
      __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
    }

    v5 = *(this + 5);
    Type = Alembic::AbcGeom::v12::XformOp::getType(&v21);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(this + 1) + 56 * v5)))
    {
      sub_29A008864(v19);
      v11 = sub_29A00911C(v20, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v11, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = __cxa_allocate_exception(0x20uLL);
      v13 = sub_29A008E1C(v12, v18);
      __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
    }

    v7 = *(this + 1) + 56 * v5;
    v8 = v21;
    *(v7 + 4) = v22;
    *v7 = v8;
    if (v7 != &v21)
    {
      sub_29A00CB24((v7 + 8), v23, v24, (v24 - v23) >> 3);
      sub_29A086068((v7 + 32), v25, v26);
    }

    *(this + 5) = (*(this + 5) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3));
  }

  else
  {
    if ((*this | 2) != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = __cxa_allocate_exception(0x20uLL);
      v15 = sub_29A008E1C(v14, v18);
      __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
    }

    *this = 2;
    sub_29A082F30(this + 8, &v21);
  }

  sub_29A082B84(&v25, *v26);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_29A084AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  sub_29A0840DC(v5 - 104);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::XformSample::setYRotation(Alembic::AbcGeom::v12::XformSample *this, double a2)
{
  v4 = Alembic::AbcGeom::v12::XformOp::XformOp(&v21, 5, 0);
  Alembic::AbcGeom::v12::XformOp::setChannelValue(v4, 0, a2);
  if (*(this + 33))
  {
    if (*this != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v10 = sub_29A008E1C(exception, v18);
      __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
    }

    v5 = *(this + 5);
    Type = Alembic::AbcGeom::v12::XformOp::getType(&v21);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(this + 1) + 56 * v5)))
    {
      sub_29A008864(v19);
      v11 = sub_29A00911C(v20, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v11, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = __cxa_allocate_exception(0x20uLL);
      v13 = sub_29A008E1C(v12, v18);
      __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
    }

    v7 = *(this + 1) + 56 * v5;
    v8 = v21;
    *(v7 + 4) = v22;
    *v7 = v8;
    if (v7 != &v21)
    {
      sub_29A00CB24((v7 + 8), v23, v24, (v24 - v23) >> 3);
      sub_29A086068((v7 + 32), v25, v26);
    }

    *(this + 5) = (*(this + 5) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3));
  }

  else
  {
    if ((*this | 2) != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = __cxa_allocate_exception(0x20uLL);
      v15 = sub_29A008E1C(v14, v18);
      __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
    }

    *this = 2;
    sub_29A082F30(this + 8, &v21);
  }

  sub_29A082B84(&v25, *v26);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_29A084DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  sub_29A0840DC(v5 - 104);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::XformSample::setZRotation(Alembic::AbcGeom::v12::XformSample *this, double a2)
{
  v4 = Alembic::AbcGeom::v12::XformOp::XformOp(&v21, 6, 0);
  Alembic::AbcGeom::v12::XformOp::setChannelValue(v4, 0, a2);
  if (*(this + 33))
  {
    if (*this != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v10 = sub_29A008E1C(exception, v18);
      __cxa_throw(v10, &unk_2A203B108, sub_29A008B08);
    }

    v5 = *(this + 5);
    Type = Alembic::AbcGeom::v12::XformOp::getType(&v21);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(this + 1) + 56 * v5)))
    {
      sub_29A008864(v19);
      v11 = sub_29A00911C(v20, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v11, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = __cxa_allocate_exception(0x20uLL);
      v13 = sub_29A008E1C(v12, v18);
      __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
    }

    v7 = *(this + 1) + 56 * v5;
    v8 = v21;
    *(v7 + 4) = v22;
    *v7 = v8;
    if (v7 != &v21)
    {
      sub_29A00CB24((v7 + 8), v23, v24, (v24 - v23) >> 3);
      sub_29A086068((v7 + 32), v25, v26);
    }

    *(this + 5) = (*(this + 5) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - *(this + 1)) >> 3));
  }

  else
  {
    if ((*this | 2) != 2)
    {
      sub_29A008864(v19);
      sub_29A00911C(v20, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v14 = __cxa_allocate_exception(0x20uLL);
      v15 = sub_29A008E1C(v14, v18);
      __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
    }

    *this = 2;
    sub_29A082F30(this + 8, &v21);
  }

  sub_29A082B84(&v25, *v26);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_29A085138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  sub_29A0840DC(v5 - 104);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::XformSample::setMatrix(uint64_t a1, uint64_t a2)
{
  Alembic::AbcGeom::v12::XformOp::XformOp(&v24, 3, 0);
  v4 = 0;
  for (i = 0; i != 4; ++i)
  {
    v6 = v4;
    v7 = 4;
    do
    {
      Alembic::AbcGeom::v12::XformOp::setChannelValue(&v24, v6, *(a2 + 8 * v6));
      ++v6;
      --v7;
    }

    while (v7);
    v4 += 4;
  }

  if (*(a1 + 33))
  {
    if (*a1 != 2)
    {
      sub_29A008864(v22);
      sub_29A00911C(v23, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v21, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v13 = sub_29A008E1C(exception, v21);
      __cxa_throw(v13, &unk_2A203B108, sub_29A008B08);
    }

    v8 = *(a1 + 40);
    Type = Alembic::AbcGeom::v12::XformOp::getType(&v24);
    if (Type != Alembic::AbcGeom::v12::XformOp::getType((*(a1 + 8) + 56 * v8)))
    {
      sub_29A008864(v22);
      v14 = sub_29A00911C(v23, "Cannot update mismatched op-type in already-setted ", 51);
      sub_29A00911C(v14, "XformSample!", 12);
      std::stringbuf::str();
      sub_29A008C60(v21, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v15 = __cxa_allocate_exception(0x20uLL);
      v16 = sub_29A008E1C(v15, v21);
      __cxa_throw(v16, &unk_2A203B108, sub_29A008B08);
    }

    v10 = *(a1 + 8) + 56 * v8;
    v11 = v24;
    *(v10 + 4) = v25;
    *v10 = v11;
    if (v10 != &v24)
    {
      sub_29A00CB24((v10 + 8), v26, v27, (v27 - v26) >> 3);
      sub_29A086068((v10 + 32), v28, v29);
    }

    *(a1 + 40) = (*(a1 + 40) + 1) % (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  }

  else
  {
    if ((*a1 | 2) != 2)
    {
      sub_29A008864(v22);
      sub_29A00911C(v23, "Cannot mix addOp() and set<Foo>() methods.", 42);
      std::stringbuf::str();
      sub_29A008C60(v21, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      v17 = __cxa_allocate_exception(0x20uLL);
      v18 = sub_29A008E1C(v17, v21);
      __cxa_throw(v18, &unk_2A203B108, sub_29A008B08);
    }

    *a1 = 2;
    sub_29A082F30(a1 + 8, &v24);
  }

  sub_29A082B84(&v28, *v29);
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }
}

void sub_29A0854B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7.__vftable = va_arg(va1, std::exception_vtbl *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_29A008F20(va);
  sub_29A008B0C(va1);
  sub_29A0840DC(v5 - 120);
  _Unwind_Resume(a1);
}

double Alembic::AbcGeom::v12::XformSample::getMatrix@<D0>(Alembic::AbcGeom::v12::XformSample *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
  v3 = *(this + 1);
  if (*(this + 2) != v3)
  {
    v5 = 0;
    v6 = 0.0;
    v71 = 1.0;
    v72 = 1.0;
    v7 = 0.0;
    v8 = 1.0;
    v9 = 0.0;
    v70 = 1.0;
    while (1)
    {
      v82 = 0u;
      v83 = 0u;
      v81 = 1.0;
      v84 = 1.0;
      v85 = 0u;
      v86 = 0u;
      *&v87[8] = 0u;
      v88 = 0u;
      *v87 = 0x3FF0000000000000;
      v89 = 1.0;
      v10 = (v3 + 56 * v5);
      v11 = *v10;
      v76 = *(v10 + 4);
      v75 = v11;
      v78 = 0;
      v79 = 0;
      __p = 0;
      sub_29A00C8EC(&__p, *(v10 + 1), *(v10 + 2), (*(v10 + 2) - *(v10 + 1)) >> 3);
      sub_29A086324(v80, (v10 + 8));
      Type = Alembic::AbcGeom::v12::XformOp::getType(&v75);
      v13 = Type;
      if (Type > 4)
      {
        if (Type == 5)
        {
          v73 = xmmword_29B432590;
          v74 = 0.0;
          ChannelValue = Alembic::AbcGeom::v12::XformOp::getChannelValue(&v75, 0);
          goto LABEL_20;
        }

        if (Type == 6)
        {
          v73 = 0uLL;
          v74 = 1.0;
          ChannelValue = Alembic::AbcGeom::v12::XformOp::getChannelValue(&v75, 0);
          goto LABEL_20;
        }
      }

      else
      {
        if (Type == 3)
        {
          v18 = 0;
          for (i = 0; i != 4; ++i)
          {
            v20 = v18;
            v21 = 4;
            do
            {
              *(&v81 + v20) = Alembic::AbcGeom::v12::XformOp::getChannelValue(&v75, v20);
              ++v20;
              --v21;
            }

            while (v21);
            v18 += 4;
          }

          goto LABEL_26;
        }

        if (Type == 4)
        {
          v73 = 0x3FF0000000000000uLL;
          v74 = 0.0;
          ChannelValue = Alembic::AbcGeom::v12::XformOp::getChannelValue(&v75, 0);
LABEL_20:
          v22 = ChannelValue;
          v23 = *(&v73 + 1) * *(&v73 + 1) + *&v73 * *&v73 + v74 * v74;
          if (v23 < 4.45014772e-308)
          {
            v24 = sub_29B284C54(&v73);
          }

          else
          {
            v24 = sqrt(v23);
          }

          if (v24 == 0.0)
          {
            v25 = 0.0;
            v26 = 0.0;
            v27 = 0.0;
          }

          else
          {
            v25 = *&v73 / v24;
            v26 = *(&v73 + 1) / v24;
            v27 = v74 / v24;
          }

          v28 = __sincos_stret(v22 * 3.14159265 / 180.0);
          v81 = v28.__cosval + v25 * v25 * (1.0 - v28.__cosval);
          *&v82 = v28.__sinval * v27 + v25 * v26 * (1.0 - v28.__cosval);
          *(&v82 + 1) = v25 * v27 * (1.0 - v28.__cosval) - v26 * v28.__sinval;
          *&v83 = 0;
          *(&v83 + 1) = v25 * v26 * (1.0 - v28.__cosval) - v27 * v28.__sinval;
          v84 = v28.__cosval + v26 * v26 * (1.0 - v28.__cosval);
          *&v85 = v28.__sinval * v25 + v26 * v27 * (1.0 - v28.__cosval);
          *(&v85 + 1) = 0;
          *&v86 = v28.__sinval * v26 + v25 * v27 * (1.0 - v28.__cosval);
          *(&v86 + 1) = v26 * v27 * (1.0 - v28.__cosval) - v25 * v28.__sinval;
          *v87 = v28.__cosval + v27 * v27 * (1.0 - v28.__cosval);
          *&v87[8] = 0u;
          v88 = 0u;
          goto LABEL_25;
        }
      }

      v15 = Alembic::AbcGeom::v12::XformOp::getChannelValue(&v75, 0);
      v16 = Alembic::AbcGeom::v12::XformOp::getChannelValue(&v75, 1uLL);
      v17 = Alembic::AbcGeom::v12::XformOp::getChannelValue(&v75, 2uLL);
      *&v73 = v15;
      *(&v73 + 1) = v16;
      v74 = v17;
      switch(v13)
      {
        case 2:
          ChannelValue = Alembic::AbcGeom::v12::XformOp::getChannelValue(&v75, 3uLL);
          goto LABEL_20;
        case 1:
          v82 = 0u;
          v83 = 0u;
          v81 = 1.0;
          v84 = 1.0;
          v85 = 0u;
          v86 = 0u;
          *v87 = xmmword_29B432B50;
          *&v87[16] = v15;
          *&v88 = v16;
          *(&v88 + 1) = v17;
          goto LABEL_25;
        case 0:
          v82 = 0u;
          v83 = 0u;
          v81 = v15;
          v84 = v16;
          v85 = 0u;
          v86 = 0u;
          *v87 = v17;
          *&v87[8] = 0u;
          v88 = 0u;
LABEL_25:
          v89 = 1.0;
          break;
      }

LABEL_26:
      v29 = *(a2 + 24);
      v30 = *(a2 + 32);
      v31 = *(a2 + 64);
      v32 = *(a2 + 72);
      v34 = *(a2 + 96);
      v33 = *(a2 + 104);
      v35 = *(a2 + 16);
      v36 = *(a2 + 112);
      v37 = *(a2 + 56);
      v62 = *&v82;
      v67 = v81;
      v64 = *&v83;
      v65 = *(&v82 + 1);
      v38 = *&v82 * v37 + v81 * v29 + *(&v82 + 1) * v9 + *&v83 * v70;
      v39 = v84;
      v40 = v85;
      v41 = v30 * v84 + *(&v83 + 1) * v71 + *&v85 * v31 + *(&v85 + 1) * v34;
      v55 = *(&v83 + 1);
      v42 = v37 * v84 + *(&v83 + 1) * v29 + *&v85 * v9 + *(&v85 + 1) * v70;
      v66 = v35;
      v58 = v37;
      v59 = v36;
      v63 = v29;
      v43 = v30 * *&v88 + *&v87[16] * v71 + *(&v88 + 1) * v31 + v89 * v34;
      v44 = v72 * *&v88 + *&v87[16] * v6 + *(&v88 + 1) * v32 + v89 * v33;
      v69 = v8;
      v45 = v7 * *&v88 + *&v87[16] * v35 + *(&v88 + 1) * v8 + v89 * v36;
      v46 = v37 * *&v88 + *&v87[16] * v29 + *(&v88 + 1) * v9 + v89 * v70;
      v47 = v86;
      *(a2 + 16) = *&v82 * v7 + v81 * v35 + *(&v82 + 1) * v8 + *&v83 * v36;
      *(a2 + 24) = v38;
      v48 = v6;
      v50 = *v87;
      v49 = *&v87[8];
      *(a2 + 32) = v41;
      v56 = v34;
      v57 = v30;
      *(a2 + 56) = v42;
      *(a2 + 64) = v30 * *(&v47 + 1) + *&v47 * v71 + v50 * v31 + v49 * v34;
      v68 = v48;
      v60 = v33;
      v61 = v32;
      *(a2 + 72) = v72 * *(&v47 + 1) + *&v47 * v48 + v50 * v32 + v49 * v33;
      *(a2 + 96) = v43;
      *(a2 + 104) = v44;
      *(a2 + 112) = v45;
      *(a2 + 120) = v46;
      v54 = v46;
      sub_29A082B84(v80, v80[1]);
      if (__p)
      {
        v78 = __p;
        operator delete(__p);
      }

      v51 = v62 * v72 + v67 * v68 + v65 * v61 + v64 * v60;
      v71 = v62 * v57 + v67 * v71 + v65 * v31 + v64 * v56;
      v72 = v72 * v39 + v55 * v68 + *&v40 * v61 + *(&v40 + 1) * v60;
      v52 = v7 * v39 + v55 * v66 + *&v40 * v8 + *(&v40 + 1) * v59;
      v8 = v7 * *(&v47 + 1) + *&v47 * v66 + v50 * v8 + v49 * v59;
      ++v5;
      v3 = *(this + 1);
      v9 = v58 * *(&v47 + 1) + *&v47 * v63 + v50 * v9 + v49 * v70;
      v6 = v51;
      v7 = v7 * v39 + v55 * v66 + *&v40 * v69 + *(&v40 + 1) * v59;
      v70 = v54;
      if (v5 >= 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v3) >> 3))
      {
        goto LABEL_35;
      }
    }
  }

  v8 = 1.0;
  v9 = 0.0;
  v52 = 0.0;
  v51 = 0.0;
  v71 = 1.0;
  v72 = 1.0;
LABEL_35:
  *a2 = v71;
  *(a2 + 8) = v51;
  result = v72;
  *(a2 + 40) = v72;
  *(a2 + 48) = v52;
  *(a2 + 80) = v8;
  *(a2 + 88) = v9;
  return result;
}

void sub_29A085B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *__p, uint64_t a39)
{
  *v39 = a31;
  v39[1] = v41;
  v39[5] = a32;
  v39[6] = v43;
  v39[10] = v42;
  v39[11] = v40;
  sub_29A0840DC(&a37);
  _Unwind_Resume(a1);
}

double Alembic::AbcGeom::v12::XformSample::getTranslation@<D0>(Alembic::AbcGeom::v12::XformSample *this@<X0>, uint64_t a2@<X8>)
{
  Alembic::AbcGeom::v12::XformSample::getMatrix(this, v4);
  result = v5;
  *a2 = v4[6];
  *(a2 + 16) = result;
  return result;
}

BOOL sub_29A085C28(float64x2_t *a1, float64x2_t *a2, int a3)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v5 = a1[5];
  v8[4] = a1[4];
  v8[5] = v5;
  v6 = a1[7];
  v8[6] = a1[6];
  v8[7] = v6;
  return sub_29A086A80(v8, a2, v9, a3);
}

double *sub_29A085C74@<X0>(double *result@<X0>, double *a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = result[5];
  v3 = result[10];
  v4 = *result + v2 + v3;
  if (v4 <= 0.0)
  {
    v10 = v2 > *result;
    if (v3 > result[4 * v10 + v10])
    {
      v10 = 2;
    }

    v11 = dword_29B432B60[v10];
    v12 = dword_29B432B60[v11];
    v13 = &result[4 * v10];
    v14 = &result[4 * v11];
    v15 = &result[4 * v12];
    v16 = sqrt(v13[v10] - (v14[v11] + v15[v12]) + 1.0);
    *&v17[v10] = v16 * 0.5;
    if (v16 != 0.0)
    {
      v16 = 0.5 / v16;
    }

    v18 = (v14[v12] - v15[v11]) * v16;
    *&v17[v11] = v16 * (v13[v11] + v14[v10]);
    *&v17[v12] = v16 * (v13[v12] + v15[v10]);
    v7 = *v17;
    v8 = *&v17[1];
    v9 = *&v17[2];
    *a2 = v18;
  }

  else
  {
    v5 = sqrt(v4 + 1.0);
    *a2 = v5 * 0.5;
    v6 = 0.5 / v5;
    v7 = 0.5 / v5 * (result[6] - result[9]);
    v8 = v6 * (result[8] - result[2]);
    v9 = v6 * (result[1] - result[4]);
  }

  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

long double Alembic::AbcGeom::v12::XformSample::getAngle(Alembic::AbcGeom::v12::XformSample *this)
{
  Alembic::AbcGeom::v12::XformSample::getMatrix(this, v5);
  sub_29A085C74(v5, &v6);
  v1 = v7.f64[1] * v7.f64[1] + v7.f64[0] * v7.f64[0] + v8 * v8;
  if (v1 < 4.45014772e-308)
  {
    v2 = sub_29B284C54(&v7);
  }

  else
  {
    v2 = sqrt(v1);
  }

  v3 = atan2(v2, v6);
  return (v3 + v3) * 57.2957795;
}

double Alembic::AbcGeom::v12::XformSample::getXRotation(Alembic::AbcGeom::v12::XformSample *this)
{
  Alembic::AbcGeom::v12::XformSample::getMatrix(this, v2);
  sub_29B284A0C(v2, v3);
  return v3[0] * 57.2957795;
}

void Alembic::AbcGeom::v12::XformSample::clear(Alembic::AbcGeom::v12::XformSample *this)
{
  *(this + 33) = 0;
  sub_29A085EF8(this + 8, 0);
  *this = 0;
  *(this + 5) = 0;
  *(this + 32) = 1;
}

void sub_29A085EF8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A086F84(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (v3 != v7)
    {
      v3 -= 56;
      sub_29A086924(a1, v3);
    }

    *(a1 + 8) = v7;
  }
}

void Alembic::AbcGeom::v12::XformSample::reset(Alembic::AbcGeom::v12::XformSample *this)
{
  *(this + 33) = 0;
  sub_29A085EF8(this + 8, 0);
  *this = 0;
  *(this + 5) = 0;
  *(this + 32) = 1;
}

BOOL Alembic::AbcGeom::v12::XformSample::isTopologyEqual(Alembic::AbcGeom::v12::XformSample *this, const Alembic::AbcGeom::v12::XformSample *a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(a2 + 1);
  if (v2 - v3 != *(a2 + 2) - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    Type = Alembic::AbcGeom::v12::XformOp::getType(v3);
    v7 = Type == Alembic::AbcGeom::v12::XformOp::getType(v4);
    result = v7;
    if (!v7)
    {
      break;
    }

    v3 = (v3 + 56);
    v4 = (v4 + 56);
  }

  while (v3 != *(this + 2));
  return result;
}

uint64_t **sub_29A086068(uint64_t **result, unsigned int *a2, unsigned int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = v9[7];
          sub_29A0861CC(v5, v8);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = sub_29A028760(v15);
          }

          v10 = *(v9 + 1);
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_29A08623C(&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A086294(v5, a2 + 7);
      v12 = *(a2 + 1);
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
          v13 = *(a2 + 2);
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_29A0861B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A08623C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0861CC(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_29A08623C(uint64_t a1)
{
  sub_29A082B84(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29A082B84(*a1, v2);
  }

  return a1;
}

uint64_t *sub_29A086294(uint64_t **a1, unsigned int *a2)
{
  v4 = operator new(0x20uLL);
  v5 = *a2;
  *(v4 + 7) = *a2;
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= *(v7 + 7))
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v6, v8, v4);
  return v4;
}

uint64_t *sub_29A086324(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29A08637C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_29A08637C(uint64_t *result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29A086404(v5, v5 + 1, v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29A086404(uint64_t **a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v6 = sub_29A08648C(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x20uLL);
    *(v7 + 7) = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t *sub_29A08648C(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_29A086634(uint64_t a1, int *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_29A00C9A4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
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
  v15 = &v7[14 * v2];
  *(&v16 + 1) = &v7[14 * v6];
  sub_29A086780(a1, v15, a2);
  *&v16 = v15 + 14;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_29A086804(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A086A04(&v14);
  return v13;
}

void sub_29A08676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A086A04(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A086780(uint64_t a1, uint64_t a2, int *a3)
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

void sub_29A0867E8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A086804(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A0868B8(a1, a4, v7);
      v7 += 14;
      a4 = v12 + 56;
      v12 += 56;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A086924(a1, v5);
      v5 += 56;
    }
  }

  return sub_29A086978(v9);
}

void sub_29A0868B8(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  *(a2 + 4) = *(a3 + 4);
  *a2 = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 8) = *(a3 + 2);
  *(a2 + 24) = *(a3 + 3);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = 0;
  *(a2 + 32) = *(a3 + 4);
  v4 = a3 + 10;
  v5 = *(a3 + 5);
  *(a2 + 40) = v5;
  v6 = a2 + 40;
  v7 = *(a3 + 6);
  *(a2 + 48) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a3 + 4) = v4;
    *v4 = 0;
    *(a3 + 6) = 0;
  }

  else
  {
    *(a2 + 32) = v6;
  }
}

void sub_29A086924(uint64_t a1, uint64_t a2)
{
  sub_29A082B84(a2 + 32, *(a2 + 40));
  v3 = *(a2 + 8);
  if (v3)
  {
    *(a2 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t sub_29A086978(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A0869B0(a1);
  }

  return a1;
}

void sub_29A0869B0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_29A086924(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A086A04(void **a1)
{
  sub_29A086A38(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A086A38(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29A086924(v4, i - 56);
  }
}

BOOL sub_29A086A80(float64x2_t *a1, float64x2_t *a2, double *a3, int a4)
{
  v8 = 0;
  v74 = *MEMORY[0x29EDCA608];
  v9 = a1->f64[0];
  v10 = a1->f64[1];
  v11 = a1[1].f64[0];
  v68.f64[0] = a1->f64[0];
  v68.f64[1] = v10;
  v69 = v11;
  v12 = a1[3].f64[0];
  v70 = a1[2];
  v71 = v12;
  v13 = a1[5].f64[0];
  v72 = a1[4];
  v73 = v13;
  v14 = 0.0;
  v15 = &v68;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v17 = v15->f64[i];
      if (v17 <= 0.0)
      {
        v17 = -v17;
      }

      if (v17 > v14)
      {
        v14 = v17;
      }
    }

    ++v8;
    v15 = (v15 + 24);
  }

  while (v8 != 3);
  v67 = v14;
  if (v14 == 0.0)
  {
LABEL_14:
    v22 = v10 * v10 + v9 * v9 + v11 * v11;
    if (v22 < 4.45014772e-308)
    {
      v23 = sub_29B284C54(&v68);
    }

    else
    {
      v23 = sqrt(v22);
    }

    a2->f64[0] = v23;
    result = sub_29A086E78(a2->f64, &v68, a4);
    if (result)
    {
      v24 = a2->f64[0];
      v25 = vdivq_f64(v68, vdupq_lane_s64(*&a2->f64[0], 0));
      v68 = v25;
      v26 = v70.f64[0];
      v27 = v69 / v24;
      v28 = v70.f64[1];
      v29 = v71;
      v30 = vmuld_lane_f64(v70.f64[1], v25, 1) + v25.f64[0] * v70.f64[0] + v27 * v71;
      *a3 = v30;
      v69 = v27;
      v70.f64[0] = v26 - v30 * v25.f64[0];
      v70.f64[1] = v28 - vmuld_lane_f64(v30, v25, 1);
      v71 = v29 - v27 * v30;
      v31 = v70.f64[1] * v70.f64[1] + v70.f64[0] * v70.f64[0] + v71 * v71;
      v32 = v31 < 4.45014772e-308 ? sub_29B284C54(&v70) : sqrt(v31);
      a2->f64[1] = v32;
      v33 = &a2->f64[1];
      result = sub_29A086E78(&a2->f64[1], &v70, a4);
      if (result)
      {
        v34 = *v33;
        v35 = vdivq_f64(v70, vdupq_lane_s64(*v33, 0));
        v70 = v35;
        v36 = v72.f64[0];
        v37 = v71 / v34;
        v38 = v68;
        v39 = v72.f64[1];
        v40 = v73;
        v41 = v69;
        v42 = v68.f64[1] * v72.f64[1] + v68.f64[0] * v72.f64[0] + v69 * v73;
        *a3 = *a3 / v34;
        a3[1] = v42;
        v43 = v36 - v38.f64[0] * v42;
        v44 = v39 - v38.f64[1] * v42;
        v45 = v40 - v41 * v42;
        v46 = vmuld_lane_f64(v44, v35, 1) + v35.f64[0] * v43 + v37 * v45;
        a3[2] = v46;
        v71 = v37;
        v72.f64[0] = v43 - v46 * v35.f64[0];
        v72.f64[1] = v44 - vmuld_lane_f64(v46, v35, 1);
        v73 = v45 - v37 * v46;
        v47 = v72.f64[1] * v72.f64[1] + v72.f64[0] * v72.f64[0] + v73 * v73;
        v48 = v47 < 4.45014772e-308 ? sub_29B284C54(&v72) : sqrt(v47);
        a2[1].f64[0] = v48;
        v49 = &a2[1];
        result = sub_29A086E78(a2[1].f64, &v72, a4);
        if (result)
        {
          v50 = *v49;
          _Q1 = vdivq_f64(v72, vdupq_lane_s64(*v49, 0));
          v73 = v73 / *v49;
          v52 = v73;
          v53 = a3[2];
          a3[1] = a3[1] / v50;
          a3[2] = v53 / *v49;
          _D5 = v70.f64[0];
          v72 = _Q1;
          __asm { FMLA            D0, D5, V1.D[1] }

          if (v68.f64[1] * (v71 * _Q1.f64[0] - v70.f64[0] * v52) + v68.f64[0] * (vmuld_lane_f64(-v71, _Q1, 1) + v70.f64[1] * v52) + v69 * _D0 < 0.0)
          {
            v60 = 0;
            v61 = &v69;
            do
            {
              a2->f64[v60] = -a2->f64[v60];
              *(v61 - 1) = vnegq_f64(*(v61 - 2));
              *v61 = -*v61;
              v61 += 3;
              ++v60;
            }

            while (v60 != 3);
          }

          v62 = &v69;
          f64 = a1[1].f64;
          v64 = 3;
          do
          {
            *(f64 - 1) = *(v62 - 1);
            v65 = *v62;
            v62 += 3;
            *f64 = v65;
            f64 += 4;
            --v64;
          }

          while (v64);
          v66 = v67;
          *a2 = vmulq_n_f64(*a2, v67);
          a2[1].f64[0] = v66 * a2[1].f64[0];
          return 1;
        }
      }
    }
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v19 = (&v68 + v18);
      result = sub_29A086E78(&v67, &v68 + v18, a4);
      if (!result)
      {
        break;
      }

      v21 = v67;
      *v19 = vdivq_f64(*v19, vdupq_lane_s64(*&v67, 0));
      v19[1].f64[0] = v19[1].f64[0] / v21;
      v18 += 24;
      if (v18 == 72)
      {
        v10 = v68.f64[1];
        v9 = v68.f64[0];
        v11 = v69;
        goto LABEL_14;
      }
    }
  }

  return result;
}

BOOL sub_29A086E78(double *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = *a1;
  if (*a1 <= 0.0)
  {
    v5 = -*a1;
  }

  while (1)
  {
    if (v5 < 1.0)
    {
      v6 = *(a2 + 8 * v3);
      if (v6 <= 0.0)
      {
        v6 = -v6;
      }

      if (v6 >= v5 * 1.79769313e308)
      {
        break;
      }
    }

    v4 = v3++ > 1;
    if (v3 == 3)
    {
      return 1;
    }
  }

  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_29A086F50(exception, "Cannot remove zero scaling from matrix.");
    __cxa_throw(exception, off_29F294A18, MEMORY[0x29EDC9340]);
  }

  return v4;
}

std::logic_error *sub_29A086F50(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D0] + 16);
  return result;
}

void **sub_29A086F84(void **result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = (v5 + 56 * a2);
      v12 = 56 * a2;
      do
      {
        result = Alembic::AbcGeom::v12::XformOp::XformOp(v5);
        v5 = (v5 + 56);
        v12 -= 56;
      }

      while (v12);
      v5 = v11;
    }

    *(v3 + 8) = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *result) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      sub_29A00C9A4();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    v23 = result;
    if (v9)
    {
      v10 = sub_29A040BCC(result, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[14 * v6];
    v20 = v10;
    v21 = v13;
    *&v22 = v13;
    *(&v22 + 1) = &v10[14 * v9];
    v14 = 56 * a2;
    v15 = v13 + 56 * a2;
    do
    {
      Alembic::AbcGeom::v12::XformOp::XformOp(v13);
      v13 = (v13 + 56);
      v14 -= 56;
    }

    while (v14);
    *&v22 = v15;
    v16 = *(v3 + 8);
    v17 = v21 + *v3 - v16;
    sub_29A086804(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 16);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return sub_29A086A04(&v20);
  }

  return result;
}

void sub_29A087104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A086A04(va);
  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::IXformSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a1 + 8;
  v99 = "IXformSchema::init()";
  __p[1] = 0;
  v68 = 0;
  __p[0] = &__p[1];
  v93 = 2;
  sub_29A019350(v94, __p);
  v96 = 0;
  v95 = 0u;
  v97 = 1;
  sub_29A01752C(__p, __p[1]);
  sub_29A02E010(a2, &v93);
  sub_29A02E010(a3, &v93);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(__p, ".childBnds");
  v8 = (*(*v7 + 80))(v7, __p);
  v9 = v8;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else if (!v8)
  {
    goto LABEL_17;
  }

  v88 = v7;
  v89 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v74) = 0;
  LODWORD(v75) = 0;
  v86 = 0;
  v87 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v90, &v88, &v74, &v86);
  sub_29A008E78(&v83, ".childBnds");
  sub_29A03DA60(__p, &v90, &v83, a2, a3);
  *(a1 + 56) = __p[0];
  std::string::operator=((a1 + 64), &__p[1]);
  v11 = v69;
  v10 = v70;
  if (v70)
  {
    atomic_fetch_add_explicit(v70 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 96);
  *(a1 + 88) = v11;
  *(a1 + 96) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(__p);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v90);
  if (v89)
  {
    sub_29A014BEC(v89);
  }

LABEL_17:
  sub_29A008E78(__p, ".inherits");
  v13 = (*(*v7 + 80))(v7, __p);
  v14 = v13;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  else if (!v13)
  {
    goto LABEL_31;
  }

  v81 = v7;
  v82 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v74) = 0;
  LODWORD(v75) = 0;
  v86 = 0;
  v87 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v90, &v81, &v74, &v86);
  sub_29A008E78(&v83, ".inherits");
  sub_29A088FF8(__p, &v90, &v83, a2, a3);
  *(a1 + 120) = __p[0];
  std::string::operator=((a1 + 128), &__p[1]);
  v16 = v69;
  v15 = v70;
  if (v70)
  {
    atomic_fetch_add_explicit(v70 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 160);
  *(a1 + 152) = v16;
  *(a1 + 160) = v15;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(__p);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(v83);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v90);
  if (v82)
  {
    sub_29A014BEC(v82);
  }

LABEL_31:
  *(a1 + 320) = 0;
  sub_29A008E78(__p, ".vals");
  v18 = (*(*v7 + 80))(v7, __p);
  v19 = v18;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
    if (!v19)
    {
      goto LABEL_41;
    }
  }

  else if (!v18)
  {
    goto LABEL_41;
  }

  if (*(v19 + 24) == 1)
  {
    (*(*v7 + 88))(__p, v7, v19);
  }

  else
  {
    *(a1 + 320) = 1;
    (*(*v7 + 96))(__p, v7, v19);
  }

  v20 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v21 = *(a1 + 112);
  *(a1 + 104) = v20;
  if (v21)
  {
    sub_29A014BEC(v21);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

LABEL_41:
  *(a1 + 265) = 1;
  sub_29A008E78(__p, "isNotConstantIdentity");
  v22 = (*(*v7 + 80))(v7, __p);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
  }

  if (v22)
  {
    *(a1 + 265) = 0;
  }

  *(a1 + 264) = 1;
  v23 = *(a1 + 104);
  if (v23)
  {
    if (*(a1 + 320) == 1)
    {
      (*(*v23 + 48))(__p);
    }

    else
    {
      (*(*v23 + 40))(__p);
    }

    *(a1 + 264) = (*(*__p[0] + 72))(__p[0]);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }
  }

  if (*(a1 + 264) != 1)
  {
    isConstant = 0;
    goto LABEL_60;
  }

  if (*(a1 + 151) < 0)
  {
    if (*(a1 + 136))
    {
      goto LABEL_59;
    }
  }

  else if (*(a1 + 151))
  {
    goto LABEL_59;
  }

  if (*(a1 + 152))
  {
    isConstant = Alembic::Abc::v12::IScalarProperty::isConstant((a1 + 120));
    goto LABEL_60;
  }

LABEL_59:
  isConstant = 1;
LABEL_60:
  *(a1 + 264) = isConstant;
  v84 = 0;
  v85 = 0;
  v83 = &v84;
  sub_29A008E78(__p, ".animChans");
  v25 = (*(*v7 + 80))(v7, __p);
  v26 = v25;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
    if (!v26)
    {
      goto LABEL_85;
    }
  }

  else if (!v25)
  {
    goto LABEL_85;
  }

  v79 = v7;
  v80 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v86 = 0;
  v87 = 0;
  v77 = 0;
  v78 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v90, &v79, &v86, &v77);
  sub_29A008E78(&v74, ".animChans");
  v72 = 0;
  v73 = 0;
  v71[0] = 0;
  v71[2] = 0;
  sub_29A048DCC(__p, &v90, &v74, &v72, v71);
  if (v76 < 0)
  {
    operator delete(v74);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v90);
  if (v80)
  {
    sub_29A014BEC(v80);
  }

  if (Alembic::Abc::v12::IArrayProperty::getNumSamples(__p))
  {
    v74 = 0;
    v75 = 0;
    v90 = (Alembic::Abc::v12::IArrayProperty::getNumSamples(__p) - 1);
    v91 = 0;
    v92 = 2;
    sub_29A08817C(__p, &v74, &v90);
    v27 = v74;
    if (v74)
    {
      for (i = 0; ; ++i)
      {
        v29 = v27[2];
        v30 = v27[3] - v29;
        if (v30)
        {
          v31 = v30 >> 3;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = 1;
          do
          {
            v33 = *v29++;
            v32 *= v33;
            --v31;
          }

          while (v31);
        }

        else
        {
          v32 = 0;
        }

        if (i >= v32)
        {
          break;
        }

        sub_29A089628(&v83, (*v27 + 4 * i), (*v27 + 4 * i));
        v27 = v74;
      }
    }

    if (v75)
    {
      sub_29A014BEC(v75);
    }
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(__p);
LABEL_85:
  sub_29A008E78(__p, ".ops");
  v34 = (*(*v7 + 80))(v7, __p);
  v35 = v34;
  if ((SHIBYTE(v68) & 0x80000000) == 0)
  {
    if (v34)
    {
      goto LABEL_87;
    }

LABEL_91:
    v37 = 0;
    goto LABEL_119;
  }

  operator delete(__p[0]);
  if (!v35)
  {
    goto LABEL_91;
  }

LABEL_87:
  sub_29A008E78(__p, ".ops");
  (*(*v7 + 88))(&v90, v7, __p);
  v36 = v90;
  v37 = v91;
  v90 = 0;
  v91 = 0;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
    if (!v36)
    {
      goto LABEL_119;
    }
  }

  else if (!v36)
  {
    goto LABEL_119;
  }

  if ((*(*v36 + 64))(v36))
  {
    v38 = (*(*v36 + 16))(v36);
    if (*(v38 + 56) != 1)
    {
      goto LABEL_147;
    }

    v39 = *(v38 + 60);
    v62 = v37;
    sub_29A0104F4(&v90, v39);
    (*(*v36 + 80))(v36, 0, v90, 0);
    if (v39)
    {
      for (j = 0; j != v39; ++j)
      {
        Alembic::AbcGeom::v12::XformOp::XformOp(__p, v90[j]);
        Alembic::AbcGeom::v12::XformSample::addOp((a1 + 272), __p);
        sub_29A082B84(&v69, v70);
        if (__p[1])
        {
          v68 = __p[1];
          operator delete(__p[1]);
        }
      }
    }

    v41 = v83;
    if (v83 != &v84)
    {
      v42 = 0;
      v43 = 0;
      v44 = *(a1 + 280);
      v45 = *(a1 + 288);
      do
      {
        if (v44 != v45)
        {
          v46 = *(v41 + 7);
          v47 = v42;
          while (1)
          {
            NumChannels = Alembic::AbcGeom::v12::XformOp::getNumChannels(v44);
            if (v47 < NumChannels)
            {
              break;
            }

LABEL_107:
            v47 = 0;
            v42 = 0;
            v44 += 7;
            if (v44 == v45)
            {
              goto LABEL_110;
            }
          }

          while (v46 != v43)
          {
            ++v47;
            ++v43;
            if (NumChannels == v47)
            {
              goto LABEL_107;
            }
          }

          LODWORD(__p[0]) = v47;
          sub_29A089628(v44 + 4, __p, __p);
          v42 = v47 + 1;
          v43 = v46 + 1;
        }

LABEL_110:
        v49 = v41[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = v41[2];
            v51 = *v50 == v41;
            v41 = v50;
          }

          while (!v51);
        }

        v41 = v50;
      }

      while (v50 != &v84);
    }

    if (v90)
    {
      v91 = v90;
      operator delete(v90);
    }

    v37 = v62;
  }

LABEL_119:
  sub_29A008E78(__p, ".arbGeomParams");
  v52 = (*(*v7 + 80))(v7, __p);
  v53 = v52;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
    if (!v53)
    {
      goto LABEL_133;
    }
  }

  else if (!v52)
  {
    goto LABEL_133;
  }

  v65 = v7;
  v66 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v86 = 0;
  v87 = 0;
  v77 = 0;
  v78 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v90, &v65, &v86, &v77);
  sub_29A008E78(&v74, ".arbGeomParams");
  v72 = 1;
  v73 = v93;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(__p, &v90, &v74, &v72);
  *(a1 + 168) = __p[0];
  std::string::operator=((a1 + 176), &__p[1]);
  v55 = v69;
  v54 = v70;
  if (v70)
  {
    atomic_fetch_add_explicit(v70 + 1, 1uLL, memory_order_relaxed);
  }

  v56 = *(a1 + 208);
  *(a1 + 200) = v55;
  *(a1 + 208) = v54;
  if (v56)
  {
    sub_29A014BEC(v56);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(__p);
  if (v76 < 0)
  {
    operator delete(v74);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v90);
  if (v66)
  {
    sub_29A014BEC(v66);
  }

LABEL_133:
  sub_29A008E78(__p, ".userProperties");
  v57 = (*(*v7 + 80))(v7, __p);
  v58 = v57;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
    if (!v58)
    {
      goto LABEL_147;
    }
  }

  else if (!v57)
  {
    goto LABEL_147;
  }

  v63 = v7;
  v64 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v86 = 0;
  v87 = 0;
  v77 = 0;
  v78 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v90, &v63, &v86, &v77);
  sub_29A008E78(&v74, ".userProperties");
  v72 = 1;
  v73 = v93;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(__p, &v90, &v74, &v72);
  *(a1 + 216) = __p[0];
  std::string::operator=((a1 + 224), &__p[1]);
  v60 = v69;
  v59 = v70;
  if (v70)
  {
    atomic_fetch_add_explicit(v70 + 1, 1uLL, memory_order_relaxed);
  }

  v61 = *(a1 + 256);
  *(a1 + 248) = v60;
  *(a1 + 256) = v59;
  if (v61)
  {
    sub_29A014BEC(v61);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(__p);
  if (v76 < 0)
  {
    operator delete(v74);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v90);
  if (v64)
  {
    sub_29A014BEC(v64);
  }

LABEL_147:
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  sub_29A082B84(&v83, v84);
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  if (*(&v95 + 1))
  {
    sub_29A014BEC(*(&v95 + 1));
  }

  sub_29A01752C(v94, v94[1]);
}

void sub_29A087DA8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (v47)
  {
    sub_29A014BEC(v47);
  }

  sub_29A02E0BC(v48 - 168);
  v51 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v52 = v51;
    sub_29A0881F8(v46);
    sub_29A02D768(v48 - 104, v52);
  }

  else
  {
    sub_29A0881F8(v46);
    sub_29A02D6F8(v48 - 104, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A087D88);
}