void sub_29A040B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A040D84(va);
  _Unwind_Resume(a1);
}

void *sub_29A040B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    sub_29A008D14(v5, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *v5 = v6;
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return sub_29A00C8EC((a2 + 32), *(a3 + 32), *(a3 + 40), (*(a3 + 40) - *(a3 + 32)) >> 3);
}

void sub_29A040BB0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A040BCC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x492492492492493)
  {
    sub_29A00C8B8();
  }

  return operator new(56 * a2);
}

uint64_t sub_29A040C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_29A040990(a1, v5);
      v5 += 56;
    }
  }

  return sub_29A040CF8(v10);
}

uint64_t sub_29A040CF8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A040D30(a1);
  }

  return a1;
}

void sub_29A040D30(uint64_t *a1)
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
      sub_29A040990(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A040D84(void **a1)
{
  sub_29A040DB8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A040DB8(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_29A040990(v4, i - 56);
  }
}

void Alembic::AbcGeom::v12::ICameraSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v94 = a1 + 8;
  v95 = "ICameraSchema::init()";
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v66.__r_.__value_.__l.__data_ = 0uLL;
  p_p = &v66;
  v89 = 2;
  sub_29A019350(v90, &p_p);
  v92 = 0;
  v91 = 0u;
  v93 = 1;
  sub_29A01752C(&p_p, v66.__r_.__value_.__l.__data_);
  sub_29A02E010(a2, &v89);
  sub_29A02E010(a3, &v89);
  v86 = v8;
  v87 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v88, &v86, &v84, &v82);
  sub_29A008E78(&__p, ".core");
  v77 = 1;
  v78 = v89;
  Alembic::Abc::v12::IScalarProperty::IScalarProperty(&p_p, v88, &__p, &v77);
  *(a1 + 56) = p_p;
  std::string::operator=((a1 + 64), &v66);
  v9 = v67;
  if (*(&v67 + 1))
  {
    atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 96);
  *(a1 + 88) = v9;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&p_p);
  if (v81 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v88);
  if (v87)
  {
    sub_29A014BEC(v87);
  }

  sub_29A008E78(&p_p, ".childBnds");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v12 = PropertyHeader;
  if (v66.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  else if (!PropertyHeader)
  {
    goto LABEL_27;
  }

  v75 = v8;
  v76 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v88, &v75, &v84, &v82);
  sub_29A008E78(&__p, ".childBnds");
  sub_29A03DA60(&p_p, v88, &__p, a2, a3);
  *(a1 + 104) = p_p;
  std::string::operator=((a1 + 112), &v66);
  v13 = v67;
  if (*(&v67 + 1))
  {
    atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 144);
  *(a1 + 136) = v13;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&p_p);
  if (v81 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v88);
  if (v76)
  {
    sub_29A014BEC(v76);
  }

LABEL_27:
  sub_29A008E78(&p_p, ".arbGeomParams");
  v15 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v16 = v15;
  if (v66.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else if (!v15)
  {
    goto LABEL_41;
  }

  v73 = v8;
  v74 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v88, &v73, &v84, &v82);
  sub_29A008E78(&__p, ".arbGeomParams");
  v77 = 1;
  v78 = v89;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&p_p, v88, &__p, &v77);
  *(a1 + 152) = p_p;
  std::string::operator=((a1 + 160), &v66);
  v17 = v67;
  if (*(&v67 + 1))
  {
    atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 192);
  *(a1 + 184) = v17;
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&p_p);
  if (v81 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v88);
  if (v74)
  {
    sub_29A014BEC(v74);
  }

LABEL_41:
  sub_29A008E78(&p_p, ".userProperties");
  v19 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v20 = v19;
  if (v66.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
    if (!v20)
    {
      goto LABEL_55;
    }
  }

  else if (!v19)
  {
    goto LABEL_55;
  }

  v71 = v8;
  v72 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v88, &v71, &v84, &v82);
  sub_29A008E78(&__p, ".userProperties");
  v77 = 1;
  v78 = v89;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&p_p, v88, &__p, &v77);
  *(a1 + 200) = p_p;
  std::string::operator=((a1 + 208), &v66);
  v21 = v67;
  if (*(&v67 + 1))
  {
    atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 240);
  *(a1 + 232) = v21;
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&p_p);
  if (v81 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v88);
  if (v72)
  {
    sub_29A014BEC(v72);
  }

LABEL_55:
  sub_29A008E78(&p_p, ".filmBackOps");
  v23 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v24 = v23;
  if (v66.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
    if (!v24)
    {
      goto LABEL_104;
    }
  }

  else if (!v23)
  {
    goto LABEL_104;
  }

  v25 = *(v24 + 24);
  if (v25 == 2)
  {
    v63 = v8;
    v64 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&p_p, &v63, &v84, &v82);
    sub_29A008E78(&__p, ".filmBackOps");
    sub_29A0427FC(v88, &p_p, &__p, a2, a3);
    if (v81 < 0)
    {
      operator delete(__p);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&p_p);
    if (v64)
    {
      sub_29A014BEC(v64);
    }

    v57 = a2;
    v58 = a3;
    __p = 0;
    v80 = 0;
    p_p = 0;
    v66.__r_.__value_.__r.__words[0] = 0;
    LODWORD(v66.__r_.__value_.__r.__words[1]) = 2;
    sub_29A041D34(v88, &__p, &p_p);
    if (__p)
    {
      v36 = *(__p + 2);
      v37 = *(__p + 3) - v36;
      if (v37)
      {
        v38 = v37 >> 3;
        if (v38 <= 1)
        {
          v38 = 1;
        }

        v39 = 1;
        do
        {
          v40 = *v36++;
          v39 *= v40;
          --v38;
        }

        while (v38);
      }

      else
      {
        v39 = 0;
      }

      sub_29A041C90(a1 + 344, v39);
      if (v39)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          Alembic::AbcGeom::v12::FilmBackXformOp::FilmBackXformOp(&p_p, *__p + v42);
          v43 = *(a1 + 344);
          v44 = v43 + v41;
          *(v43 + v41) = p_p;
          if (*(v43 + v41 + 31) < 0)
          {
            operator delete(*(v44 + 8));
          }

          v45 = *&v66.__r_.__value_.__l.__data_;
          *(v44 + 24) = *(&v66.__r_.__value_.__l + 2);
          *(v44 + 8) = v45;
          *(&v66.__r_.__value_.__s + 23) = 0;
          v66.__r_.__value_.__s.__data_[0] = 0;
          v48 = *(v44 + 32);
          v47 = (v44 + 32);
          v46 = v48;
          if (v48)
          {
            *(v43 + v41 + 40) = v46;
            operator delete(v46);
            *v47 = 0;
            v47[1] = 0;
            v47[2] = 0;
          }

          *v47 = v67;
          *(v43 + v41 + 48) = v68;
          v67 = 0uLL;
          v68 = 0;
          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          v42 += 24;
          v41 += 56;
          --v39;
        }

        while (v39);
      }
    }

    if (v80)
    {
      sub_29A014BEC(v80);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v88);
  }

  else
  {
    if (v25 != 1)
    {
      goto LABEL_104;
    }

    v69 = v8;
    v70 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&p_p, &v69, &v84, &v82);
    sub_29A008E78(&__p, ".filmBackOps");
    v77 = 1;
    v78 = v89;
    Alembic::Abc::v12::IScalarProperty::IScalarProperty(v88, &p_p, &__p, &v77);
    if (v81 < 0)
    {
      operator delete(__p);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&p_p);
    if (v70)
    {
      sub_29A014BEC(v70);
    }

    v26 = *(sub_29A04251C(v88) + 60);
    sub_29A012B58(&__p, v26);
    p_p = 0;
    v66.__r_.__value_.__r.__words[0] = 0;
    LODWORD(v66.__r_.__value_.__r.__words[1]) = 2;
    Alembic::Abc::v12::IScalarProperty::get(v88, __p, &p_p, 0);
    v57 = a2;
    v58 = a3;
    sub_29A041C90(a1 + 344, 0xAAAAAAAAAAAAAAABLL * ((v80 - __p) >> 3));
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      v29 = 56 * v26;
      do
      {
        Alembic::AbcGeom::v12::FilmBackXformOp::FilmBackXformOp(&p_p, __p + v27);
        v30 = *(a1 + 344);
        v31 = v30 + v28;
        *(v30 + v28) = p_p;
        if (*(v30 + v28 + 31) < 0)
        {
          operator delete(*(v31 + 8));
        }

        v32 = *&v66.__r_.__value_.__l.__data_;
        *(v31 + 24) = *(&v66.__r_.__value_.__l + 2);
        *(v31 + 8) = v32;
        *(&v66.__r_.__value_.__s + 23) = 0;
        v66.__r_.__value_.__s.__data_[0] = 0;
        v35 = *(v31 + 32);
        v34 = (v31 + 32);
        v33 = v35;
        if (v35)
        {
          *(v30 + v28 + 40) = v33;
          operator delete(v33);
          *v34 = 0;
          v34[1] = 0;
          v34[2] = 0;
        }

        *v34 = v67;
        *(v30 + v28 + 48) = v68;
        v67 = 0uLL;
        v68 = 0;
        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        v28 += 56;
        v27 += 24;
      }

      while (v29 != v28);
    }

    p_p = &__p;
    sub_29A012C90(&p_p);
    Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v88);
  }

  a2 = v57;
  a3 = v58;
LABEL_104:
  sub_29A008E78(&p_p, ".filmBackChannels");
  v49 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v50 = v49;
  if (v66.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(p_p);
    if (!v50)
    {
      goto LABEL_120;
    }
  }

  else if (!v49)
  {
    goto LABEL_120;
  }

  v51 = *(v50 + 24);
  if (v51 == 2)
  {
    v59 = v8;
    v60 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v88, &v59, &v84, &v82);
    sub_29A008E78(&__p, ".filmBackChannels");
    sub_29A042E28(&p_p, v88, &__p, a2, a3);
    *(a1 + 296) = p_p;
    std::string::operator=((a1 + 304), &v66);
    v55 = v67;
    if (*(&v67 + 1))
    {
      atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v56 = *(a1 + 336);
    *(a1 + 328) = v55;
    if (v56)
    {
      sub_29A014BEC(v56);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&p_p);
    if (v81 < 0)
    {
      operator delete(__p);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v88);
    v54 = v60;
    if (v60)
    {
      goto LABEL_119;
    }
  }

  else if (v51 == 1)
  {
    v61 = v8;
    v62 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v88, &v61, &v84, &v82);
    sub_29A008E78(&__p, ".filmBackChannels");
    v77 = 1;
    v78 = v89;
    Alembic::Abc::v12::IScalarProperty::IScalarProperty(&p_p, v88, &__p, &v77);
    *(a1 + 248) = p_p;
    std::string::operator=((a1 + 256), &v66);
    v52 = v67;
    if (*(&v67 + 1))
    {
      atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v53 = *(a1 + 288);
    *(a1 + 280) = v52;
    if (v53)
    {
      sub_29A014BEC(v53);
    }

    Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&p_p);
    if (v81 < 0)
    {
      operator delete(__p);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v88);
    v54 = v62;
    if (v62)
    {
LABEL_119:
      sub_29A014BEC(v54);
    }
  }

LABEL_120:
  if (*(&v91 + 1))
  {
    sub_29A014BEC(*(&v91 + 1));
  }

  sub_29A01752C(v90, v90[1]);
  if (v7)
  {
    sub_29A014BEC(v7);
  }
}

void sub_29A0418B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, std::__shared_weak_count *a39, int a40, __int16 a41, char a42, char a43)
{
  if (a39)
  {
    sub_29A014BEC(a39);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((v45 - 216));
  sub_29A02E0BC(v45 - 168);
  if (v43)
  {
    sub_29A014BEC(v43);
  }

  v48 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v49 = v48;
    sub_29A041DB0(v44);
    sub_29A02D768(v45 - 104, v49);
  }

  else
  {
    sub_29A041DB0(v44);
    sub_29A02D6F8(v45 - 104, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0417CCLL);
}

void sub_29A041C90(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A042650(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 56 * a2;
    while (v3 != v7)
    {
      v3 -= 56;
      sub_29A040990(a1, v3);
    }

    *(a1 + 8) = v7;
  }
}

void sub_29A041D34(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29A041D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A041DB0(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A02F0A0(a1 + 200);
  v3 = *(a1 + 344);
  for (i = *(a1 + 352); i != v3; sub_29A040990(a1 + 344, i))
  {
    i -= 56;
  }

  *(a1 + 352) = v3;

  sub_29A02F0A0(a1 + 8);
}

uint64_t Alembic::AbcGeom::v12::ICameraSchema::isConstant(Alembic::AbcGeom::v12::ICameraSchema *this)
{
  result = Alembic::Abc::v12::IScalarProperty::isConstant((this + 56));
  if (!result)
  {
    return result;
  }

  if (*(this + 279) < 0)
  {
    if (*(this + 33))
    {
      goto LABEL_8;
    }
  }

  else if (*(this + 279))
  {
    goto LABEL_8;
  }

  if (*(this + 35))
  {
    result = Alembic::Abc::v12::IScalarProperty::isConstant((this + 248));
    if (!result)
    {
      return result;
    }
  }

LABEL_8:
  if (*(this + 327) < 0)
  {
    if (!*(this + 39))
    {
      goto LABEL_12;
    }

    return 1;
  }

  if (*(this + 327))
  {
    return 1;
  }

LABEL_12:
  if (!*(this + 41))
  {
    return 1;
  }

  return Alembic::Abc::v12::IArrayProperty::isConstant((this + 296));
}

void Alembic::AbcGeom::v12::ICameraSchema::get(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v65 = *MEMORY[0x29EDCA608];
  v55 = a1 + 8;
  v56 = "ICameraSchema::get()";
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  Alembic::Abc::v12::IScalarProperty::get(a1 + 56, &v57, a3, 0);
  sub_29A03FCA8(a2);
  v6 = v58;
  *a2 = v57;
  a2[1] = v6;
  v7 = v60;
  a2[2] = v59;
  a2[3] = v7;
  v8 = v62;
  a2[4] = v61;
  a2[5] = v8;
  v9 = v64;
  a2[6] = v63;
  a2[7] = v9;
  if (*(a1 + 279) < 0)
  {
    if (*(a1 + 264))
    {
      goto LABEL_25;
    }
  }

  else if (*(a1 + 279))
  {
    goto LABEL_25;
  }

  if (*(a1 + 280) && Alembic::Abc::v12::IScalarProperty::getNumSamples((a1 + 248)))
  {
    Alembic::Abc::v12::IScalarProperty::getTimeSampling((a1 + 56), &v52);
    NumSamples = Alembic::Abc::v12::IScalarProperty::getNumSamples((a1 + 248));
    Index = Alembic::Abc::v12::ISampleSelector::getIndex(a3, &v52, NumSamples);
    if (v53)
    {
      sub_29A014BEC(v53);
    }

    v12 = sub_29A04251C(a1 + 248);
    sub_29A0124A0(&v52, *(v12 + 60));
    v49 = Index;
    v50 = 0;
    v51 = 2;
    Alembic::Abc::v12::IScalarProperty::get(a1 + 248, v52, &v49, 0);
    v14 = *(a1 + 344);
    v13 = *(a1 + 352);
    v49 = 0;
    v15 = v13 - v14;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0x6DB6DB6DB6DB6DB7 * (v15 >> 3);
      do
      {
        v19 = *(a1 + 344) + 56 * v17;
        v43 = *v19;
        if (*(v19 + 31) < 0)
        {
          sub_29A008D14(&v44, *(v19 + 8), *(v19 + 16));
        }

        else
        {
          v20 = *(v19 + 8);
          v45 = *(v19 + 24);
          v44 = v20;
        }

        __p = 0;
        v47 = 0;
        v48 = 0;
        sub_29A00C8EC(&__p, *(v19 + 32), *(v19 + 40), (*(v19 + 40) - *(v19 + 32)) >> 3);
        Alembic::AbcGeom::v12::CameraSample::addOp(a2, &v43);
        if (__p)
        {
          v47 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44);
        }

        v21 = Alembic::AbcGeom::v12::CameraSample::operator[](a2, &v49);
        NumChannels = Alembic::AbcGeom::v12::FilmBackXformOp::getNumChannels(v21);
        if (NumChannels)
        {
          for (i = 0; i != NumChannels; Alembic::AbcGeom::v12::FilmBackXformOp::setChannelValue(v21, i++, *(v52 + v16++)))
          {
            if (v16 >= (v53 - v52) >> 3)
            {
              break;
            }
          }
        }

        v17 = v49 + 1;
        v49 = v17;
      }

      while (v17 < v18);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    return;
  }

LABEL_25:
  if (*(a1 + 327) < 0)
  {
    if (*(a1 + 312))
    {
      return;
    }
  }

  else if (*(a1 + 327))
  {
    return;
  }

  if (*(a1 + 328) && Alembic::Abc::v12::IArrayProperty::getNumSamples((a1 + 296)))
  {
    Alembic::Abc::v12::IScalarProperty::getTimeSampling((a1 + 56), &v52);
    v24 = Alembic::Abc::v12::IArrayProperty::getNumSamples((a1 + 296));
    v25 = Alembic::Abc::v12::ISampleSelector::getIndex(a3, &v52, v24);
    if (v53)
    {
      sub_29A014BEC(v53);
    }

    v49 = 0;
    v50 = 0;
    v52 = v25;
    v53 = 0;
    v54 = 2;
    sub_29A0424A0(a1 + 296, &v49, &v52);
    if (v49)
    {
      v27 = *(a1 + 344);
      v26 = *(a1 + 352);
      v52 = 0;
      v28 = v26 - v27;
      if (v28)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0x6DB6DB6DB6DB6DB7 * (v28 >> 3);
        do
        {
          v32 = *(a1 + 344) + 56 * v30;
          v37 = *v32;
          if (*(v32 + 31) < 0)
          {
            sub_29A008D14(&v38, *(v32 + 8), *(v32 + 16));
          }

          else
          {
            v33 = *(v32 + 8);
            v39 = *(v32 + 24);
            v38 = v33;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          sub_29A00C8EC(&v40, *(v32 + 32), *(v32 + 40), (*(v32 + 40) - *(v32 + 32)) >> 3);
          Alembic::AbcGeom::v12::CameraSample::addOp(a2, &v37);
          if (v40)
          {
            v41 = v40;
            operator delete(v40);
          }

          if (SHIBYTE(v39) < 0)
          {
            operator delete(v38);
          }

          v34 = Alembic::AbcGeom::v12::CameraSample::operator[](a2, &v52);
          v35 = Alembic::AbcGeom::v12::FilmBackXformOp::getNumChannels(v34);
          if (v35)
          {
            for (j = 0; j != v35; ++j)
            {
              Alembic::AbcGeom::v12::FilmBackXformOp::setChannelValue(v34, j, *(*v49 + 8 * v29 + 8 * j));
            }

            v29 += j;
          }

          v30 = v52 + 1;
          v52 = v30;
        }

        while (v30 < v31);
      }
    }

    if (v50)
    {
      sub_29A014BEC(v50);
    }
  }
}

void sub_29A042318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    if (a30)
    {
      sub_29A014BEC(a30);
    }

    v37 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      sub_29A02D768(&a35, v37);
    }

    else
    {
      sub_29A02D6F8(&a35, 0);
    }

    __cxa_end_catch();
    JUMPOUT(0x29A0422DCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0424A0(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29A042504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A042574(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      Alembic::Abc::v12::IBasePropertyT<std::shared_ptr<Alembic::AbcCoreAbstract::v12::ScalarPropertyReader>>::getHeader(void)const::phd = v11;
    }
  }

  JUMPOUT(0x29A042564);
}

void **sub_29A042650(void **result, unint64_t a2)
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
        result = Alembic::AbcGeom::v12::FilmBackXformOp::FilmBackXformOp(v5);
        v5 = (v5 + 56);
        v12 -= 56;
      }

      while (v12);
      v5 = v11;
    }

    v3[1] = v5;
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

    v13 = &v10[56 * v6];
    v20 = v10;
    v21 = v13;
    *&v22 = v13;
    *(&v22 + 1) = &v10[56 * v9];
    v14 = 56 * a2;
    v15 = v13 + 56 * a2;
    do
    {
      Alembic::AbcGeom::v12::FilmBackXformOp::FilmBackXformOp(v13);
      v13 = (v13 + 56);
      v14 -= 56;
    }

    while (v14);
    *&v22 = v15;
    v16 = v3[1];
    v17 = v21 + *v3 - v16;
    sub_29A040C18(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return sub_29A040D84(&v20);
  }

  return result;
}

void sub_29A0427D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A040D84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0427FC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v15 = *(v13 + 56) == 12 && *(v13 + 24) == 2;
  if (!v15 || (sub_29A042D80(v13 + 32, v51) & 1) == 0)
  {
    sub_29A008864(&v45);
    v19 = sub_29A00911C(v46, "Incorrect match of header datatype: ", 36);
    v20 = sub_29A00D330(v19, (v14 + 56));
    v21 = sub_29A00911C(v20, " to expected: ", 14);
    v40 = 1;
    v39 = 12;
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

void sub_29A042C38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A042998);
}

uint64_t sub_29A042D80(uint64_t a1, int a2)
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

void sub_29A042E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A042E28(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v15 = *(v13 + 56) == 11 && *(v13 + 24) == 2;
  if (!v15 || (sub_29A0433AC(v13 + 32, v51) & 1) == 0)
  {
    sub_29A008864(&v45);
    v19 = sub_29A00911C(v46, "Incorrect match of header datatype: ", 36);
    v20 = sub_29A00D330(v19, (v14 + 56));
    v21 = sub_29A00911C(v20, " to expected: ", 14);
    v40 = 1;
    v39 = 11;
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

void sub_29A043264(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A042FC4);
}

uint64_t sub_29A0433AC(uint64_t a1, int a2)
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

void sub_29A043438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::AbcGeom::v12::OCameraSchema::set(Alembic::AbcGeom::v12::OCameraSchema *this, char ***a2)
{
  v4 = 0;
  v81[16] = *MEMORY[0x29EDCA608];
  v5 = (this + 472);
  v79 = this + 8;
  v80 = "OCameraSchema::set()";
  do
  {
    *&v81[v4] = Alembic::AbcGeom::v12::CameraSample::getCoreValue(a2, v4);
    ++v4;
  }

  while (v4 != 16);
  if (Alembic::Abc::v12::OScalarProperty::getNumSamples((this + 56)))
  {
    NumOps = Alembic::AbcGeom::v12::CameraSample::getNumOps(a2);
    if (NumOps != Alembic::AbcGeom::v12::CameraSample::getNumOps((this + 344)))
    {
      sub_29A008864(&v49);
      v43 = sub_29A00911C(&v50, "Number of Film Back Xform Ops differ expected: ", 47);
      v44 = Alembic::AbcGeom::v12::CameraSample::getNumOps((this + 344));
      v45 = MEMORY[0x29C2C1F00](v43, v44);
      v46 = sub_29A00911C(v45, " got: ", 6);
      MEMORY[0x29C2C1F00](v46, NumOps);
      std::stringbuf::str();
      sub_29A008C60(__p, &v77);
      if (v78 < 0)
      {
        operator delete(v77);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v48 = sub_29A008E1C(exception, __p);
      __cxa_throw(v48, &unk_2A203B108, sub_29A008B08);
    }

    NumOpChannels = Alembic::AbcGeom::v12::CameraSample::getNumOpChannels((this + 344));
    sub_29A0124A0(&v77, NumOpChannels);
    v69 = 0;
    if (NumOps)
    {
      v8 = 0;
      do
      {
        v9 = Alembic::AbcGeom::v12::CameraSample::operator[](a2, &v69);
        v10 = Alembic::AbcGeom::v12::CameraSample::operator[](this + 344, &v69);
        Type = Alembic::AbcGeom::v12::FilmBackXformOp::getType(v10);
        if (Type != Alembic::AbcGeom::v12::FilmBackXformOp::getType(v9))
        {
          sub_29A008864(&v49);
          v40 = sub_29A00911C(&v50, "Film Back Xform Operation type differs from initial sample at index: ", 69);
          MEMORY[0x29C2C1F00](v40, v69);
          std::stringbuf::str();
          sub_29A008C60(__p, v75);
          if (v76 < 0)
          {
            operator delete(v75[0]);
          }

          v41 = __cxa_allocate_exception(0x20uLL);
          v42 = sub_29A008E1C(v41, __p);
          __cxa_throw(v42, &unk_2A203B108, sub_29A008B08);
        }

        NumChannels = Alembic::AbcGeom::v12::FilmBackXformOp::getNumChannels(v9);
        if (NumChannels)
        {
          for (i = 0; i != NumChannels; ++i)
          {
            ChannelValue = Alembic::AbcGeom::v12::FilmBackXformOp::getChannelValue(v9, i);
            *(v77 + 8 * v8 + 8 * i) = ChannelValue;
          }

          v8 += i;
        }

        ++v69;
      }

      while (v69 < NumOps);
    }

    if (*(this + 327) < 0)
    {
      if (*(this + 39))
      {
        goto LABEL_59;
      }
    }

    else if (*(this + 327))
    {
      goto LABEL_59;
    }

    if (*(this + 41))
    {
      Alembic::Abc::v12::OScalarProperty::set((this + 296), v77);
      goto LABEL_66;
    }

LABEL_59:
    if (*(this + 279) < 0)
    {
      if (!*(this + 33))
      {
LABEL_63:
        if (*(this + 35))
        {
          sub_29A045CA8(&v49, v77, (*(&v77 + 1) - v77) >> 3);
          Alembic::Abc::v12::OArrayProperty::set(this + 248);
          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }
        }
      }
    }

    else if (!*(this + 279))
    {
      goto LABEL_63;
    }

LABEL_66:
    if (v77)
    {
      *(&v77 + 1) = v77;
      operator delete(v77);
    }

    return Alembic::Abc::v12::OScalarProperty::set((this + 56), v81);
  }

  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 3);
  *(this + 376) = *(a2 + 2);
  *(this + 392) = v17;
  *(this + 344) = v15;
  *(this + 360) = v16;
  v18 = *(a2 + 4);
  v19 = *(a2 + 5);
  v20 = *(a2 + 7);
  *(this + 440) = *(a2 + 6);
  *(this + 456) = v20;
  *(this + 408) = v18;
  *(this + 424) = v19;
  *v5 = *(a2 + 8);
  v5[1] = *(a2 + 9);
  v5[2] = *(a2 + 10);
  if ((this + 344) != a2)
  {
    sub_29A044D04(this + 520, a2[22], a2[23], 0x6DB6DB6DB6DB6DB7 * (a2[23] - a2[22]));
  }

  v21 = Alembic::AbcGeom::v12::CameraSample::getNumOpChannels(a2);
  v22 = Alembic::AbcGeom::v12::CameraSample::getNumOps(a2);
  sub_29A012B58(&v77, v22);
  sub_29A0124A0(v75, v21);
  __p[0] = 0;
  if (!v22)
  {
    goto LABEL_34;
  }

  v23 = 0;
  do
  {
    v24 = Alembic::AbcGeom::v12::CameraSample::operator[](a2, __p);
    Alembic::AbcGeom::v12::FilmBackXformOp::getTypeAndHint(v24, &v49);
    v25 = v77 + 24 * __p[0];
    if (*(v25 + 23) < 0)
    {
      operator delete(*v25);
    }

    v26 = 0;
    v27 = v49;
    *(v25 + 16) = v50;
    *v25 = v27;
    while (v26 < Alembic::AbcGeom::v12::FilmBackXformOp::getNumChannels(v24))
    {
      v28 = Alembic::AbcGeom::v12::FilmBackXformOp::getChannelValue(v24, v26);
      *(v75[0] + v23 + v26++) = v28;
    }

    ++__p[0];
    v23 += v26;
  }

  while (__p[0] < v22);
  if (v22 < 0x100)
  {
    v73 = 12;
    v74 = v22;
    v29 = *(this + 6);
    v71 = *(this + 5);
    v72 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".filmBackOps");
    LODWORD(v69) = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    Alembic::Abc::v12::OScalarProperty::OScalarProperty(&v49, &v71, __p, &v73, &v69, &v67, &v65, &v63);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    if (v72)
    {
      sub_29A014BEC(v72);
    }

    Alembic::Abc::v12::OScalarProperty::set(&v49, v77);
    Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v49);
  }

  else
  {
LABEL_34:
    if (v21 >= 0x100)
    {
      v30 = *(this + 6);
      v61 = *(this + 5);
      v62 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_29A008E78(__p, ".filmBackOps");
      LODWORD(v69) = 0;
      v70 = 0;
      v67 = 0;
      v68 = 0;
      v65 = 0;
      v66 = 0;
      v63 = 0;
      v64 = 0;
      sub_29A045248(&v49, &v61, __p, &v69, &v67, &v65, &v63);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
      }

      if (v62)
      {
        sub_29A014BEC(v62);
      }

      sub_29A04572C(__p, v77, 0xAAAAAAAAAAAAAAABLL * ((*(&v77 + 1) - v77) >> 3));
      Alembic::Abc::v12::OArrayProperty::set(&v49);
      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v49);
      goto LABEL_69;
    }
  }

  if (v21 - 1 <= 0xFE)
  {
    v73 = 11;
    v74 = v21;
    v31 = *(this + 6);
    v56 = *(this + 5);
    v57 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".filmBackChannels");
    LODWORD(v69) = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    Alembic::Abc::v12::OScalarProperty::OScalarProperty(&v49, &v56, __p, &v73, &v69, &v67, &v65, &v63);
    *(this + 74) = v49;
    std::string::operator=((this + 304), (&v49 + 8));
    v33 = v52;
    v32 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
    }

    v34 = *(this + 42);
    *(this + 41) = v33;
    *(this + 42) = v32;
    if (v34)
    {
      sub_29A014BEC(v34);
    }

    Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v49);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    if (v57)
    {
      sub_29A014BEC(v57);
    }

    Alembic::Abc::v12::OScalarProperty::set((this + 296), v75[0]);
    goto LABEL_81;
  }

  if (v21 >= 0x100)
  {
LABEL_69:
    v35 = *(this + 6);
    v54 = *(this + 5);
    v55 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(__p, ".filmBackChannels");
    LODWORD(v69) = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    sub_29A0457C4(&v49, &v54, __p, &v69, &v67, &v65, &v63);
    *(this + 62) = v49;
    std::string::operator=((this + 256), (&v49 + 8));
    v37 = v52;
    v36 = v53;
    if (v53)
    {
      atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
    }

    v38 = *(this + 36);
    *(this + 35) = v37;
    *(this + 36) = v36;
    if (v38)
    {
      sub_29A014BEC(v38);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v49);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    if (v55)
    {
      sub_29A014BEC(v55);
    }

    sub_29A045CA8(&v49, v75[0], (v75[1] - v75[0]) >> 3);
    Alembic::Abc::v12::OArrayProperty::set(this + 248);
    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }
  }

LABEL_81:
  if (v75[0])
  {
    v75[1] = v75[0];
    operator delete(v75[0]);
  }

  *&v49 = &v77;
  sub_29A012C90(&v49);
  return Alembic::Abc::v12::OScalarProperty::set((this + 56), v81);
}

void sub_29A043C84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  if (a2)
  {
    sub_29A008F20(&a48);
    sub_29A008B0C(&a9);
    v51 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      sub_29A02D768(v48 - 232, v51);
    }

    else
    {
      sub_29A02D6F8(v48 - 232, 0);
    }

    __cxa_end_catch();
    JUMPOUT(0x29A043B18);
  }

  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcGeom::v12::OCameraSchema::setFromPrevious(Alembic::AbcGeom::v12::OCameraSchema *this)
{
  result = Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
  if (*(this + 327) < 0)
  {
    if (*(this + 39))
    {
      goto LABEL_7;
    }
  }

  else if (*(this + 327))
  {
    goto LABEL_7;
  }

  if (*(this + 41))
  {
    result = Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 296));
  }

LABEL_7:
  if (*(this + 279) < 0)
  {
    if (*(this + 33))
    {
      return result;
    }
  }

  else if (*(this + 279))
  {
    return result;
  }

  if (*(this + 35))
  {
    return Alembic::Abc::v12::OArrayProperty::setFromPrevious((this + 248));
  }

  return result;
}

void sub_29A04409C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A04408CLL);
}

void sub_29A04412C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  JUMPOUT(0x29A04411CLL);
}

int *Alembic::AbcGeom::v12::OCameraSchema::setTimeSampling(Alembic::AbcGeom::v12::OCameraSchema *a1, void *a2)
{
  result = (a1 + 8);
  v6 = result;
  v7 = "OCameraSchema::setTimeSampling( TimeSamplingPtr)";
  if (*a2)
  {
    sub_29A04428C(result, v4);
    Alembic::Abc::v12::OObject::getArchive(v4, v5);
    Alembic::Abc::v12::OArchive::addTimeSampling(v5);
    Alembic::Abc::v12::OArchive::~OArchive(v5);
    Alembic::Abc::v12::OObject::~OObject(v4);
    return Alembic::AbcGeom::v12::OCameraSchema::setTimeSampling(a1);
  }

  return result;
}

void sub_29A044204(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
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
  JUMPOUT(0x29A0441F4);
}

void sub_29A04428C(int *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1;
  v11 = "OBaseProperty::getObject()";
  (*(**(a1 + 4) + 24))(&v8);
  v4 = *a1;
  v7[0] = 1;
  v7[2] = v4;
  v6[0] = 0;
  v6[2] = 0;
  v5[0] = 0;
  v5[2] = 0;
  sub_29A0337F8(a2, &v8, v7, v6, v5);
  if (v9)
  {
    sub_29A014BEC(v9);
  }
}

void sub_29A04433C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
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
  JUMPOUT(0x29A044328);
}

void Alembic::AbcGeom::v12::OCameraSchema::init(Alembic::AbcGeom::v12::OCameraSchema *this, int a2)
{
  v23 = this + 8;
  v24 = "OCameraSchema::init()";
  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v16 = 0;
  }

  v21 = 11;
  v22 = 16;
  v15 = v4;
  sub_29A008E78(__p, ".core");
  v12[0] = 2;
  v12[2] = a2;
  v11[0] = 0;
  v11[2] = 0;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  Alembic::Abc::v12::OScalarProperty::OScalarProperty(&v17, &v15, __p, &v21, v12, v11, v10, v9);
  *(this + 14) = v17;
  std::string::operator=((this + 64), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 12);
  *(this + 11) = v7;
  *(this + 12) = v6;
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }
}

void sub_29A044528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, char a25)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&a25);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_29A014BEC(a24);
  }

  if (v25)
  {
    sub_29A014BEC(v25);
  }

  v30 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v31 = v30;
    sub_29A0445E0(v26);
    sub_29A02D768(v27 - 48, v31);
  }

  else
  {
    sub_29A0445E0(v26);
    sub_29A02D6F8(v27 - 48, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A044514);
}

void sub_29A0445E0(uint64_t a1)
{
  sub_29A02F0A0(a1 + 56);
  sub_29A02F0A0(a1 + 104);
  sub_29A02F0A0(a1 + 152);
  sub_29A02F0A0(a1 + 200);
  sub_29A02F0A0(a1 + 248);
  sub_29A02F0A0(a1 + 296);

  sub_29A02F0A0(a1 + 8);
}

_BYTE *Alembic::AbcGeom::v12::OCameraSchema::getArbGeomParams@<X0>(Alembic::AbcGeom::v12::OCameraSchema *this@<X0>, uint64_t a2@<X8>)
{
  v21 = this + 8;
  v22 = "OCameraSchema::getArbGeomParams()";
  v4 = *(this + 231);
  if (v4 < 0)
  {
    if (!*(this + 27))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 231))
  {
LABEL_5:
    if (*(this + 29))
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
  *(this + 50) = v17;
  std::string::operator=((this + 208), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 30);
  *(this + 29) = v7;
  *(this + 30) = v6;
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

  LOBYTE(v4) = *(this + 231);
LABEL_17:
  *a2 = *(this + 50);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_29A008D14(result, *(this + 26), *(this + 27));
  }

  else
  {
    *result = *(this + 13);
    *(a2 + 24) = *(this + 28);
  }

  v10 = *(this + 30);
  *(a2 + 32) = *(this + 29);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A0447A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
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
  JUMPOUT(0x29A04478CLL);
}

_BYTE *Alembic::AbcGeom::v12::OCameraSchema::getUserProperties@<X0>(Alembic::AbcGeom::v12::OCameraSchema *this@<X0>, uint64_t a2@<X8>)
{
  v21 = this + 8;
  v22 = "OCameraSchema::getUserProperties()";
  v4 = *(this + 183);
  if (v4 < 0)
  {
    if (!*(this + 21))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 183))
  {
LABEL_5:
    if (*(this + 23))
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
  *(this + 38) = v17;
  std::string::operator=((this + 160), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 24);
  *(this + 23) = v7;
  *(this + 24) = v6;
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

  LOBYTE(v4) = *(this + 183);
LABEL_17:
  *a2 = *(this + 38);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_29A008D14(result, *(this + 20), *(this + 21));
  }

  else
  {
    *result = *(this + 10);
    *(a2 + 24) = *(this + 22);
  }

  v10 = *(this + 24);
  *(a2 + 32) = *(this + 23);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A0449BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
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
  JUMPOUT(0x29A0449A8);
}

_BYTE *Alembic::AbcGeom::v12::OCameraSchema::getChildBoundsProperty@<X0>(Alembic::AbcGeom::v12::OCameraSchema *this@<X0>, uint64_t a2@<X8>)
{
  v28 = this + 8;
  v29 = "OCameraSchema::getChildBoundsProperty()";
  if (*(this + 135) < 0)
  {
    if (!*(this + 15))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 135))
  {
LABEL_5:
    if (*(this + 17))
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v23 = 0;
  }

  v22 = v4;
  sub_29A008E78(__p, ".childBnds");
  v6 = sub_29A045114(this + 56);
  v7 = *(v6 + 72);
  v16 = *(v6 + 64);
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = 4;
  v19 = &v16;
  v15[0] = 0;
  v15[2] = 0;
  v14[0] = 0;
  v14[2] = 0;
  v13[0] = 0;
  v13[2] = 0;
  sub_29A045D40(&v24, &v22, __p, &v18, v15, v14, v13);
  *(this + 26) = v24;
  std::string::operator=((this + 112), &v25);
  v9 = v26;
  v8 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 18);
  *(this + 17) = v9;
  *(this + 18) = v8;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(&v24);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23)
  {
    sub_29A014BEC(v23);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

LABEL_23:
  *a2 = *(this + 26);
  result = (a2 + 8);
  if (*(this + 135) < 0)
  {
    result = sub_29A008D14(result, *(this + 14), *(this + 15));
  }

  else
  {
    *result = *(this + 7);
    *(a2 + 24) = *(this + 16);
  }

  v12 = *(this + 18);
  *(a2 + 32) = *(this + 17);
  *(a2 + 40) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_29A044C48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27)
{
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((v28 - 112));
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    sub_29A014BEC(a27);
  }

  if (v27)
  {
    sub_29A014BEC(v27);
  }

  v31 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v28 - 64, v31);
  }

  else
  {
    sub_29A02D6F8(v28 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A044BE8);
}

void sub_29A044D04(uint64_t a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A044E84(a1);
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
    v11 = sub_29A044F40(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v12 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v12 >> 3) < a4)
  {
    sub_29A045084(&v16, a2, (a2 + v12), v8);
    v11 = sub_29A044F40(a1, a2 + v12, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v11;
    return;
  }

  sub_29A045084(&v17, a2, a3, v8);
  v14 = v13;
  v15 = *(a1 + 8);
  if (v15 != v13)
  {
    do
    {
      v15 -= 56;
      sub_29A040990(a1, v15);
    }

    while (v15 != v14);
  }

  *(a1 + 8) = v14;
}

void sub_29A044E84(void **a1)
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
        sub_29A040990(a1, v3);
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

char *sub_29A044EF0(void *a1, unint64_t a2)
{
  if (a2 >= 0x492492492492493)
  {
    sub_29A00C9A4();
  }

  result = sub_29A040BCC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[56 * v4];
  return result;
}

uint64_t sub_29A044F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29A044FEC(a1, v4, v6);
      v6 += 56;
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A040CF8(v9);
  return v4;
}

void *sub_29A044FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    sub_29A008D14(v5, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *v5 = v6;
  }

  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return sub_29A00C8EC((a2 + 32), *(a3 + 32), *(a3 + 40), (*(a3 + 40) - *(a3 + 32)) >> 3);
}

void sub_29A045068(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char **sub_29A045084(uint64_t a1, char **a2, char **a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 5;
  do
  {
    v7 = v6 - 5;
    *a4 = *(v6 - 10);
    std::string::operator=((a4 + 8), (v6 - 4));
    if (a4 != v6 - 5)
    {
      sub_29A00CB24((a4 + 32), *(v6 - 1), *v6, (*v6 - *(v6 - 1)) >> 3);
    }

    a4 += 56;
    v6 += 7;
  }

  while (v7 + 7 != v5);
  return v5;
}

void sub_29A04516C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      Alembic::Abc::v12::OBasePropertyT<std::shared_ptr<Alembic::AbcCoreAbstract::v12::ScalarPropertyWriter>>::getHeader(void)const::g_phd = v11;
    }
  }

  JUMPOUT(0x29A04515CLL);
}

uint64_t sub_29A045248(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A045320(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A045300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A045320(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  LODWORD(__p[0]) = 12;
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

void sub_29A045604(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A045550);
}

void *sub_29A04572C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  sub_29A0161D0(&__p, 1uLL, &v6);
  *a1 = a2;
  a1[1] = 0x10000000CLL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_29A00E7E0(a1 + 2, __p, v8, (v8 - __p) >> 3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_29A0457A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0457C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A04589C(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A04587C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void sub_29A04589C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  LODWORD(__p[0]) = 11;
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

void sub_29A045B80(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
  JUMPOUT(0x29A045ACCLL);
}

void *sub_29A045CA8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  sub_29A0161D0(&__p, 1uLL, &v6);
  *a1 = a2;
  a1[1] = 0x10000000BLL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_29A00E7E0(a1 + 2, __p, v8, (v8 - __p) >> 3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_29A045D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A045D40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  sub_29A03E1B8(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  return a1;
}

void sub_29A045DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v10);
  _Unwind_Resume(a1);
}

void *Alembic::AbcGeom::v12::GetBasisNameFromBasisType@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if ((a1 - 1) > 4)
  {
    v2 = "none";
  }

  else
  {
    v2 = off_29F295268[a1 - 1];
  }

  return sub_29A008E78(a2, v2);
}

uint64_t Alembic::AbcGeom::v12::GetStepFromBasisType(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 1;
  }

  else
  {
    return dword_29B4325E8[a1 - 1];
  }
}

uint64_t Alembic::AbcGeom::v12::ICurvesSchema::getTopologyVariance(Alembic::AbcGeom::v12::ICurvesSchema *this)
{
  if (!Alembic::Abc::v12::IArrayProperty::isConstant((this + 248)))
  {
    goto LABEL_11;
  }

  if (*(this + 927) < 0)
  {
    if (!*(this + 114))
    {
LABEL_6:
      if (*(this + 116) && !Alembic::Abc::v12::IArrayProperty::isConstant((this + 896)))
      {
        goto LABEL_11;
      }
    }
  }

  else if (!*(this + 927))
  {
    goto LABEL_6;
  }

  if (Alembic::Abc::v12::IArrayProperty::isConstant((this + 344)) && (Alembic::Abc::v12::IScalarProperty::isConstant((this + 392)) & 1) != 0)
  {
    return 0;
  }

LABEL_11:
  if (Alembic::Abc::v12::IArrayProperty::isConstant((this + 344)) && (Alembic::Abc::v12::IScalarProperty::isConstant((this + 392)) & 1) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void Alembic::AbcGeom::v12::ICurvesSchema::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 8;
  v86 = a1 + 8;
  v87 = "ICurvesSchema::init()";
  *&v57.__r_.__value_.__l.__data_ = 0uLL;
  v56 = &v57;
  v81 = 2;
  sub_29A019350(v82, &v56);
  v84 = 0;
  v83 = 0u;
  v85 = 1;
  sub_29A01752C(&v56, v57.__r_.__value_.__l.__data_);
  sub_29A02E010(a2, &v81);
  sub_29A02E010(a3, &v81);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v78 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v78 = 0;
  }

  v77 = v8;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v79, &v77, &v75, &v73);
  sub_29A008E78(__p, "P");
  v69 = 5;
  v70 = 1;
  v68[0] = 1;
  v68[2] = v81;
  sub_29A047324(&v56, v79, __p, &v69, v68);
  *(a1 + 248) = v56;
  std::string::operator=((a1 + 256), &v57);
  v10 = v58;
  v9 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 288);
  *(a1 + 280) = v10;
  *(a1 + 288) = v9;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v79);
  if (v78)
  {
    sub_29A014BEC(v78);
  }

  v66 = v8;
  v67 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v79, &v66, &v75, &v73);
  sub_29A008E78(__p, "nVertices");
  sub_29A0479A8(&v56, v79, __p, a2, a3);
  *(a1 + 344) = v56;
  std::string::operator=((a1 + 352), &v57);
  v13 = v58;
  v12 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 384);
  *(a1 + 376) = v13;
  *(a1 + 384) = v12;
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v79);
  if (v67)
  {
    sub_29A014BEC(v67);
  }

  v64 = v8;
  v65 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v79, &v64, &v75, &v73);
  sub_29A008E78(__p, "curveBasisAndType");
  v69 = 1;
  v70 = v81;
  Alembic::Abc::v12::IScalarProperty::IScalarProperty(&v56, v79, __p, &v69);
  *(a1 + 392) = v56;
  std::string::operator=((a1 + 400), &v57);
  v16 = v58;
  v15 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 432);
  *(a1 + 424) = v16;
  *(a1 + 432) = v15;
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(&v56);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v79);
  if (v65)
  {
    sub_29A014BEC(v65);
  }

  sub_29A008E78(&v56, "w");
  PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v19 = PropertyHeader;
  if (v57.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v56);
    if (!v19)
    {
      goto LABEL_46;
    }
  }

  else if (!PropertyHeader)
  {
    goto LABEL_46;
  }

  v62 = v8;
  v63 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v79, &v62, &v75, &v73);
  sub_29A008E78(__p, "w");
  sub_29A047FD4(&v56, v79, __p, a2, a3);
  *(a1 + 896) = v56;
  std::string::operator=((a1 + 904), &v57);
  v21 = v58;
  v20 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 928) = v21;
  v22 = *(a1 + 936);
  *(a1 + 936) = v20;
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v79);
  if (v63)
  {
    sub_29A014BEC(v63);
  }

LABEL_46:
  sub_29A008E78(&v56, "uv");
  v23 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v24 = v23;
  if (v57.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v56);
    if (!v24)
    {
      goto LABEL_56;
    }
  }

  else if (!v23)
  {
    goto LABEL_56;
  }

  v54 = v8;
  v55 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v79, "uv");
  sub_29A048600(&v56, &v54, v79, a2, a3);
  sub_29A046D94(a1 + 592, &v56);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v61);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v60);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v55)
  {
    sub_29A014BEC(v55);
  }

LABEL_56:
  sub_29A008E78(&v56, "N");
  v25 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v26 = v25;
  if (v57.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v56);
    if (!v26)
    {
      goto LABEL_66;
    }
  }

  else if (!v25)
  {
    goto LABEL_66;
  }

  v52 = v8;
  v53 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v79, "N");
  sub_29A049984(&v56, &v52, v79, a2, a3);
  sub_29A046D94(a1 + 744, &v56);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v61);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v60);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v53)
  {
    sub_29A014BEC(v53);
  }

LABEL_66:
  sub_29A008E78(&v56, "width");
  v27 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v28 = v27;
  if (v57.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v56);
    if (!v28)
    {
      goto LABEL_76;
    }
  }

  else if (!v27)
  {
    goto LABEL_76;
  }

  v50 = v8;
  v51 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v79, "width");
  sub_29A04A7D4(&v56, &v50, v79, a2, a3);
  sub_29A046D94(a1 + 440, &v56);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v61);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v60);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v80 < 0)
  {
    operator delete(v79[0]);
  }

  if (v51)
  {
    sub_29A014BEC(v51);
  }

LABEL_76:
  sub_29A008E78(&v56, ".velocities");
  v29 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v30 = v29;
  if (v57.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v56);
    if (!v30)
    {
      goto LABEL_90;
    }
  }

  else if (!v29)
  {
    goto LABEL_90;
  }

  v48 = v8;
  v49 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v79, &v48, &v75, &v73);
  sub_29A008E78(__p, ".velocities");
  sub_29A04AFA0(&v56, v79, __p, a2, a3);
  *(a1 + 296) = v56;
  std::string::operator=((a1 + 304), &v57);
  v32 = v58;
  v31 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = *(a1 + 336);
  *(a1 + 328) = v32;
  *(a1 + 336) = v31;
  if (v33)
  {
    sub_29A014BEC(v33);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v79);
  if (v49)
  {
    sub_29A014BEC(v49);
  }

LABEL_90:
  sub_29A008E78(&v56, ".orders");
  v34 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v35 = v34;
  if (v57.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v56);
    if (!v35)
    {
      goto LABEL_104;
    }
  }

  else if (!v34)
  {
    goto LABEL_104;
  }

  v46 = v8;
  v47 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v79, &v46, &v75, &v73);
  sub_29A008E78(__p, ".orders");
  sub_29A04B624(&v56, v79, __p, a2, a3);
  *(a1 + 944) = v56;
  std::string::operator=((a1 + 952), &v57);
  v37 = v58;
  v36 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 976) = v37;
  v38 = *(a1 + 984);
  *(a1 + 984) = v36;
  if (v38)
  {
    sub_29A014BEC(v38);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v79);
  if (v47)
  {
    sub_29A014BEC(v47);
  }

LABEL_104:
  sub_29A008E78(&v56, ".knots");
  v39 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(v6);
  v40 = v39;
  if (v57.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v56);
    if (!v40)
    {
      goto LABEL_118;
    }
  }

  else if (!v39)
  {
    goto LABEL_118;
  }

  v44 = v8;
  v45 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(v79, &v44, &v75, &v73);
  sub_29A008E78(__p, ".knots");
  sub_29A047FD4(&v56, v79, __p, a2, a3);
  *(a1 + 992) = v56;
  std::string::operator=((a1 + 1000), &v57);
  v42 = v58;
  v41 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1024) = v42;
  v43 = *(a1 + 1032);
  *(a1 + 1032) = v41;
  if (v43)
  {
    sub_29A014BEC(v43);
  }

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v56);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v79);
  if (v45)
  {
    sub_29A014BEC(v45);
  }

LABEL_118:
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if (*(&v83 + 1))
  {
    sub_29A014BEC(*(&v83 + 1));
  }

  sub_29A01752C(v82, v82[1]);
}

void sub_29A046940(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&a21);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v60 - 208));
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (v59)
  {
    sub_29A014BEC(v59);
  }

  sub_29A02E0BC(v60 - 160);
  v63 = __cxa_begin_catch(a1);
  v64 = *(*v58 + 16);
  if (a2 == 2)
  {
    v65 = v63;
    v64(v58);
    sub_29A02D768(v60 - 96, v65);
  }

  else
  {
    v64(v58);
    sub_29A02D6F8(v60 - 96, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A046920);
}

uint64_t sub_29A046D94(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  if (v6)
  {
    sub_29A014BEC(v6);
  }

  *(a1 + 48) = *(a2 + 48);
  std::string::operator=((a1 + 56), (a2 + 56));
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 88);
  *(a1 + 80) = v8;
  *(a1 + 88) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  *(a1 + 96) = *(a2 + 96);
  std::string::operator=((a1 + 104), (a2 + 104));
  v11 = *(a2 + 128);
  v10 = *(a2 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 136);
  *(a1 + 128) = v11;
  *(a1 + 136) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

void sub_29A046E64(uint64_t a1)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 96));
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty((a1 + 48));

  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(a1);
}

void Alembic::AbcGeom::v12::ICurvesSchema::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v10 = a1 + 1;
  v11 = "ICurvesSchema::get()";
  if (((*(v6 + 24))() & 1) == 0)
  {
    return;
  }

  sub_29A0470B8((a1 + 31), a2, a3);
  sub_29A047134((a1 + 43), (a2 + 96), a3);
  Alembic::Abc::v12::IScalarProperty::get((a1 + 49), v9, a3, 4);
  v7 = v9[1];
  v8 = v9[2];
  *(a2 + 144) = v9[0];
  *(a2 + 148) = v8;
  *(a2 + 152) = v7;
  if (*(a1 + 927) < 0)
  {
    if (a1[114])
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 927))
  {
    goto LABEL_8;
  }

  if (a1[116])
  {
    sub_29A0471B0((a1 + 112), (a2 + 32), a3);
  }

LABEL_8:
  if (*(a1 + 975) < 0)
  {
    if (a1[120])
    {
      goto LABEL_14;
    }
  }

  else if (*(a1 + 975))
  {
    goto LABEL_14;
  }

  if (a1[122])
  {
    sub_29A04722C((a1 + 118), (a2 + 112), a3);
  }

LABEL_14:
  if (*(a1 + 1023) < 0)
  {
    if (a1[126])
    {
      goto LABEL_20;
    }
  }

  else if (*(a1 + 1023))
  {
    goto LABEL_20;
  }

  if (a1[128])
  {
    sub_29A0471B0((a1 + 124), (a2 + 128), a3);
  }

LABEL_20:
  if (*(a1 + 87) < 0)
  {
    if (!a1[9])
    {
      goto LABEL_24;
    }
  }

  else if (!*(a1 + 87))
  {
LABEL_24:
    if (a1[11])
    {
      Alembic::Abc::v12::IScalarProperty::get((a1 + 7), a2 + 48, a3, 48);
    }
  }

  if (*(a1 + 327) < 0)
  {
    if (a1[39])
    {
      return;
    }
  }

  else if (*(a1 + 327))
  {
    return;
  }

  if (a1[41])
  {
    if (Alembic::Abc::v12::IArrayProperty::getNumSamples((a1 + 37)))
    {
      sub_29A0472A8((a1 + 37), (a2 + 16), a3);
    }
  }
}

void sub_29A047060(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(va, v5);
  }

  else
  {
    sub_29A02D6F8(va, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A04704CLL);
}

void sub_29A0470B8(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29A04711C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A047134(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29A047198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0471B0(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29A047214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A04722C(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29A047290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0472A8(uint64_t a1, void *a2, uint64_t a3)
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

void sub_29A04730C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A047324(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v47[35] = "ITypedArrayProperty::ITypedArrayProperty()";
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
    sub_29A00911C(v31, "ITypedArrayProperty ctor", 24);
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
    v34 = sub_29A00911C(v47, "Nonexistent array property: ", 28);
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

  v16 = *(v13 + 56) == 10 && *(v13 + 60) == 3 && *(v13 + 24) == 2;
  if (!v16 || (sub_29A0478B0(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 3;
    v40 = 10;
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
    sub_29A00911C(v28, "point", 5);
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

  (*(*v12 + 96))(&v46, v12, a3);
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

void sub_29A047768(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A0474C8);
}

uint64_t sub_29A0478B0(uint64_t a1, int a2)
{
  if (a2)
  {
    return 1;
  }

  sub_29A008E78(__p, "interpretation");
  sub_29A02CFB4(a1, __p, v9);
  if (v10 < 0)
  {
    v2 = v9[1] == 5 && *v9[0] == 1852403568 && *(v9[0] + 4) == 116;
    operator delete(v9[0]);
  }

  else
  {
    v2 = v10 == 5 && LODWORD(v9[0]) == 1852403568 && BYTE4(v9[0]) == 116;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A04798C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0479A8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v15 = *(v13 + 56) == 6 && *(v13 + 24) == 2;
  if (!v15 || (sub_29A047F2C(v13 + 32, v51) & 1) == 0)
  {
    sub_29A008864(&v45);
    v19 = sub_29A00911C(v46, "Incorrect match of header datatype: ", 36);
    v20 = sub_29A00D330(v19, (v14 + 56));
    v21 = sub_29A00911C(v20, " to expected: ", 14);
    v40 = 1;
    v39 = 6;
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

void sub_29A047DE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A047B44);
}

uint64_t sub_29A047F2C(uint64_t a1, int a2)
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

void sub_29A047FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A047FD4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v15 = *(v13 + 56) == 10 && *(v13 + 24) == 2;
  if (!v15 || (sub_29A048558(v13 + 32, v51) & 1) == 0)
  {
    sub_29A008864(&v45);
    v19 = sub_29A00911C(v46, "Incorrect match of header datatype: ", 36);
    v20 = sub_29A00D330(v19, (v14 + 56));
    v21 = sub_29A00911C(v20, " to expected: ", 14);
    v40 = 1;
    v39 = 10;
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

void sub_29A048410(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A048170);
}

uint64_t sub_29A048558(uint64_t a1, int a2)
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

void sub_29A0485E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A048600(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  v10 = (a1 + 8);
  sub_29A008E78((a1 + 8), "");
  *(a1 + 48) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_29A008E78((a1 + 56), "");
  *(a1 + 96) = 2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_29A008E78((a1 + 104), "");
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v59.__r_.__value_.__l.__data_ = 0uLL;
  v58 = &v59;
  v64 = 2;
  sub_29A019350(v65, &v58);
  v67 = 0;
  v66 = 0u;
  v68 = 1;
  sub_29A01752C(&v58, v59.__r_.__value_.__l.__data_);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  sub_29A02E010(a4, &v64);
  sub_29A02E010(a5, &v64);
  *a1 = v64;
  v62 = a1;
  v63 = "ITypedGeomParam::ITypedGeomParam()";
  v12 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    sub_29A008864(&v58);
    v32 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "NULL CompoundPropertyReader passed into ", 40);
    sub_29A00911C(v32, "ITypedGeomParam ctor", 20);
    std::stringbuf::str();
    sub_29A008C60(__p, v56);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v34 = sub_29A008E1C(exception, __p);
    __cxa_throw(v34, &unk_2A203B108, sub_29A008B08);
  }

  v14 = (*(*v12 + 80))(v12, a3);
  if (!v14)
  {
    sub_29A008864(&v58);
    v35 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "Nonexistent GeomParam: ", 23);
    v36 = *(a3 + 23);
    if (v36 >= 0)
    {
      v37 = a3;
    }

    else
    {
      v37 = *a3;
    }

    if (v36 >= 0)
    {
      v38 = *(a3 + 23);
    }

    else
    {
      v38 = *(a3 + 8);
    }

    sub_29A00911C(v35, v37, v38);
    std::stringbuf::str();
    sub_29A008C60(__p, v56);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    v39 = __cxa_allocate_exception(0x20uLL);
    v40 = sub_29A008E1C(v39, __p);
    __cxa_throw(v40, &unk_2A203B108, sub_29A008B08);
  }

  v15 = *(v14 + 24);
  if (v15 == 2)
  {
    v27 = a2[1];
    v47 = *a2;
    v48 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v56[0]) = 0;
    LODWORD(v56[1]) = 0;
    v50 = 0;
    v51 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(__p, &v47, v56, &v50);
    sub_29A0493F8(&v58, __p, a3, a4, a5);
    *a1 = v58;
    std::string::operator=(v10, &v59);
    v29 = v60;
    v28 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v30 = *(a1 + 40);
    *(a1 + 32) = v29;
    *(a1 + 40) = v28;
    if (v30)
    {
      sub_29A014BEC(v30);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(__p);
    if (v48)
    {
      sub_29A014BEC(v48);
    }

    v26 = 0;
  }

  else
  {
    if (v15)
    {
      sub_29A008864(&v58);
      v41 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "Invalid ITypedGeomParam: ", 25);
      v42 = *(a3 + 23);
      if (v42 >= 0)
      {
        v43 = a3;
      }

      else
      {
        v43 = *a3;
      }

      if (v42 >= 0)
      {
        v44 = *(a3 + 23);
      }

      else
      {
        v44 = *(a3 + 8);
      }

      sub_29A00911C(v41, v43, v44);
      std::stringbuf::str();
      sub_29A008C60(__p, v56);
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      v45 = __cxa_allocate_exception(0x20uLL);
      v46 = sub_29A008E1C(v45, __p);
      __cxa_throw(v46, &unk_2A203B108, sub_29A008B08);
    }

    v16 = a2[1];
    v52 = *a2;
    v53 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v56[0]) = 0;
    LODWORD(v56[1]) = 0;
    v50 = 0;
    v51 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(__p, &v52, v56, &v50);
    v49[0] = 1;
    v49[2] = v64;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v58, __p, a3, v49);
    *(a1 + 96) = v58;
    std::string::operator=((a1 + 104), &v59);
    v18 = v60;
    v17 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(a1 + 136);
    *(a1 + 128) = v18;
    *(a1 + 136) = v17;
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v58);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(__p);
    if (v53)
    {
      sub_29A014BEC(v53);
    }

    sub_29A008E78(__p, ".indices");
    sub_29A048DCC(&v58, (a1 + 96), __p, a4, a5);
    *(a1 + 48) = v58;
    std::string::operator=((a1 + 56), &v59);
    v21 = v60;
    v20 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 88);
    *(a1 + 80) = v21;
    *(a1 + 88) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, ".vals");
    sub_29A0493F8(&v58, (a1 + 96), __p, a4, a5);
    *a1 = v58;
    std::string::operator=(v10, &v59);
    v24 = v60;
    v23 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *(a1 + 40);
    *(a1 + 32) = v24;
    *(a1 + 40) = v23;
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    v26 = 1;
  }

  *(a1 + 144) = v26;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (*(&v66 + 1))
  {
    sub_29A014BEC(*(&v66 + 1));
  }

  sub_29A01752C(v65, v65[1]);
  return a1;
}

void sub_29A048BF0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a30);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  v34 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v31 - 168, v34);
  }

  else
  {
    sub_29A02D6F8(v31 - 168, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A0489F8);
}

void sub_29A048D48(_Unwind_Exception *a1)
{
  sub_29A02E0BC(v4 - 152);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v3);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v2);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A048DCC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v15 = *(v13 + 56) == 5 && *(v13 + 24) == 2;
  if (!v15 || (sub_29A049350(v13 + 32, v51) & 1) == 0)
  {
    sub_29A008864(&v45);
    v19 = sub_29A00911C(v46, "Incorrect match of header datatype: ", 36);
    v20 = sub_29A00D330(v19, (v14 + 56));
    v21 = sub_29A00911C(v20, " to expected: ", 14);
    v40 = 1;
    v39 = 5;
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

void sub_29A049208(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A048F68);
}

uint64_t sub_29A049350(uint64_t a1, int a2)
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

void sub_29A0493DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0493F8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v47[35] = "ITypedArrayProperty::ITypedArrayProperty()";
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
    sub_29A00911C(v31, "ITypedArrayProperty ctor", 24);
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
    v34 = sub_29A00911C(v47, "Nonexistent array property: ", 28);
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

  v16 = *(v13 + 56) == 10 && *(v13 + 60) == 2 && *(v13 + 24) == 2;
  if (!v16 || (sub_29A03EF80(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 2;
    v40 = 10;
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
    sub_29A00911C(v28, "vector", 6);
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

  (*(*v12 + 96))(&v46, v12, a3);
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

void sub_29A04983C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A04959CLL);
}

uint64_t sub_29A049984(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  v10 = (a1 + 8);
  sub_29A008E78((a1 + 8), "");
  *(a1 + 48) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_29A008E78((a1 + 56), "");
  *(a1 + 96) = 2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_29A008E78((a1 + 104), "");
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v59.__r_.__value_.__l.__data_ = 0uLL;
  v58 = &v59;
  v64 = 2;
  sub_29A019350(v65, &v58);
  v67 = 0;
  v66 = 0u;
  v68 = 1;
  sub_29A01752C(&v58, v59.__r_.__value_.__l.__data_);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  sub_29A02E010(a4, &v64);
  sub_29A02E010(a5, &v64);
  *a1 = v64;
  v62 = a1;
  v63 = "ITypedGeomParam::ITypedGeomParam()";
  v12 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    sub_29A008864(&v58);
    v32 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "NULL CompoundPropertyReader passed into ", 40);
    sub_29A00911C(v32, "ITypedGeomParam ctor", 20);
    std::stringbuf::str();
    sub_29A008C60(__p, v56);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v34 = sub_29A008E1C(exception, __p);
    __cxa_throw(v34, &unk_2A203B108, sub_29A008B08);
  }

  v14 = (*(*v12 + 80))(v12, a3);
  if (!v14)
  {
    sub_29A008864(&v58);
    v35 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "Nonexistent GeomParam: ", 23);
    v36 = *(a3 + 23);
    if (v36 >= 0)
    {
      v37 = a3;
    }

    else
    {
      v37 = *a3;
    }

    if (v36 >= 0)
    {
      v38 = *(a3 + 23);
    }

    else
    {
      v38 = *(a3 + 8);
    }

    sub_29A00911C(v35, v37, v38);
    std::stringbuf::str();
    sub_29A008C60(__p, v56);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    v39 = __cxa_allocate_exception(0x20uLL);
    v40 = sub_29A008E1C(v39, __p);
    __cxa_throw(v40, &unk_2A203B108, sub_29A008B08);
  }

  v15 = *(v14 + 24);
  if (v15 == 2)
  {
    v27 = a2[1];
    v47 = *a2;
    v48 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v56[0]) = 0;
    LODWORD(v56[1]) = 0;
    v50 = 0;
    v51 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(__p, &v47, v56, &v50);
    sub_29A04A150(&v58, __p, a3, a4, a5);
    *a1 = v58;
    std::string::operator=(v10, &v59);
    v29 = v60;
    v28 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v30 = *(a1 + 40);
    *(a1 + 32) = v29;
    *(a1 + 40) = v28;
    if (v30)
    {
      sub_29A014BEC(v30);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(__p);
    if (v48)
    {
      sub_29A014BEC(v48);
    }

    v26 = 0;
  }

  else
  {
    if (v15)
    {
      sub_29A008864(&v58);
      v41 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "Invalid ITypedGeomParam: ", 25);
      v42 = *(a3 + 23);
      if (v42 >= 0)
      {
        v43 = a3;
      }

      else
      {
        v43 = *a3;
      }

      if (v42 >= 0)
      {
        v44 = *(a3 + 23);
      }

      else
      {
        v44 = *(a3 + 8);
      }

      sub_29A00911C(v41, v43, v44);
      std::stringbuf::str();
      sub_29A008C60(__p, v56);
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      v45 = __cxa_allocate_exception(0x20uLL);
      v46 = sub_29A008E1C(v45, __p);
      __cxa_throw(v46, &unk_2A203B108, sub_29A008B08);
    }

    v16 = a2[1];
    v52 = *a2;
    v53 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v56[0]) = 0;
    LODWORD(v56[1]) = 0;
    v50 = 0;
    v51 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(__p, &v52, v56, &v50);
    v49[0] = 1;
    v49[2] = v64;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v58, __p, a3, v49);
    *(a1 + 96) = v58;
    std::string::operator=((a1 + 104), &v59);
    v18 = v60;
    v17 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(a1 + 136);
    *(a1 + 128) = v18;
    *(a1 + 136) = v17;
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v58);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(__p);
    if (v53)
    {
      sub_29A014BEC(v53);
    }

    sub_29A008E78(__p, ".indices");
    sub_29A048DCC(&v58, (a1 + 96), __p, a4, a5);
    *(a1 + 48) = v58;
    std::string::operator=((a1 + 56), &v59);
    v21 = v60;
    v20 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 88);
    *(a1 + 80) = v21;
    *(a1 + 88) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, ".vals");
    sub_29A04A150(&v58, (a1 + 96), __p, a4, a5);
    *a1 = v58;
    std::string::operator=(v10, &v59);
    v24 = v60;
    v23 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *(a1 + 40);
    *(a1 + 32) = v24;
    *(a1 + 40) = v23;
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    v26 = 1;
  }

  *(a1 + 144) = v26;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (*(&v66 + 1))
  {
    sub_29A014BEC(*(&v66 + 1));
  }

  sub_29A01752C(v65, v65[1]);
  return a1;
}

void sub_29A049F74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a30);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  v34 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v31 - 168, v34);
  }

  else
  {
    sub_29A02D6F8(v31 - 168, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A049D7CLL);
}

void sub_29A04A0CC(_Unwind_Exception *a1)
{
  sub_29A02E0BC(v4 - 152);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v3);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v2);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A04A150(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v47[35] = "ITypedArrayProperty::ITypedArrayProperty()";
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
    sub_29A00911C(v31, "ITypedArrayProperty ctor", 24);
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
    v34 = sub_29A00911C(v47, "Nonexistent array property: ", 28);
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

  v16 = *(v13 + 56) == 10 && *(v13 + 60) == 3 && *(v13 + 24) == 2;
  if (!v16 || (sub_29A04A6DC(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 3;
    v40 = 10;
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
    sub_29A00911C(v28, "normal", 6);
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

  (*(*v12 + 96))(&v46, v12, a3);
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

void sub_29A04A594(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A04A2F4);
}

uint64_t sub_29A04A6DC(uint64_t a1, int a2)
{
  if (a2)
  {
    return 1;
  }

  sub_29A008E78(__p, "interpretation");
  sub_29A02CFB4(a1, __p, v9);
  if (v10 < 0)
  {
    v2 = v9[1] == 6 && *v9[0] == 1836216174 && *(v9[0] + 2) == 27745;
    operator delete(v9[0]);
  }

  else
  {
    v2 = v10 == 6 && LODWORD(v9[0]) == 1836216174 && WORD2(v9[0]) == 27745;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A04A7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A04A7D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 2;
  v10 = (a1 + 8);
  sub_29A008E78((a1 + 8), "");
  *(a1 + 48) = 2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_29A008E78((a1 + 56), "");
  *(a1 + 96) = 2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_29A008E78((a1 + 104), "");
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v59.__r_.__value_.__l.__data_ = 0uLL;
  v58 = &v59;
  v64 = 2;
  sub_29A019350(v65, &v58);
  v67 = 0;
  v66 = 0u;
  v68 = 1;
  sub_29A01752C(&v58, v59.__r_.__value_.__l.__data_);
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  sub_29A02E010(a4, &v64);
  sub_29A02E010(a5, &v64);
  *a1 = v64;
  v62 = a1;
  v63 = "ITypedGeomParam::ITypedGeomParam()";
  v12 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    sub_29A008864(&v58);
    v32 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "NULL CompoundPropertyReader passed into ", 40);
    sub_29A00911C(v32, "ITypedGeomParam ctor", 20);
    std::stringbuf::str();
    sub_29A008C60(__p, v56);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v34 = sub_29A008E1C(exception, __p);
    __cxa_throw(v34, &unk_2A203B108, sub_29A008B08);
  }

  v14 = (*(*v12 + 80))(v12, a3);
  if (!v14)
  {
    sub_29A008864(&v58);
    v35 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "Nonexistent GeomParam: ", 23);
    v36 = *(a3 + 23);
    if (v36 >= 0)
    {
      v37 = a3;
    }

    else
    {
      v37 = *a3;
    }

    if (v36 >= 0)
    {
      v38 = *(a3 + 23);
    }

    else
    {
      v38 = *(a3 + 8);
    }

    sub_29A00911C(v35, v37, v38);
    std::stringbuf::str();
    sub_29A008C60(__p, v56);
    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    v39 = __cxa_allocate_exception(0x20uLL);
    v40 = sub_29A008E1C(v39, __p);
    __cxa_throw(v40, &unk_2A203B108, sub_29A008B08);
  }

  v15 = *(v14 + 24);
  if (v15 == 2)
  {
    v27 = a2[1];
    v47 = *a2;
    v48 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v56[0]) = 0;
    LODWORD(v56[1]) = 0;
    v50 = 0;
    v51 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(__p, &v47, v56, &v50);
    sub_29A047FD4(&v58, __p, a3, a4, a5);
    *a1 = v58;
    std::string::operator=(v10, &v59);
    v29 = v60;
    v28 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v30 = *(a1 + 40);
    *(a1 + 32) = v29;
    *(a1 + 40) = v28;
    if (v30)
    {
      sub_29A014BEC(v30);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(__p);
    if (v48)
    {
      sub_29A014BEC(v48);
    }

    v26 = 0;
  }

  else
  {
    if (v15)
    {
      sub_29A008864(&v58);
      v41 = sub_29A00911C(&v59.__r_.__value_.__l.__size_, "Invalid ITypedGeomParam: ", 25);
      v42 = *(a3 + 23);
      if (v42 >= 0)
      {
        v43 = a3;
      }

      else
      {
        v43 = *a3;
      }

      if (v42 >= 0)
      {
        v44 = *(a3 + 23);
      }

      else
      {
        v44 = *(a3 + 8);
      }

      sub_29A00911C(v41, v43, v44);
      std::stringbuf::str();
      sub_29A008C60(__p, v56);
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      v45 = __cxa_allocate_exception(0x20uLL);
      v46 = sub_29A008E1C(v45, __p);
      __cxa_throw(v46, &unk_2A203B108, sub_29A008B08);
    }

    v16 = a2[1];
    v52 = *a2;
    v53 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v56[0]) = 0;
    LODWORD(v56[1]) = 0;
    v50 = 0;
    v51 = 0;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(__p, &v52, v56, &v50);
    v49[0] = 1;
    v49[2] = v64;
    Alembic::Abc::v12::ICompoundProperty::ICompoundProperty(&v58, __p, a3, v49);
    *(a1 + 96) = v58;
    std::string::operator=((a1 + 104), &v59);
    v18 = v60;
    v17 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(a1 + 136);
    *(a1 + 128) = v18;
    *(a1 + 136) = v17;
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v58);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(__p);
    if (v53)
    {
      sub_29A014BEC(v53);
    }

    sub_29A008E78(__p, ".indices");
    sub_29A048DCC(&v58, (a1 + 96), __p, a4, a5);
    *(a1 + 48) = v58;
    std::string::operator=((a1 + 56), &v59);
    v21 = v60;
    v20 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(a1 + 88);
    *(a1 + 80) = v21;
    *(a1 + 88) = v20;
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, ".vals");
    sub_29A047FD4(&v58, (a1 + 96), __p, a4, a5);
    *a1 = v58;
    std::string::operator=(v10, &v59);
    v24 = v60;
    v23 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit((v61 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *(a1 + 40);
    *(a1 + 32) = v24;
    *(a1 + 40) = v23;
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    Alembic::Abc::v12::IArrayProperty::~IArrayProperty(&v58);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    v26 = 1;
  }

  *(a1 + 144) = v26;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  if (*(&v66 + 1))
  {
    sub_29A014BEC(*(&v66 + 1));
  }

  sub_29A01752C(v65, v65[1]);
  return a1;
}

void sub_29A04ADC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_29A008F20(&__p);
  sub_29A008B0C(&a30);
  if (v30)
  {
    sub_29A014BEC(v30);
  }

  v34 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v31 - 168, v34);
  }

  else
  {
    sub_29A02D6F8(v31 - 168, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A04ABCCLL);
}

void sub_29A04AF1C(_Unwind_Exception *a1)
{
  sub_29A02E0BC(v4 - 152);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v3);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v2);
  Alembic::Abc::v12::IArrayProperty::~IArrayProperty(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A04AFA0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v47[35] = "ITypedArrayProperty::ITypedArrayProperty()";
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
    sub_29A00911C(v31, "ITypedArrayProperty ctor", 24);
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
    v34 = sub_29A00911C(v47, "Nonexistent array property: ", 28);
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

  v16 = *(v13 + 56) == 10 && *(v13 + 60) == 3 && *(v13 + 24) == 2;
  if (!v16 || (sub_29A04B52C(v13 + 32, v52) & 1) == 0)
  {
    sub_29A008864(&v46);
    v20 = sub_29A00911C(v47, "Incorrect match of header datatype: ", 36);
    v21 = sub_29A00D330(v20, (v14 + 56));
    v22 = sub_29A00911C(v21, " to expected: ", 14);
    v41 = 3;
    v40 = 10;
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
    sub_29A00911C(v28, "vector", 6);
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

  (*(*v12 + 96))(&v46, v12, a3);
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

void sub_29A04B3E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A04B144);
}

uint64_t sub_29A04B52C(uint64_t a1, int a2)
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

void sub_29A04B608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A04B624(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v15 = *(v13 + 56) == 1 && *(v13 + 24) == 2;
  if (!v15 || (sub_29A04BBA4(v13 + 32, v51) & 1) == 0)
  {
    sub_29A008864(&v45);
    v19 = sub_29A00911C(v46, "Incorrect match of header datatype: ", 36);
    v20 = sub_29A00D330(v19, (v14 + 56));
    v21 = sub_29A00911C(v20, " to expected: ", 14);
    v40 = 1;
    v39 = 1;
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

void sub_29A04BA5C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A04B7C0);
}

uint64_t sub_29A04BBA4(uint64_t a1, int a2)
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

void sub_29A04BC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::OCurvesSchema::set(Alembic::AbcGeom::v12::OCurvesSchema *this, uint64_t a2)
{
  if ((*(this + 344) & 1) == 0 && !sub_29A04CA34(a2))
  {
    v4 = *(a2 + 120);
    v4.i32[2] = *(a2 + 392);
    v4.i32[3] = v4.i32[2];
    v85 = this + 8;
    v86 = "OCurvesSchema::set()";
    *v4.i8 = vmovn_s32(v4);
    v84 = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
    if (*(a2 + 48) == 127 || !*(a2 + 40) && *(a2 + 64) == *(a2 + 56))
    {
      goto LABEL_15;
    }

    if (*(this + 927) < 0)
    {
      if (!*(this + 114))
      {
        goto LABEL_13;
      }
    }

    else if (!*(this + 927))
    {
LABEL_13:
      if (*(this + 116))
      {
        goto LABEL_15;
      }
    }

    Alembic::AbcGeom::v12::OCurvesSchema::createVelocityProperty(this);
LABEL_15:
    if (*(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)) && !sub_29A051208(this + 368))
    {
      Alembic::AbcGeom::v12::OCurvesSchema::createUVsProperty(this, a2);
    }

    if (*(a2 + 312) != 127 && (*(a2 + 304) || *(a2 + 328) != *(a2 + 320)) && !sub_29A051208(this + 544))
    {
      Alembic::AbcGeom::v12::OCurvesSchema::createNormalsProperty(this, a2);
    }

    if (*(a2 + 136) != 127 && (*(a2 + 128) || *(a2 + 152) != *(a2 + 144)) && !sub_29A051208(this + 720))
    {
      Alembic::AbcGeom::v12::OCurvesSchema::createWidthProperty(this, a2);
    }

    v5 = (a2 + 400);
    if (*(a2 + 408) == 127 || !*v5 && *(a2 + 424) == *(a2 + 416))
    {
      goto LABEL_39;
    }

    if (*(this + 975) < 0)
    {
      if (!*(this + 120))
      {
        goto LABEL_37;
      }
    }

    else if (!*(this + 975))
    {
LABEL_37:
      if (!*(this + 122))
      {
        goto LABEL_38;
      }

LABEL_39:
      v6 = (a2 + 440);
      if (*(a2 + 448) == 127 || !*v6 && *(a2 + 464) == *(a2 + 456))
      {
        goto LABEL_48;
      }

      if (*(this + 1023) < 0)
      {
        if (!*(this + 126))
        {
          goto LABEL_46;
        }
      }

      else if (!*(this + 1023))
      {
LABEL_46:
        if (!*(this + 128))
        {
          goto LABEL_47;
        }

LABEL_48:
        v7 = (a2 + 480);
        if (*(a2 + 488) == 127 || !*v7 && *(a2 + 504) == *(a2 + 496))
        {
LABEL_57:
          if (*(this + 44))
          {
            v74 = *(this + 62);
            if (*(this + 279) < 0)
            {
              sub_29A008D14(&v75, *(this + 32), *(this + 33));
            }

            else
            {
              v75 = *(this + 16);
              v76 = *(this + 34);
            }

            v8 = *(this + 36);
            v77 = *(this + 35);
            v78 = v8;
            if (v8)
            {
              atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
            }

            v9 = *(a2 + 5);
            *v70 = *a2;
            *&v70[5] = v9;
            __p = 0;
            v72 = 0;
            v73 = 0;
            sub_29A00E7E0(&__p, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
            if (SHIBYTE(v76) < 0)
            {
              if (*(&v75 + 1))
              {
                goto LABEL_110;
              }
            }

            else if (HIBYTE(v76))
            {
              goto LABEL_110;
            }

            if (v77)
            {
              if (*&v70[8] == 127 || !*v70 && v72 == __p)
              {
                Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v74);
              }

              else
              {
                Alembic::Abc::v12::OArrayProperty::set(&v74);
              }
            }

LABEL_110:
            if (__p)
            {
              v72 = __p;
              operator delete(__p);
            }

            Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v74);
            v65 = *(this + 74);
            if (*(this + 327) < 0)
            {
              sub_29A008D14(&v66, *(this + 38), *(this + 39));
            }

            else
            {
              v66 = *(this + 19);
              v67 = *(this + 40);
            }

            v10 = *(this + 42);
            v68 = *(this + 41);
            v69 = v10;
            if (v10)
            {
              atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
            }

            v11 = *(a2 + 85);
            *v61 = *(a2 + 80);
            *&v61[5] = v11;
            v62 = 0;
            v63 = 0;
            v64 = 0;
            sub_29A00E7E0(&v62, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
            if (SHIBYTE(v67) < 0)
            {
              if (*(&v66 + 1))
              {
                goto LABEL_127;
              }
            }

            else if (HIBYTE(v67))
            {
              goto LABEL_127;
            }

            if (v68)
            {
              if (*&v61[8] == 127 || !*v61 && v63 == v62)
              {
                Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v65);
              }

              else
              {
                Alembic::Abc::v12::OArrayProperty::set(&v65);
              }
            }

LABEL_127:
            if (v62)
            {
              v63 = v62;
              operator delete(v62);
            }

            Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
            if (*(this + 327) < 0)
            {
              if (*(this + 39))
              {
                goto LABEL_135;
              }
            }

            else if (*(this + 327))
            {
              goto LABEL_135;
            }

            if (*(this + 41))
            {
              Alembic::Abc::v12::OScalarProperty::set((this + 1088), &v84);
              goto LABEL_136;
            }

LABEL_135:
            Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 1088));
LABEL_136:
            if (*(this + 927) < 0)
            {
              if (*(this + 114) || !*(this + 116))
              {
                goto LABEL_159;
              }

              v56 = *(this + 224);
              sub_29A008D14(&v57, *(this + 113), 0);
              v12 = *(this + 116);
            }

            else
            {
              if (*(this + 927))
              {
                goto LABEL_159;
              }

              v12 = *(this + 116);
              if (!v12)
              {
                goto LABEL_159;
              }

              v56 = *(this + 224);
              v58 = *(this + 115);
              v57 = *(this + 904);
            }

            v13 = *(this + 117);
            v59 = v12;
            v60 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
            }

            v14 = *(a2 + 45);
            *v52 = *(a2 + 40);
            *&v52[5] = v14;
            v53 = 0;
            v54 = 0;
            v55 = 0;
            sub_29A00E7E0(&v53, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
            if (SHIBYTE(v58) < 0)
            {
              if (!*(&v57 + 1))
              {
                goto LABEL_149;
              }
            }

            else if (!HIBYTE(v58))
            {
LABEL_149:
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
LABEL_159:
            if (sub_29A051208(this + 368))
            {
              sub_29A04F06C(this + 368, a2 + 216);
            }

            if (sub_29A051208(this + 544))
            {
              sub_29A04F394(this + 544, a2 + 304);
            }

            if (sub_29A051208(this + 720))
            {
              sub_29A04F6BC(this + 720, a2 + 128);
            }

            if (*(this + 975) < 0)
            {
              if (*(this + 120) || !*(this + 122))
              {
                goto LABEL_187;
              }

              v47 = *(this + 236);
              sub_29A008D14(&v48, *(this + 119), 0);
              v15 = *(this + 122);
            }

            else
            {
              if (*(this + 975))
              {
                goto LABEL_187;
              }

              v15 = *(this + 122);
              if (!v15)
              {
                goto LABEL_187;
              }

              v47 = *(this + 236);
              v49 = *(this + 121);
              v48 = *(this + 952);
            }

            v16 = *(this + 123);
            v50 = v15;
            v51 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v17 = *(a2 + 405);
            *v43 = *v5;
            *&v43[5] = v17;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            sub_29A00E7E0(&v44, *(a2 + 416), *(a2 + 424), (*(a2 + 424) - *(a2 + 416)) >> 3);
            if (SHIBYTE(v49) < 0)
            {
              if (!*(&v48 + 1))
              {
                goto LABEL_178;
              }
            }

            else if (!HIBYTE(v49))
            {
LABEL_178:
              if (v50)
              {
                if (*&v43[8] == 127 || !*v43 && v45 == v44)
                {
                  Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v47);
                }

                else
                {
                  Alembic::Abc::v12::OArrayProperty::set(&v47);
                }
              }
            }

            if (v44)
            {
              v45 = v44;
              operator delete(v44);
            }

            Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v47);
LABEL_187:
            if (*(this + 1023) < 0)
            {
              if (*(this + 126) || !*(this + 128))
              {
                goto LABEL_209;
              }

              v38 = *(this + 248);
              sub_29A008D14(&v39, *(this + 125), 0);
              v18 = *(this + 128);
            }

            else
            {
              if (*(this + 1023))
              {
                goto LABEL_209;
              }

              v18 = *(this + 128);
              if (!v18)
              {
                goto LABEL_209;
              }

              v38 = *(this + 248);
              v40 = *(this + 127);
              v39 = *(this + 1000);
            }

            v19 = *(this + 129);
            v41 = v18;
            v42 = v19;
            if (v19)
            {
              atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
            }

            v20 = *(a2 + 445);
            *v34 = *v6;
            *&v34[5] = v20;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            sub_29A00E7E0(&v35, *(a2 + 456), *(a2 + 464), (*(a2 + 464) - *(a2 + 456)) >> 3);
            if (SHIBYTE(v40) < 0)
            {
              if (!*(&v39 + 1))
              {
                goto LABEL_200;
              }
            }

            else if (!HIBYTE(v40))
            {
LABEL_200:
              if (v41)
              {
                if (*&v34[8] == 127 || !*v34 && v36 == v35)
                {
                  Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v38);
                }

                else
                {
                  Alembic::Abc::v12::OArrayProperty::set(&v38);
                }
              }
            }

            if (v35)
            {
              v36 = v35;
              operator delete(v35);
            }

            Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v38);
LABEL_209:
            if (*(this + 1071) < 0)
            {
              if (!*(this + 132) && *(this + 134))
              {
                v29 = *(this + 260);
                sub_29A008D14(&v30, *(this + 131), 0);
                v21 = *(this + 134);
LABEL_216:
                v22 = *(this + 135);
                v32 = v21;
                v33 = v22;
                if (v22)
                {
                  atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
                }

                *v25 = *v7;
                *&v25[5] = *(a2 + 485);
                v26 = 0;
                v27 = 0;
                v28 = 0;
                sub_29A00E7E0(&v26, *(a2 + 496), *(a2 + 504), (*(a2 + 504) - *(a2 + 496)) >> 3);
                if (SHIBYTE(v31) < 0)
                {
                  if (!*(&v30 + 1))
                  {
                    goto LABEL_222;
                  }
                }

                else if (!HIBYTE(v31))
                {
LABEL_222:
                  if (v32)
                  {
                    if (*&v25[8] == 127 || !*v25 && v27 == v26)
                    {
                      Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v29);
                    }

                    else
                    {
                      Alembic::Abc::v12::OArrayProperty::set(&v29);
                    }
                  }
                }

                if (v26)
                {
                  v27 = v26;
                  operator delete(v26);
                }

                Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v29);
              }
            }

            else if (!*(this + 1071))
            {
              v21 = *(this + 134);
              if (v21)
              {
                v29 = *(this + 260);
                v31 = *(this + 133);
                v30 = *(this + 1048);
                goto LABEL_216;
              }
            }

            if (*(a2 + 544) <= *(a2 + 520) || *(a2 + 552) <= *(a2 + 528) || *(a2 + 560) <= *(a2 + 536))
            {
              if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
              {
                Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
              }

              else
              {
                sub_29A04EF90(a2, &v82);
                Alembic::Abc::v12::OScalarProperty::set((this + 56), &v82);
              }
            }

            else
            {
              Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 520));
            }

LABEL_240:
            ++*(this + 44);
            return;
          }

          if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
          {
            sub_29A008864(&v82);
            sub_29A00911C(v83, "Sample 0 must have valid data for all mesh components", 53);
            std::stringbuf::str();
            sub_29A008C60(v81, &v79);
            if (v80 < 0)
            {
              operator delete(v79);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            v24 = sub_29A008E1C(exception, v81);
            __cxa_throw(v24, &unk_2A203B108, sub_29A008B08);
          }

          Alembic::Abc::v12::OArrayProperty::set(this + 248);
          Alembic::Abc::v12::OArrayProperty::set(this + 296);
          Alembic::Abc::v12::OScalarProperty::set((this + 1088), &v84);
          if (*(this + 927) < 0)
          {
            if (!*(this + 114))
            {
              goto LABEL_77;
            }
          }

          else if (!*(this + 927))
          {
LABEL_77:
            if (*(this + 116))
            {
              Alembic::Abc::v12::OArrayProperty::set(this + 896);
            }
          }

          if (*(a2 + 544) >= *(a2 + 520) && *(a2 + 552) >= *(a2 + 528) && *(a2 + 560) >= *(a2 + 536))
          {
            Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 520));
          }

          else
          {
            sub_29A04EF90(a2, &v82);
            Alembic::Abc::v12::OScalarProperty::set((this + 56), &v82);
          }

          if (*(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)))
          {
            sub_29A04F06C(this + 368, a2 + 216);
          }

          if (*(a2 + 312) != 127 && (*(a2 + 304) || *(a2 + 328) != *(a2 + 320)))
          {
            sub_29A04F394(this + 544, a2 + 304);
          }

          if (*(a2 + 136) != 127 && (*(a2 + 128) || *(a2 + 152) != *(a2 + 144)))
          {
            sub_29A04F6BC(this + 720, a2 + 128);
          }

          if (*(a2 + 408) != 127 && (*v5 || *(a2 + 424) != *(a2 + 416)))
          {
            Alembic::Abc::v12::OArrayProperty::set(this + 944);
          }

          if (*(a2 + 448) != 127 && (*v6 || *(a2 + 464) != *(a2 + 456)))
          {
            Alembic::Abc::v12::OArrayProperty::set(this + 992);
          }

          if (*(a2 + 488) != 127 && (*v7 || *(a2 + 504) != *(a2 + 496)))
          {
            Alembic::Abc::v12::OArrayProperty::set(this + 1040);
          }

          goto LABEL_240;
        }

        if (*(this + 1071) < 0)
        {
          if (!*(this + 132))
          {
            goto LABEL_55;
          }
        }

        else if (!*(this + 1071))
        {
LABEL_55:
          if (*(this + 134))
          {
            goto LABEL_57;
          }
        }

        Alembic::AbcGeom::v12::OCurvesSchema::createKnotsProperty(this);
        goto LABEL_57;
      }

LABEL_47:
      Alembic::AbcGeom::v12::OCurvesSchema::createOrdersProperty(this);
      goto LABEL_48;
    }

LABEL_38:
    Alembic::AbcGeom::v12::OCurvesSchema::createPositionWeightsProperty(this);
    goto LABEL_39;
  }

  Alembic::AbcGeom::v12::OCurvesSchema::selectiveSet(this, a2);
}

void sub_29A04C894(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(va);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v8 - 80, v11);
  }

  else
  {
    sub_29A02D6F8(v8 - 80, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A04C7FCLL);
}

void Alembic::AbcGeom::v12::OCurvesSchema::selectiveSet(Alembic::AbcGeom::v12::OCurvesSchema *this, uint64_t a2)
{
  v4 = *(a2 + 120);
  v4.i32[2] = *(a2 + 392);
  v4.i32[3] = v4.i32[2];
  v81 = this + 8;
  v82 = "OCurvesSchema::selectiveSet()";
  *v4.i8 = vmovn_s32(v4);
  v80 = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
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

    Alembic::AbcGeom::v12::OCurvesSchema::createPositionProperty(this);
  }

LABEL_10:
  if (*(this + 279) < 0)
  {
    if (*(this + 33) || !*(this + 35))
    {
      goto LABEL_40;
    }

    v75 = *(this + 62);
    sub_29A008D14(&v76, *(this + 32), 0);
    v5 = *(this + 35);
  }

  else
  {
    if (*(this + 279))
    {
      goto LABEL_40;
    }

    v5 = *(this + 35);
    if (!v5)
    {
      goto LABEL_40;
    }

    v75 = *(this + 62);
    v76 = *(this + 16);
    v77 = *(this + 34);
  }

  v6 = *(this + 36);
  v78 = v5;
  v79 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 5);
  *v71 = *a2;
  *&v71[5] = v7;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  sub_29A00E7E0(&v72, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  if (SHIBYTE(v77) < 0)
  {
    if (!*(&v76 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (!HIBYTE(v77))
  {
LABEL_23:
    if (v78)
    {
      if (*&v71[8] == 127 || !*v71 && v73 == v72)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v75);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v75);
      }
    }
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v75);
  if (*(a2 + 544) <= *(a2 + 520) || *(a2 + 552) <= *(a2 + 528) || *(a2 + 560) <= *(a2 + 536))
  {
    if (*(a2 + 8) == 127 || !*a2 && *(a2 + 24) == *(a2 + 16))
    {
      Alembic::Abc::v12::OScalarProperty::setFromPrevious((this + 56));
    }

    else
    {
      sub_29A04EF90(a2, v70);
      Alembic::Abc::v12::OScalarProperty::set((this + 56), v70);
    }
  }

  else
  {
    Alembic::Abc::v12::OScalarProperty::set((this + 56), (a2 + 520));
  }

LABEL_40:
  if (*(a2 + 88) != 127 && (*(a2 + 80) || *(a2 + 104) != *(a2 + 96)))
  {
    if (*(this + 327) < 0)
    {
      if (!*(this + 39))
      {
        goto LABEL_47;
      }
    }

    else if (!*(this + 327))
    {
LABEL_47:
      if (*(this + 41))
      {
        goto LABEL_49;
      }
    }

    Alembic::AbcGeom::v12::OCurvesSchema::createVertexProperties(this);
  }

LABEL_49:
  if (*(this + 327) < 0)
  {
    if (*(this + 39) || !*(this + 41))
    {
      goto LABEL_71;
    }

    v65 = *(this + 74);
    sub_29A008D14(&v66, *(this + 38), 0);
    v8 = *(this + 41);
  }

  else
  {
    if (*(this + 327))
    {
      goto LABEL_71;
    }

    v8 = *(this + 41);
    if (!v8)
    {
      goto LABEL_71;
    }

    v65 = *(this + 74);
    v66 = *(this + 19);
    v67 = *(this + 40);
  }

  v9 = *(this + 42);
  v68 = v8;
  v69 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 85);
  *v61 = *(a2 + 80);
  *&v61[5] = v10;
  __p = 0;
  v63 = 0;
  v64 = 0;
  sub_29A00E7E0(&__p, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  if (SHIBYTE(v67) < 0)
  {
    if (!*(&v66 + 1))
    {
      goto LABEL_62;
    }
  }

  else if (!HIBYTE(v67))
  {
LABEL_62:
    if (v68)
    {
      if (*&v61[8] == 127 || !*v61 && v63 == __p)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v65);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v65);
      }
    }
  }

  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v65);
  Alembic::Abc::v12::OScalarProperty::set((this + 1088), &v80);
LABEL_71:
  if (*(a2 + 48) != 127 && (*(a2 + 40) || *(a2 + 64) != *(a2 + 56)))
  {
    if (*(this + 927) < 0)
    {
      if (!*(this + 114))
      {
        goto LABEL_78;
      }
    }

    else if (!*(this + 927))
    {
LABEL_78:
      if (*(this + 116))
      {
        goto LABEL_80;
      }
    }

    Alembic::AbcGeom::v12::OCurvesSchema::createVelocityProperty(this);
  }

LABEL_80:
  if (*(this + 927) < 0)
  {
    if (*(this + 114) || !*(this + 116))
    {
      goto LABEL_102;
    }

    v56 = *(this + 224);
    sub_29A008D14(&v57, *(this + 113), 0);
    v11 = *(this + 116);
  }

  else
  {
    if (*(this + 927))
    {
      goto LABEL_102;
    }

    v11 = *(this + 116);
    if (!v11)
    {
      goto LABEL_102;
    }

    v56 = *(this + 224);
    v58 = *(this + 115);
    v57 = *(this + 904);
  }

  v12 = *(this + 117);
  v59 = v11;
  v60 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 45);
  *v52 = *(a2 + 40);
  *&v52[5] = v13;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  sub_29A00E7E0(&v53, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  if (SHIBYTE(v58) < 0)
  {
    if (!*(&v57 + 1))
    {
      goto LABEL_93;
    }
  }

  else if (!HIBYTE(v58))
  {
LABEL_93:
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
LABEL_102:
  if (*(a2 + 224) != 127 && (*(a2 + 216) || *(a2 + 240) != *(a2 + 232)) && !sub_29A051208(this + 368))
  {
    Alembic::AbcGeom::v12::OCurvesSchema::createUVsProperty(this, a2);
  }

  if (sub_29A051208(this + 368))
  {
    sub_29A04F06C(this + 368, a2 + 216);
  }

  if (*(a2 + 312) != 127 && (*(a2 + 304) || *(a2 + 328) != *(a2 + 320)) && !sub_29A051208(this + 544))
  {
    Alembic::AbcGeom::v12::OCurvesSchema::createNormalsProperty(this, a2);
  }

  if (sub_29A051208(this + 544))
  {
    sub_29A04F394(this + 544, a2 + 304);
  }

  if (*(a2 + 136) != 127 && (*(a2 + 128) || *(a2 + 152) != *(a2 + 144)) && !sub_29A051208(this + 720))
  {
    Alembic::AbcGeom::v12::OCurvesSchema::createWidthProperty(this, a2);
  }

  if (sub_29A051208(this + 720))
  {
    sub_29A04F6BC(this + 720, a2 + 128);
  }

  v14 = (a2 + 400);
  if (*(a2 + 408) != 127 && (*v14 || *(a2 + 424) != *(a2 + 416)))
  {
    if (*(this + 975) < 0)
    {
      if (!*(this + 120))
      {
        goto LABEL_130;
      }
    }

    else if (!*(this + 975))
    {
LABEL_130:
      if (*(this + 122))
      {
        goto LABEL_132;
      }
    }

    Alembic::AbcGeom::v12::OCurvesSchema::createPositionWeightsProperty(this);
  }

LABEL_132:
  if (*(this + 975) < 0)
  {
    if (*(this + 120) || !*(this + 122))
    {
      goto LABEL_154;
    }

    v47 = *(this + 236);
    sub_29A008D14(&v48, *(this + 119), 0);
    v15 = *(this + 122);
  }

  else
  {
    if (*(this + 975))
    {
      goto LABEL_154;
    }

    v15 = *(this + 122);
    if (!v15)
    {
      goto LABEL_154;
    }

    v47 = *(this + 236);
    v49 = *(this + 121);
    v48 = *(this + 952);
  }

  v16 = *(this + 123);
  v50 = v15;
  v51 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 405);
  *v43 = *v14;
  *&v43[5] = v17;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  sub_29A00E7E0(&v44, *(a2 + 416), *(a2 + 424), (*(a2 + 424) - *(a2 + 416)) >> 3);
  if (SHIBYTE(v49) < 0)
  {
    if (!*(&v48 + 1))
    {
      goto LABEL_145;
    }
  }

  else if (!HIBYTE(v49))
  {
LABEL_145:
    if (v50)
    {
      if (*&v43[8] == 127 || !*v43 && v45 == v44)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v47);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v47);
      }
    }
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v47);
LABEL_154:
  v18 = (a2 + 440);
  if (*(a2 + 448) != 127 && (*v18 || *(a2 + 464) != *(a2 + 456)))
  {
    if (*(this + 1023) < 0)
    {
      if (!*(this + 126))
      {
        goto LABEL_161;
      }
    }

    else if (!*(this + 1023))
    {
LABEL_161:
      if (*(this + 128))
      {
        goto LABEL_163;
      }
    }

    Alembic::AbcGeom::v12::OCurvesSchema::createOrdersProperty(this);
  }

LABEL_163:
  if (*(this + 1023) < 0)
  {
    if (*(this + 126) || !*(this + 128))
    {
      goto LABEL_185;
    }

    v38 = *(this + 248);
    sub_29A008D14(&v39, *(this + 125), 0);
    v19 = *(this + 128);
  }

  else
  {
    if (*(this + 1023))
    {
      goto LABEL_185;
    }

    v19 = *(this + 128);
    if (!v19)
    {
      goto LABEL_185;
    }

    v38 = *(this + 248);
    v40 = *(this + 127);
    v39 = *(this + 1000);
  }

  v20 = *(this + 129);
  v41 = v19;
  v42 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a2 + 445);
  *v34 = *v18;
  *&v34[5] = v21;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  sub_29A00E7E0(&v35, *(a2 + 456), *(a2 + 464), (*(a2 + 464) - *(a2 + 456)) >> 3);
  if (SHIBYTE(v40) < 0)
  {
    if (!*(&v39 + 1))
    {
      goto LABEL_176;
    }
  }

  else if (!HIBYTE(v40))
  {
LABEL_176:
    if (v41)
    {
      if (*&v34[8] == 127 || !*v34 && v36 == v35)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v38);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v38);
      }
    }
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v38);
LABEL_185:
  v22 = (a2 + 480);
  if (*(a2 + 488) != 127 && (*v22 || *(a2 + 504) != *(a2 + 496)))
  {
    if (*(this + 1071) < 0)
    {
      if (!*(this + 132))
      {
        goto LABEL_192;
      }
    }

    else if (!*(this + 1071))
    {
LABEL_192:
      if (*(this + 134))
      {
        goto LABEL_194;
      }
    }

    Alembic::AbcGeom::v12::OCurvesSchema::createKnotsProperty(this);
  }

LABEL_194:
  if (*(this + 1071) < 0)
  {
    if (*(this + 132) || !*(this + 134))
    {
      goto LABEL_216;
    }

    v29 = *(this + 260);
    sub_29A008D14(&v30, *(this + 131), 0);
    v23 = *(this + 134);
  }

  else
  {
    if (*(this + 1071))
    {
      goto LABEL_216;
    }

    v23 = *(this + 134);
    if (!v23)
    {
      goto LABEL_216;
    }

    v29 = *(this + 260);
    v31 = *(this + 133);
    v30 = *(this + 1048);
  }

  v24 = *(this + 135);
  v32 = v23;
  v33 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *v25 = *v22;
  *&v25[5] = *(a2 + 485);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_29A00E7E0(&v26, *(a2 + 496), *(a2 + 504), (*(a2 + 504) - *(a2 + 496)) >> 3);
  if (SHIBYTE(v31) < 0)
  {
    if (!*(&v30 + 1))
    {
      goto LABEL_207;
    }
  }

  else if (!HIBYTE(v31))
  {
LABEL_207:
    if (v32)
    {
      if (*&v25[8] == 127 || !*v25 && v27 == v26)
      {
        Alembic::Abc::v12::OArrayProperty::setFromPrevious(&v29);
      }

      else
      {
        Alembic::Abc::v12::OArrayProperty::set(&v29);
      }
    }
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v29);
LABEL_216:
  ++*(this + 44);
}

void sub_29A04D4F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57)
{
  if (__p)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&a15);
  v60 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_29A02D768(v57 - 64, v60);
  }

  else
  {
    sub_29A02D6F8(v57 - 64, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A04D4DCLL);
}

void Alembic::AbcGeom::v12::OCurvesSchema::calcBasisAndType(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a2 = *(a3 + 120);
  a2[1] = *(a3 + 124);
  v3 = *(a3 + 392);
  a2[2] = v3;
  a2[3] = v3;
}

void Alembic::AbcGeom::v12::OCurvesSchema::createVelocityProperty(Alembic::AbcGeom::v12::OCurvesSchema *this)
{
  v2 = *(this + 6);
  v15 = *(this + 5);
  v16 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, ".velocities");
  v3 = *(this + 90);
  v11[0] = 2;
  v11[2] = v3;
  v10[0] = 0;
  v10[2] = 0;
  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  sub_29A052004(&v17, &v15, &__p, v11, v10, v9, v8);
  *(this + 224) = v17;
  std::string::operator=((this + 904), &v18);
  v5 = v19;
  v4 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 116) = v5;
  v6 = *(this + 117);
  *(this + 117) = v4;
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
  if (*(this + 44))
  {
    v7 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 896);
      ++v7;
    }

    while (v7 < *(this + 44));
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

void sub_29A04D7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::OCurvesSchema::createUVsProperty(void *a1, uint64_t a2)
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
  if (*(a2 + 264) != 127 && (*(a2 + 256) || *(a2 + 280) != *(a2 + 272)))
  {
    sub_29A05259C(v34, &v47);
    sub_29A052640(&v30, &v44);
    sub_29A0526E4(&__dst, v34, &v30, *(a2 + 296));
    *&v37 = __dst;
    *(&v37 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v38, v22, v23[0], (v23[0] - v22) >> 3);
    *&v39[8] = v24;
    *&v39[13] = *(&v24 + 5);
    sub_29A00CB24(&v40, __p, v26, (v26 - __p) >> 3);
    v43 = v28;
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

    v9 = a1[6];
    v19 = a1[5];
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v34, "uv");
    v10 = v43;
    sub_29A050888(a1, &v17);
    LODWORD(v30) = 4;
    v31 = &v17;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    sub_29A052798(&__dst, &v19, v34, 1, v10, 1, &v30, &v15, &v13);
    sub_29A050950((a1 + 46), &__dst);
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

  sub_29A05259C(v34, &v47);
  v4 = *(a2 + 296);
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
  *&v37 = __dst;
  *(&v37 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v38, v22, v23[0], (v23[0] - v22) >> 3);
  *&v39[8] = v24;
  *&v39[13] = *(&v24 + 5);
  sub_29A00CB24(&v40, __p, v26, (v26 - __p) >> 3);
  v43 = v28;
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

  v5 = a1[6];
  v11 = a1[5];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v34, "uv");
  v6 = v43;
  sub_29A050888(a1, &v17);
  LODWORD(v30) = 4;
  v31 = &v17;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A052798(&__dst, &v11, v34, 0, v6, 1, &v30, &v15, &v13);
  sub_29A050950((a1 + 46), &__dst);
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
  if (a1[44])
  {
    v8 = 0;
    do
    {
      sub_29A04F06C((a1 + 46), &v37);
      ++v8;
    }

    while (v8 < a1[44]);
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

void sub_29A04DCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45)
{
  sub_29A050A50(&a20);
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (*(v45 - 217) < 0)
  {
    operator delete(*(v45 - 240));
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  sub_29A050844((v45 - 200));
  v47 = *(v45 - 112);
  if (v47)
  {
    *(v45 - 104) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 88);
  if (v48)
  {
    *(v45 - 80) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OCurvesSchema::createNormalsProperty(void *a1, uint64_t a2)
{
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  *&v39 = 0;
  *(&v39 + 1) = 0x30000000ALL;
  v40 = 0u;
  *v41 = 0u;
  *&v41[16] = 0x100000005;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 127;
  if (*(a2 + 352) != 127 && (*(a2 + 344) || *(a2 + 368) != *(a2 + 360)))
  {
    sub_29A051850(&v32, &v49);
    sub_29A053FB8(v36, &v32);
    sub_29A052640(&v28, &v46);
    sub_29A054134(&__dst, v36, &v28, *(a2 + 384));
    *&v39 = __dst;
    *(&v39 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v40, v20, v21[0], (v21[0] - v20) >> 3);
    *&v41[8] = v22;
    *&v41[13] = *(&v22 + 5);
    sub_29A00CB24(&v42, __p, v24, (v24 - __p) >> 3);
    v45 = v26;
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

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v9 = a1[6];
    v17 = a1[5];
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v36, "N");
    v10 = v45;
    sub_29A050888(a1, &v28);
    LODWORD(v32) = 4;
    v33 = &v28;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    sub_29A0541E8(&__dst, &v17, v36, 1, v10, 1, &v32, &v15, &v13);
    sub_29A050950((a1 + 68), &__dst);
    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v27);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v21);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst);
    }

    if (v29)
    {
      sub_29A014BEC(v29);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(*v36);
    }

    v7 = v18;
    if (!v18)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_29A014BEC(v7);
    goto LABEL_20;
  }

  sub_29A051850(&v32, &v49);
  sub_29A053FB8(v36, &v32);
  v4 = *(a2 + 384);
  *&__dst = *v36;
  *(&__dst + 5) = *&v36[5];
  v20 = 0;
  v21[0] = 0;
  v21[1] = 0;
  sub_29A00E7E0(&v20, v37, v38, (v38 - v37) >> 3);
  *&v22 = 0;
  *(&v22 + 1) = 0x100000005;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v26 = v4;
  *&v39 = __dst;
  *(&v39 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v40, v20, v21[0], (v21[0] - v20) >> 3);
  *&v41[8] = v22;
  *&v41[13] = *(&v22 + 5);
  sub_29A00CB24(&v42, __p, v24, (v24 - __p) >> 3);
  v45 = v26;
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

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  v5 = a1[6];
  v11 = a1[5];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v36, "N");
  v6 = v45;
  sub_29A050888(a1, &v28);
  LODWORD(v32) = 4;
  v33 = &v28;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A0541E8(&__dst, &v11, v36, 0, v6, 1, &v32, &v15, &v13);
  sub_29A050950((a1 + 68), &__dst);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v27);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v21);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
  }

  if (v29)
  {
    sub_29A014BEC(v29);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(*v36);
  }

  v7 = v12;
  if (v12)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (a1[44])
  {
    v8 = 0;
    do
    {
      sub_29A04F394((a1 + 68), &v39);
      ++v8;
    }

    while (v8 < a1[44]);
  }

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

void sub_29A04E27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  sub_29A050A50(&a19);
  if (a42)
  {
    sub_29A014BEC(a42);
  }

  if (*(v49 - 217) < 0)
  {
    operator delete(*(v49 - 240));
  }

  if (a18)
  {
    sub_29A014BEC(a18);
  }

  sub_29A050844((v49 - 200));
  v51 = *(v49 - 112);
  if (v51)
  {
    *(v49 - 104) = v51;
    operator delete(v51);
  }

  v52 = *(v49 - 88);
  if (v52)
  {
    *(v49 - 80) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OCurvesSchema::createWidthProperty(void *a1, uint64_t a2)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  *&v37 = 0;
  *(&v37 + 1) = 0x10000000ALL;
  v38 = 0u;
  *v39 = 0u;
  *&v39[16] = 0x100000005;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 127;
  if (*(a2 + 176) != 127 && (*(a2 + 168) || *(a2 + 192) != *(a2 + 184)))
  {
    sub_29A055520(v34, &v47);
    sub_29A052640(&v30, &v44);
    sub_29A0555C4(&__dst, v34, &v30, *(a2 + 208));
    *&v37 = __dst;
    *(&v37 + 5) = *(&__dst + 5);
    sub_29A00CB24(&v38, v22, v23[0], (v23[0] - v22) >> 3);
    *&v39[8] = v24;
    *&v39[13] = *(&v24 + 5);
    sub_29A00CB24(&v40, __p, v26, (v26 - __p) >> 3);
    v43 = v28;
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

    v9 = a1[6];
    v19 = a1[5];
    v20 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29A008E78(v34, "width");
    v10 = *(a2 + 208);
    sub_29A050888(a1, &v17);
    LODWORD(v30) = 4;
    v31 = &v17;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    sub_29A055678(&__dst, &v19, v34, 1, v10, 1, &v30, &v15, &v13);
    sub_29A050950((a1 + 90), &__dst);
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

  sub_29A055520(v34, &v47);
  v4 = *(a2 + 208);
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
  *&v37 = __dst;
  *(&v37 + 5) = *(&__dst + 5);
  sub_29A00CB24(&v38, v22, v23[0], (v23[0] - v22) >> 3);
  *&v39[8] = v24;
  *&v39[13] = *(&v24 + 5);
  sub_29A00CB24(&v40, __p, v26, (v26 - __p) >> 3);
  v43 = v28;
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

  v5 = a1[6];
  v11 = a1[5];
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(v34, "width");
  v6 = *(a2 + 208);
  sub_29A050888(a1, &v17);
  LODWORD(v30) = 4;
  v31 = &v17;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  sub_29A055678(&__dst, &v11, v34, 0, v6, 1, &v30, &v15, &v13);
  sub_29A050950((a1 + 90), &__dst);
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
  if (a1[44])
  {
    v8 = 0;
    do
    {
      sub_29A04F6BC((a1 + 90), &v37);
      ++v8;
    }

    while (v8 < a1[44]);
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

void sub_29A04E828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45)
{
  sub_29A050A50(&a20);
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  if (*(v45 - 217) < 0)
  {
    operator delete(*(v45 - 240));
  }

  if (a19)
  {
    sub_29A014BEC(a19);
  }

  sub_29A050844((v45 - 200));
  v47 = *(v45 - 112);
  if (v47)
  {
    *(v45 - 104) = v47;
    operator delete(v47);
  }

  v48 = *(v45 - 88);
  if (v48)
  {
    *(v45 - 80) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void Alembic::AbcGeom::v12::OCurvesSchema::createPositionWeightsProperty(Alembic::AbcGeom::v12::OCurvesSchema *this)
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

  sub_29A008E78(&__p, "w");
  sub_29A050888(this, &v9);
  v11 = 4;
  v12 = &v9;
  v8[0] = 0;
  v8[2] = 0;
  v7[0] = 0;
  v7[2] = 0;
  sub_29A056820(&v21, &v16, &__p, &v11, v8, v7);
  *(this + 236) = v21;
  std::string::operator=((this + 952), &v22);
  v4 = v23;
  v3 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 122) = v4;
  v5 = *(this + 123);
  *(this + 123) = v3;
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
      Alembic::Abc::v12::OArrayProperty::set(this + 944);
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

void sub_29A04EAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::AbcGeom::v12::OCurvesSchema::createOrdersProperty(Alembic::AbcGeom::v12::OCurvesSchema *this)
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

  sub_29A008E78(&__p, ".orders");
  sub_29A050888(this, &v9);
  v11 = 4;
  v12 = &v9;
  v8[0] = 0;
  v8[2] = 0;
  v7[0] = 0;
  v7[2] = 0;
  sub_29A0568FC(&v21, &v16, &__p, &v11, v8, v7);
  *(this + 248) = v21;
  std::string::operator=((this + 1000), &v22);
  v4 = v23;
  v3 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 128) = v4;
  v5 = *(this + 129);
  *(this + 129) = v3;
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
  sub_29A056DE0(&v21, &__p);
  if (*(this + 44))
  {
    v6 = 0;
    do
    {
      Alembic::Abc::v12::OArrayProperty::set(this + 992);
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