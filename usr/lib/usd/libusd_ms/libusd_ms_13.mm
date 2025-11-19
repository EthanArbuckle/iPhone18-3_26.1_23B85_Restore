void sub_29A095E3C(uint64_t a1, std::string *__str, __int128 *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A095FDC(a1);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A012BFC(a1, v10);
    v11 = sub_29A09601C(a1, v6, a3, *(a1 + 8));
LABEL_15:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) < a4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = __str;
      do
      {
        std::string::operator=(v8++, v15++);
        v14 -= 24;
      }

      while (v14);
      v12 = *(a1 + 8);
    }

    v11 = sub_29A09601C(a1, (v6 + v13), a3, v12);
    goto LABEL_15;
  }

  if (__str != a3)
  {
    do
    {
      std::string::operator=(v8, v6);
      v6 = (v6 + 24);
      ++v8;
    }

    while (v6 != a3);
    v12 = *(a1 + 8);
  }

  while (v12 != v8)
  {
    v16 = *(v12 - 1);
    v12 -= 24;
    if (v16 < 0)
    {
      operator delete(*v12);
    }
  }

  *(a1 + 8) = v8;
}

void sub_29A095FDC(uint64_t a1)
{
  if (*a1)
  {
    sub_29A012CE4(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

char *sub_29A09601C(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29A008D14(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29A095CB0(v9);
  return v4;
}

void sub_29A096134(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      Alembic::Abc::v12::IBasePropertyT<std::shared_ptr<Alembic::AbcCoreAbstract::v12::CompoundPropertyReader>>::getHeader(void)const::phd = v11;
    }
  }

  JUMPOUT(0x29A096124);
}

uint64_t Alembic::AbcMaterial::v12::MaterialFlatten::MaterialFlatten(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 72) = 0;
  *(this + 64) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 56) = this + 64;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 72) = 0;
  *(this + 64) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = 0;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 56) = this + 64;
  return this;
}

void Alembic::AbcMaterial::v12::MaterialFlatten::MaterialFlatten(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_29A0962F0(a1, a2);
}

{
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_29A030028(&v3, a2);
  v3 = &unk_2A203E478;
  sub_29A098EBC(v4, a2 + 96);
}

void sub_29A0962BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  sub_29A09932C(v11, *(v10 + 64));
  a10 = v13;
  sub_29A012C90(&a10);
  a10 = v10;
  sub_29A09926C(&a10);
  _Unwind_Resume(a1);
}

void sub_29A0962F0(void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    sub_29A098EBC(a1[1], a2);
  }

  sub_29A0993DC(a1, a2);
}

void sub_29A09647C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29A0966EC(&a9);
  sub_29A09932C(v10, *(v9 + 64));
  *(v12 - 72) = v11;
  sub_29A012C90((v12 - 72));
  *(v12 - 72) = v9;
  sub_29A09926C((v12 - 72));
  _Unwind_Resume(a1);
}

void Alembic::AbcMaterial::v12::MaterialFlatten::append(void *a1, uint64_t a2)
{
  sub_29A0962F0(a1, a2 + 96);
}

{
  sub_29A0962F0(a1, a2);
}

void sub_29A0966B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A0966EC(va);
  Alembic::Abc::v12::IObject::~IObject((v5 - 168));
  _Unwind_Resume(a1);
}

void sub_29A0966EC(uint64_t a1)
{
  *a1 = &unk_2A203E478;
  *(a1 + 96) = &unk_2A203E4B0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 296));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 248));
  v2 = (a1 + 224);
  sub_29A012C90(&v2);
  sub_29A01752C(a1 + 200, *(a1 + 208));
  sub_29A01752C(a1 + 176, *(a1 + 184));
  sub_29A01752C(a1 + 152, *(a1 + 160));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 104));
  Alembic::Abc::v12::IObject::~IObject(a1);
}

uint64_t Alembic::AbcMaterial::v12::MaterialFlatten::MaterialFlatten(uint64_t a1, Alembic::Abc::v12::IObject *a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_29A098C64(&v52);
  sub_29A030028(v51, a2);
  sub_29A008E78(&__p, ".material");
  hasMaterial = Alembic::AbcMaterial::v12::hasMaterial(v51, &v52, &__p);
  if (v44.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::IObject::~IObject(v51);
  if (hasMaterial)
  {
    sub_29A098EBC(v50, &v52);
  }

  memset(&__str, 0, sizeof(__str));
  sub_29A030028(v48, a2);
  sub_29A008E78(&__p, ".material.assign");
  MaterialAssignmentPath = Alembic::AbcMaterial::v12::getMaterialAssignmentPath(v48, &__str, &__p);
  if (v44.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(__p);
  }

  Alembic::Abc::v12::IObject::~IObject(v48);
  if (!MaterialAssignmentPath)
  {
    goto LABEL_63;
  }

  v43 = 2;
  sub_29A008E78(&v44, "");
  v45 = 0u;
  v46 = 0u;
  memset(&v47, 0, sizeof(v47));
  __p = &unk_2A203D5E0;
  if (*(a3 + 31) < 0)
  {
    if (*(a3 + 16))
    {
      goto LABEL_16;
    }
  }

  else if (*(a3 + 31))
  {
    goto LABEL_16;
  }

  if (*(a3 + 32))
  {
    Alembic::Abc::v12::IArchive::getTop(a3, &v36);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v38.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }
    }

    else if (*(&v38.__r_.__value_.__s + 23))
    {
LABEL_15:
      Alembic::Abc::v12::IObject::~IObject(&v36);
      goto LABEL_16;
    }

    v29 = v39;
    Alembic::Abc::v12::IObject::~IObject(&v36);
    if (v29)
    {
      Alembic::Abc::v12::IArchive::getTop(a3, &v36);
      v43 = v37;
      std::string::operator=(&v44, &v38);
      v30 = v39;
      if (*(&v39 + 1))
      {
        atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v31 = *(&v45 + 1);
      v45 = v30;
      if (v31)
      {
        sub_29A014BEC(v31);
      }

      v32 = v40;
      if (*(&v40 + 1))
      {
        atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v33 = *(&v46 + 1);
      v46 = v32;
      if (v33)
      {
        sub_29A014BEC(v33);
      }

      std::string::operator=(&v47, &v41);
      Alembic::Abc::v12::IObject::~IObject(&v36);
      goto LABEL_25;
    }
  }

LABEL_16:
  Alembic::Abc::v12::IObject::getArchive(a2, &v35);
  Alembic::Abc::v12::IArchive::getTop(&v35, &v36);
  v43 = v37;
  std::string::operator=(&v44, &v38);
  v8 = v39;
  if (*(&v39 + 1))
  {
    atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(&v45 + 1);
  v45 = v8;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  v10 = v40;
  if (*(&v40 + 1))
  {
    atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(&v46 + 1);
  v46 = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  std::string::operator=(&v47, &v41);
  Alembic::Abc::v12::IObject::~IObject(&v36);
  Alembic::Abc::v12::IArchive::~IArchive(&v35);
LABEL_25:
  v12 = 0;
  do
  {
    while (1)
    {
      v13 = std::string::find(&__str, 47, v12);
      v14 = v13;
      v15 = v13 == -1;
      if (v13 == -1)
      {
        break;
      }

      v16 = v13 - v12;
      if (v13 != v12)
      {
        goto LABEL_33;
      }

      ++v12;
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (v12 == size)
      {
        goto LABEL_55;
      }
    }

    v16 = -1;
LABEL_33:
    std::string::basic_string(&v35, &__str, v12, v16, &v36);
    ChildHeader = Alembic::Abc::v12::IObject::getChildHeader(&__p);
    if (ChildHeader)
    {
      Alembic::Abc::v12::IObject::getChild(&__p, &v36);
      v43 = v37;
      std::string::operator=(&v44, &v38);
      v19 = v39;
      if (*(&v39 + 1))
      {
        atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v20 = *(&v45 + 1);
      v45 = v19;
      if (v20)
      {
        sub_29A014BEC(v20);
      }

      v21 = v40;
      if (*(&v40 + 1))
      {
        atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *(&v46 + 1);
      v46 = v21;
      if (v22)
      {
        sub_29A014BEC(v22);
      }
    }

    else
    {
      v37 = 2;
      sub_29A008E78(&v38, "");
      v36 = &unk_2A203D5E0;
      v39 = 0u;
      v40 = 0u;
      memset(&v41, 0, sizeof(v41));
      v43 = v37;
      std::string::operator=(&v44, &v38);
      v23 = v39;
      if (*(&v39 + 1))
      {
        atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v24 = *(&v45 + 1);
      v45 = v23;
      if (v24)
      {
        sub_29A014BEC(v24);
      }

      v25 = v40;
      if (*(&v40 + 1))
      {
        atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v26 = *(&v46 + 1);
      v46 = v25;
      if (v26)
      {
        sub_29A014BEC(v26);
      }
    }

    std::string::operator=(&v47, &v41);
    Alembic::Abc::v12::IObject::~IObject(&v36);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (!ChildHeader)
    {
      break;
    }

    v12 = v14 + 1;
  }

  while (!v15);
LABEL_55:
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v44.__r_.__value_.__l.__size_)
    {
      goto LABEL_59;
    }
  }

  else if (!*(&v44.__r_.__value_.__s + 23))
  {
LABEL_59:
    if (v45)
    {
      Header = Alembic::Abc::v12::IObject::getHeader(&__p);
      if (sub_29A0996A4(Header + 48, 0))
      {
        LODWORD(v36) = 0;
        v37 = 0;
        LODWORD(v35.__r_.__value_.__l.__data_) = 0;
        LODWORD(v35.__r_.__value_.__r.__words[1]) = 0;
        sub_29A099A64(v34, &__p, &v36, &v35);
        Alembic::AbcMaterial::v12::MaterialFlatten::append(a1, v34);
      }
    }
  }

  Alembic::Abc::v12::IObject::~IObject(&__p);
LABEL_63:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v52 = &unk_2A203E4B0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v59);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v58);
  __p = &v57;
  sub_29A012C90(&__p);
  sub_29A01752C(v56, v56[1]);
  sub_29A01752C(v55, v55[1]);
  sub_29A01752C(v54, v54[1]);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v53);
  return a1;
}

void sub_29A096EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Alembic::Abc::v12::IObject::~IObject(&a72);
  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  sub_29A09703C(&STACK[0x428]);
  sub_29A09932C(a9, *(v72 + 64));
  STACK[0x428] = a10;
  sub_29A012C90(&STACK[0x428]);
  STACK[0x428] = v72;
  sub_29A09926C(&STACK[0x428]);
  _Unwind_Resume(a1);
}

uint64_t sub_29A09703C(uint64_t a1)
{
  *a1 = &unk_2A203E4B0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 200));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 152));
  v3 = (a1 + 128);
  sub_29A012C90(&v3);
  sub_29A01752C(a1 + 104, *(a1 + 112));
  sub_29A01752C(a1 + 80, *(a1 + 88));
  sub_29A01752C(a1 + 56, *(a1 + 64));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 8));
  return a1;
}

void Alembic::AbcMaterial::v12::MaterialFlatten::getTargetNames(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v10 = &v11;
  for (i = *a1; i != a1[1]; i += 248)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    Alembic::AbcMaterial::v12::IMaterialSchema::getTargetNames(i, &v7);
    v5 = v7;
    v6 = v8;
    while (v5 != v6)
    {
      sub_29A09ADD4(&v10, &v11, v5, v5);
      v5 += 3;
    }

    v13 = &v7;
    sub_29A012C90(&v13);
  }

  sub_29A012CE4(a2);
  sub_29A0925E4(a2, v12);
  sub_29A0935F4(a2, *(a2 + 8), v10, &v11);
  sub_29A019EE8(&v10, v11);
}

void Alembic::AbcMaterial::v12::MaterialFlatten::getShaderTypesForTarget(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  for (i = *a1; i != a1[1]; i += 248)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    Alembic::AbcMaterial::v12::IMaterialSchema::getShaderTypesForTarget(i, a2, &v9);
    v7 = v9;
    v8 = v10;
    while (v7 != v8)
    {
      sub_29A09ADD4(&v12, &v13, v7, v7);
      v7 += 3;
    }

    v15 = &v9;
    sub_29A012C90(&v15);
  }

  sub_29A012CE4(a3);
  sub_29A0925E4(a3, v14);
  sub_29A0935F4(a3, *(a3 + 8), v12, &v13);
  sub_29A019EE8(&v12, v13);
}

uint64_t Alembic::AbcMaterial::v12::MaterialFlatten::getShader(uint64_t *a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    return 0;
  }

  do
  {
    result = Alembic::AbcMaterial::v12::IMaterialSchema::getShader(v4, a2, a3, a4);
    if (result)
    {
      break;
    }

    v4 += 248;
  }

  while (v4 != a1[1]);
  return result;
}

void Alembic::AbcMaterial::v12::MaterialFlatten::getShaderParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a4;
  for (i = *(a4 + 8); i != v7; sub_29A09AE58(a4, i))
  {
    i -= 80;
  }

  *(a4 + 8) = v7;
  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  v9 = *a1;
  if (*a1 == a1[1])
  {
    v13 = 0;
    goto LABEL_25;
  }

  do
  {
    Alembic::AbcMaterial::v12::IMaterialSchema::getShaderParameters(v9, a2, a3, &v23);
    if (SHIBYTE(v25) < 0)
    {
      if (*(&v24 + 1))
      {
        goto LABEL_22;
      }
    }

    else if (HIBYTE(v25))
    {
      goto LABEL_22;
    }

    if (v26)
    {
      NumProperties = Alembic::Abc::v12::ICompoundProperty::getNumProperties(&v23);
      sub_29A0975F4(a4, NumProperties);
      for (j = 0; j < Alembic::Abc::v12::ICompoundProperty::getNumProperties(&v23); ++j)
      {
        PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(&v23);
        if (v29 == sub_29A01BCCC(&v28, PropertyHeader))
        {
          sub_29A095658(&v28, PropertyHeader, PropertyHeader);
          v15 = v23;
          if (SHIBYTE(v25) < 0)
          {
            sub_29A008D14(&v16, v24, *(&v24 + 1));
          }

          else
          {
            v16 = v24;
            v17 = v25;
          }

          v18 = v26;
          v19 = v27;
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          sub_29A0990C0(__p, PropertyHeader, &v15, PropertyHeader);
          sub_29A0976D0(a4, __p);
          Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v22);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v15);
        }
      }
    }

LABEL_22:
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v23);
    v9 += 248;
  }

  while (v9 != a1[1]);
  v13 = v29[0];
LABEL_25:
  sub_29A019EE8(&v28, v13);
}

void sub_29A09759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&a27);
  sub_29A019EE8(v27 - 112, *(v27 - 104));
  _Unwind_Resume(a1);
}

void **sub_29A0975F4(void **result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 >= 0x333333333333334)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A09AEA8(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = &v4[5 * v6];
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = v4 + v3 + *v2 - v8;
    sub_29A09AEF0(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A09B100(&v12);
  }

  return result;
}

void sub_29A0976BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A09B100(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0976D0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A09B17C(a1, a2);
  }

  else
  {
    sub_29A09B2B0(a1, *(a1 + 8), a2);
    result = v3 + 80;
    *(a1 + 8) = v3 + 80;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29A097730(uint64_t a1)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void Alembic::AbcMaterial::v12::MaterialFlatten::getNetworkTerminalTargetNames(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v10 = &v11;
  for (i = *a1; i != a1[1]; i += 248)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkTerminalTargetNames(i, &v7);
    v5 = v7;
    v6 = v8;
    while (v5 != v6)
    {
      sub_29A09ADD4(&v10, &v11, v5, v5);
      v5 += 3;
    }

    v13 = &v7;
    sub_29A012C90(&v13);
  }

  sub_29A012CE4(a2);
  sub_29A0925E4(a2, v12);
  sub_29A0935F4(a2, *(a2 + 8), v10, &v11);
  sub_29A019EE8(&v10, v11);
}

void Alembic::AbcMaterial::v12::MaterialFlatten::getNetworkTerminalShaderTypesForTarget(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  for (i = *a1; i != a1[1]; i += 248)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkTerminalShaderTypesForTarget(i, a2, &v9);
    v7 = v9;
    v8 = v10;
    while (v7 != v8)
    {
      sub_29A09ADD4(&v12, &v13, v7, v7);
      v7 += 3;
    }

    v15 = &v9;
    sub_29A012C90(&v15);
  }

  sub_29A012CE4(a3);
  sub_29A0925E4(a3, v14);
  sub_29A0935F4(a3, *(a3 + 8), v12, &v13);
  sub_29A019EE8(&v12, v13);
}

BOOL Alembic::AbcMaterial::v12::MaterialFlatten::getNetworkTerminal(uint64_t *a1, const void **a2, uint64_t a3, std::string *a4, uint64_t a5)
{
  v5 = *a1;
  if (*a1 == a1[1])
  {
    return 0;
  }

  do
  {
    result = Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkTerminal(v5, a2, a3, a4, a5);
    if (result)
    {
      break;
    }

    v5 += 248;
  }

  while (v5 != a1[1]);
  return result;
}

void Alembic::AbcMaterial::v12::MaterialFlatten::flattenNetwork(Alembic::AbcMaterial::v12::MaterialFlatten *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    *(this + 24) = 1;
    sub_29A012CE4(this + 4);
    sub_29A09932C(this + 56, *(this + 8));
    *(this + 7) = this + 64;
    *(this + 9) = 0;
    *(this + 8) = 0;
    v22[0] = 0;
    v22[1] = 0;
    v20 = 0;
    v21 = v22;
    v18 = 0;
    v19 = 0;
    memset(&__str, 0, sizeof(__str));
    memset(&v16, 0, sizeof(v16));
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    v2 = *this;
    if (*this != *(this + 1))
    {
      do
      {
        Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkNodeNames(v2, &v18);
        for (i = v18; i != v19; i += 3)
        {
          if (v22 != sub_29A01BCCC(&v21, i))
          {
            sub_29A095658(&v21, i, i);
            sub_29A070BA0(this + 32);
          }
        }

        NumNetworkInterfaceParameterMappings = Alembic::AbcMaterial::v12::IMaterialSchema::getNumNetworkInterfaceParameterMappings(v2);
        if (NumNetworkInterfaceParameterMappings)
        {
          for (j = 0; j != NumNetworkInterfaceParameterMappings; ++j)
          {
            if (Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkInterfaceParameterMapping(v2, j, &__str, &v16, __p))
            {
              v6 = sub_29A01BCCC(this + 56, &v16.__r_.__value_.__l.__data_);
              if ((this + 64) == v6)
              {
                v9 = operator new(0x18uLL);
                v9[2] = 0;
                v9[1] = 0;
                *v9 = v9 + 1;
                sub_29A09B358(v13, v9);
                v8 = v13[0];
                v7 = v13[1];
                v13[0] = &v16;
                v10 = sub_29A09B4F4(this + 7, &v16.__r_.__value_.__l.__data_, &unk_29B432FE8, v13);
                if (v7)
                {
                  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v11 = v10[8];
                v10[7] = v8;
                v10[8] = v7;
                if (v11)
                {
                  sub_29A014BEC(v11);
                }
              }

              else
              {
                v8 = v6[7];
                v7 = v6[8];
                if (v7)
                {
                  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
                }
              }

              if (v8 + 1 == sub_29A01BCCC(v8, __p))
              {
                v13[0] = __p;
                v12 = sub_29A00B038(v8, __p, &unk_29B432FE8, v13);
                std::string::operator=((v12 + 7), &__str);
              }

              if (v7)
              {
                sub_29A014BEC(v7);
              }
            }
          }
        }

        v2 = (v2 + 248);
      }

      while (v2 != *(this + 1));
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = &v18;
    sub_29A012C90(&__str);
    sub_29A019EE8(&v21, v22[0]);
  }
}

void sub_29A097CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, char *a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  a23 = &a29;
  sub_29A012C90(&a23);
  sub_29A019EE8(&a32, a33);
  _Unwind_Resume(a1);
}

double Alembic::AbcMaterial::v12::MaterialFlatten::getNetworkNode@<D0>(Alembic::AbcMaterial::v12::MaterialFlatten *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Alembic::AbcMaterial::v12::MaterialFlatten::flattenNetwork(this);
  v6 = *(this + 4);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - v6) >> 3) <= a2)
  {
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {

    Alembic::AbcMaterial::v12::MaterialFlatten::getNetworkNode(this, (v6 + 24 * a2), a3);
  }

  return result;
}

double Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode::NetworkNode(Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void Alembic::AbcMaterial::v12::MaterialFlatten::getNetworkNode(Alembic::AbcMaterial::v12::MaterialFlatten *a1@<X0>, const void **a2@<X1>, char *a3@<X8>)
{
  Alembic::AbcMaterial::v12::MaterialFlatten::flattenNetwork(a1);
  v6 = sub_29A01BCCC(a1 + 56, a2);
  if ((a1 + 64) == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
    if (v8)
    {
      v9 = 0;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v7;
      v11 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_6;
    }
  }

  v8 = 0;
  v10 = v7;
  v11 = 0;
  v9 = 1;
LABEL_6:
  Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode::NetworkNode(a3, a2, a1, &v10);
  if ((v9 & 1) == 0)
  {
    sub_29A014BEC(v8);

    sub_29A014BEC(v8);
  }
}

void sub_29A097F20(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_29A014BEC(v1);
  }

  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

char *Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode::NetworkNode(char *__dst, uint64_t a2, Alembic::AbcMaterial::v12::IMaterialSchema **a3, void *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
    *(__dst + 2) = *(a2 + 16);
    *__dst = v8;
  }

  *(__dst + 24) = 0u;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 9) = *a4;
  v9 = a4[1];
  *(__dst + 10) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29A098160(__dst + 3, 0xEF7BDEF7BDEF7BDFLL * ((a3[1] - *a3) >> 3));
  sub_29A098248(__dst + 6, 0xEF7BDEF7BDEF7BDFLL * ((a3[1] - *a3) >> 3));
  for (i = *a3; i != a3[1]; i = (i + 248))
  {
    Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkNode(i, a2, v15);
    if (Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::valid(v15))
    {
      sub_29A098324(__dst + 3, v15);
    }

    Alembic::AbcMaterial::v12::IMaterialSchema::getNetworkInterfaceParameters(i, v12);
    if (v13 < 0)
    {
      if (!v12[2])
      {
LABEL_13:
        if (v14)
        {
          sub_29A098384((__dst + 48), v12);
        }
      }
    }

    else if (!v13)
    {
      goto LABEL_13;
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v12);
    sub_29A01752C(v17, v17[1]);
    v12[0] = &v16;
    sub_29A012C90(v12);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v15);
  }

  return __dst;
}

void sub_29A0980F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = *(v8 + 80);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A09B750(va);
  sub_29A09B67C(va);
  if (*(v8 + 23) < 0)
  {
    operator delete(*v8);
  }

  _Unwind_Resume(a1);
}

void **sub_29A098160(void **result, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 >= 0x276276276276277)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A09B7D4(result, a2);
    v5 = &v4[v3];
    v12 = v4;
    v13 = &v4[v3];
    v7 = &v4[104 * v6];
    v14 = &v4[v3];
    v15 = v7;
    v8 = v2[1];
    v9 = &v4[v3 + *v2 - v8];
    sub_29A09B820(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A09BA5C(&v12);
  }

  return result;
}

void sub_29A098234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A09BA5C(va);
  _Unwind_Resume(a1);
}

void *sub_29A098248(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 >= 0x555555555555556)
    {
      sub_29A00C9A4();
    }

    v2 = result;
    v3 = result[1] - *result;
    v16 = result;
    v4 = sub_29A08E058(result, a2);
    v5 = v4 + v3;
    v12 = v4;
    v13 = (v4 + v3);
    v7 = v4 + 48 * v6;
    v14 = (v4 + v3);
    v15 = v7;
    v8 = *(v2 + 8);
    v9 = v4 + v3 + *v2 - v8;
    sub_29A09BAD8(v2, *v2, v8, v9);
    v10 = *v2;
    *v2 = v9;
    *(v2 + 8) = v5;
    v11 = *(v2 + 16);
    *(v2 + 16) = v7;
    v14 = v10;
    v15 = v11;
    v12 = v10;
    v13 = v10;
    return sub_29A09BB84(&v12);
  }

  return result;
}

void sub_29A098310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A09BB84(va);
  _Unwind_Resume(a1);
}

void sub_29A098324(void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    sub_29A09B8EC(a1, a1[1], a2);
  }

  sub_29A09BBD4(a1, a2);
}

uint64_t sub_29A098384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A09BD20(a1, a2);
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

void sub_29A0983E4(uint64_t a1)
{
  sub_29A01752C(a1 + 80, *(a1 + 88));
  v2 = (a1 + 56);
  sub_29A012C90(&v2);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(a1);
}

char *Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode::getName@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[23] < 0)
  {
    return sub_29A008D14(a2, *this, *(this + 1));
  }

  *a2 = *this;
  *(a2 + 16) = *(this + 2);
  return this;
}

uint64_t Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode::getTarget(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 == *(a1 + 32))
  {
    return 0;
  }

  while (1)
  {
    if (Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getTarget(v2, a2))
    {
      v5 = *(a2 + 23);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(a2 + 8);
      }

      if (v5)
      {
        break;
      }
    }

    v2 += 104;
    if (v2 == *(a1 + 32))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode::getNodeType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 == *(a1 + 32))
  {
    return 0;
  }

  while (1)
  {
    if (Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getNodeType(v2, a2))
    {
      v5 = *(a2 + 23);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(a2 + 8);
      }

      if (v5)
      {
        break;
      }
    }

    v2 += 104;
    if (v2 == *(a1 + 32))
    {
      return 0;
    }
  }

  return 1;
}

void Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode::getParameters(void *a1, uint64_t *a2)
{
  v5 = *a2;
  for (i = a2[1]; i != v5; sub_29A09AE58(a2, i))
  {
    i -= 80;
  }

  a2[1] = v5;
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v6 = a1[9];
  if (v6)
  {
    v7 = *v6;
    if (*v6 != (v6 + 1))
    {
      do
      {
        if (v37 == sub_29A01BCCC(&v36, v7 + 4))
        {
          for (j = a1[6]; j != a1[7]; j += 48)
          {
            PropertyHeader = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(j);
            if (PropertyHeader)
            {
              v28 = *j;
              if (*(j + 31) < 0)
              {
                sub_29A008D14(&v29, *(j + 8), *(j + 16));
              }

              else
              {
                v13 = *(j + 8);
                v30 = *(j + 24);
                v29 = v13;
              }

              v14 = *(j + 40);
              v31 = *(j + 32);
              v32 = v14;
              if (v14)
              {
                atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
              }

              sub_29A0990C0(__p, v7 + 2, &v28, PropertyHeader);
              sub_29A0976D0(a2, __p);
              Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v35);
              if (v34 < 0)
              {
                operator delete(__p[0]);
              }

              Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v28);
              sub_29A095658(&v36, v7 + 4, (v7 + 2));
              break;
            }
          }
        }

        v8 = *(v7 + 1);
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
            v9 = *(v7 + 2);
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != (a1[9] + 8));
    }
  }

  for (k = a1[3]; k != a1[4]; k = (k + 104))
  {
    Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getParameters(k, &v23);
    if (SHIBYTE(v25) < 0)
    {
      if (!*(&v24 + 1))
      {
LABEL_31:
        if (v26)
        {
          for (m = 0; m < Alembic::Abc::v12::ICompoundProperty::getNumProperties(&v23); ++m)
          {
            v17 = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(&v23);
            if (v37 == sub_29A01BCCC(&v36, v17))
            {
              sub_29A095658(&v36, v17, v17);
              v18 = v23;
              if (SHIBYTE(v25) < 0)
              {
                sub_29A008D14(&v19, v24, *(&v24 + 1));
              }

              else
              {
                v19 = v24;
                v20 = v25;
              }

              v21 = v26;
              v22 = v27;
              if (v27)
              {
                atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
              }

              sub_29A0990C0(__p, v17, &v18, v17);
              sub_29A0976D0(a2, __p);
              Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v35);
              if (v34 < 0)
              {
                operator delete(__p[0]);
              }

              Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v18);
            }
          }
        }
      }
    }

    else if (!HIBYTE(v25))
    {
      goto LABEL_31;
    }

    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v23);
  }

  sub_29A019EE8(&v36, v37[0]);
}

void Alembic::AbcMaterial::v12::MaterialFlatten::NetworkNode::getConnections(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  for (i = a2[1]; i != v5; sub_29A09BE54(a2, i))
  {
    i -= 72;
  }

  a2[1] = v5;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  memset(&v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  v15 = 0uLL;
  v16 = 0;
  v6 = *(a1 + 24);
  if (v6 != *(a1 + 32))
  {
    do
    {
      NumConnections = Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getNumConnections(v6);
      if (NumConnections)
      {
        for (j = 0; j != NumConnections; ++j)
        {
          if (Alembic::AbcMaterial::v12::IMaterialSchema::NetworkNode::getConnection(v6, j, &v18, &v17, &v15) && v20 == sub_29A01BCCC(&v19, &v18.__r_.__value_.__l.__data_))
          {
            sub_29A095658(&v19, &v18.__r_.__value_.__l.__data_, &v18);
            sub_29A099188(__dst, &v18, &v17, &v15);
            sub_29A098ACC(a2, __dst);
            if (v14 < 0)
            {
              operator delete(__p);
            }

            if (v12 < 0)
            {
              operator delete(v11);
            }

            if (v10 < 0)
            {
              operator delete(__dst[0]);
            }
          }
        }
      }

      v6 = (v6 + 104);
    }

    while (v6 != *(a1 + 32));
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15);
    }
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_29A019EE8(&v19, v20[0]);
}

void sub_29A098A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  sub_29A019EE8(v30 - 72, *(v30 - 64));
  _Unwind_Resume(a1);
}

uint64_t sub_29A098ACC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A09BEBC(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v6;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29A098B54(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

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

void sub_29A098BA8(uint64_t a1)
{
  *a1 = &unk_2A203E478;
  *(a1 + 96) = &unk_2A203E4B0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 296));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 248));
  v3 = (a1 + 224);
  sub_29A012C90(&v3);
  sub_29A01752C(a1 + 200, *(a1 + 208));
  sub_29A01752C(a1 + 176, *(a1 + 184));
  sub_29A01752C(a1 + 152, *(a1 + 160));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 104));
  Alembic::Abc::v12::IObject::~IObject(a1);
  operator delete(v2);
}

uint64_t sub_29A098C64(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *a1 = &unk_2A203E4B0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 2;
  sub_29A008E78((a1 + 160), "");
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 2;
  sub_29A008E78((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_29A098D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, Alembic::Abc::v12::ICompoundProperty *a9, uint64_t a10)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v13);
  sub_29A012C90(&a10);
  sub_29A01752C(v12, *v16);
  sub_29A01752C(v11, *v15);
  sub_29A01752C(v10, *v14);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(a9);
  _Unwind_Resume(a1);
}

void sub_29A098DC0(char *a1)
{
  *a1 = &unk_2A203E4B0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 200));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 152));
  v2 = (a1 + 128);
  sub_29A012C90(&v2);
  sub_29A01752C((a1 + 104), *(a1 + 14));
  sub_29A01752C((a1 + 80), *(a1 + 11));
  sub_29A01752C((a1 + 56), *(a1 + 8));
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 8));
  operator delete(a1);
}

void sub_29A098E80(uint64_t a1)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a1 + 8));

  operator delete(a1);
}

void sub_29A098EBC(uint64_t a1, uint64_t a2)
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

  *a1 = &unk_2A203E4B0;
  sub_29A019350((a1 + 56), (a2 + 56));
  sub_29A019350((a1 + 80), (a2 + 80));
  sub_29A019350((a1 + 104), (a2 + 104));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A09904C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v13);
  sub_29A012C90(&a10);
  sub_29A01752C((v10 + 13), v10[14]);
  sub_29A01752C((v10 + 10), v10[11]);
  sub_29A01752C(v12, v10[8]);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v11);
  _Unwind_Resume(a1);
}

void *sub_29A0990C0(void *__dst, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v7;
  }

  *(__dst + 6) = *a3;
  if (*(a3 + 31) < 0)
  {
    sub_29A008D14(__dst + 32, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v8 = *(a3 + 8);
    __dst[6] = *(a3 + 24);
    *(__dst + 2) = v8;
  }

  v9 = *(a3 + 40);
  __dst[7] = *(a3 + 32);
  __dst[8] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  __dst[9] = a4;
  return __dst;
}

void sub_29A09916C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A099188(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  if (*(a4 + 23) < 0)
  {
    sub_29A008D14(__dst + 48, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(__dst + 8) = *(a4 + 2);
    *(__dst + 3) = v9;
  }

  return __dst;
}

void sub_29A099238(_Unwind_Exception *exception_object)
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

void sub_29A09926C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 248;
      v7 = v4 - 248;
      v8 = v4 - 248;
      do
      {
        v9 = *v8;
        v8 -= 248;
        (*v9)(v7);
        v6 -= 248;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A09932C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A09932C(a1, *a2);
    sub_29A09932C(a1, a2[1]);
    sub_29A099388((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A099388(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_29A0993DC(void *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x108421084210842)
  {
    if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
    }

    if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
    {
      v5 = 0x108421084210842;
    }

    else
    {
      v5 = v3;
    }

    v11 = a1;
    if (v5)
    {
      v6 = sub_29A099524(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = &v6[248 * v2];
    v9 = v8;
    v10 = &v6[248 * v5];
    sub_29A098EBC(v8, a2);
  }

  sub_29A00C9A4();
}

void sub_29A099510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A099638(va);
  _Unwind_Resume(a1);
}

void *sub_29A099524(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x108421084210843)
  {
    sub_29A00C8B8();
  }

  return operator new(248 * a2);
}

void sub_29A099570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    sub_29A098EBC(a4, a2);
  }
}

void sub_29A09961C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_29B284DE0(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A099638(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 248);
    *(a1 + 16) = i - 248;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A0996A4(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    sub_29A008E78(v25, "schema");
    sub_29A02CFB4(a1, v25, &v27);
    if ((v29 & 0x80000000) == 0)
    {
      v14 = 0;
      goto LABEL_57;
    }

    v15 = v27;
    v14 = v28 == 23 && *v27 == 0x726574614D636241 && v27[1] == 0x6574614D5F6C6169 && *(v27 + 15) == 0x31765F6C61697265;
    goto LABEL_56;
  }

  if (a2 == 1)
  {
    return 1;
  }

  if (a2)
  {
    return 0;
  }

  sub_29A008E78(v25, "schemaObjTitle");
  sub_29A02CFB4(a1, v25, &v27);
  sub_29A099984(&v24);
  if ((v29 & 0x80u) == 0)
  {
    v3 = v29;
  }

  else
  {
    v3 = v28;
  }

  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  if (v3 == size)
  {
    v6 = (v29 & 0x80u) == 0 ? &v27 : v27;
    v7 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
    if (!memcmp(v6, v7, v3))
    {
      v14 = 1;
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  sub_29A008E78(v20, "schema");
  sub_29A02CFB4(a1, v20, v22);
  sub_29A099984(&__p);
  v8 = v23;
  if ((v23 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = v22[1];
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
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if ((v23 & 0x80u) == 0)
  {
    v12 = v22;
  }

  else
  {
    v12 = v22[0];
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
LABEL_36:
    operator delete(__p.__r_.__value_.__l.__data_);
    v8 = v23;
  }

LABEL_37:
  if ((v8 & 0x80) != 0)
  {
    operator delete(v22[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if ((*(&v24.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_43;
  }

LABEL_42:
  operator delete(v24.__r_.__value_.__l.__data_);
LABEL_43:
  if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  v15 = v27;
LABEL_56:
  operator delete(v15);
LABEL_57:
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  return v14;
}

void sub_29A099904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
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

void sub_29A099984(std::string *a1@<X8>)
{
  sub_29A008E78(&v5, ":");
  v2 = std::string::insert(&v5, 0, "AbcMaterial_Material_v1");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v6.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v6, ".material");
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

void sub_29A099A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

Alembic::Abc::v12::IObject *sub_29A099A64(Alembic::Abc::v12::IObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29A030028(a1, a2);
  *v8 = &unk_2A203E478;
  v9 = (v8 + 12);
  sub_29A098C64((v8 + 12));
  v10 = sub_29A030028(v43, a2);
  LODWORD(v34) = 0;
  v35 = 0;
  LODWORD(v28) = 0;
  LODWORD(v29) = 0;
  *(a1 + 2) = sub_29A02FF1C(v10, a3, a4, &v34, &v28);
  Alembic::Abc::v12::IObject::~IObject(v43);
  v42[10] = a1 + 8;
  v42[11] = "ISchemaObject::ISchemaObject( wrap)";
  Header = Alembic::Abc::v12::IObject::getHeader(a1);
  LODWORD(v34) = 0;
  v35 = 0;
  LODWORD(v28) = 0;
  LODWORD(v29) = 0;
  v12 = sub_29A08E8B4(a3, a4, &v34, &v28);
  if ((sub_29A0996A4(Header + 48, v12) & 1) == 0)
  {
    sub_29A008864(&v34);
    v16 = sub_29A00911C(v36, "Incorrect match of schema: ", 27);
    sub_29A008E78(__p, "schemaObjTitle");
    sub_29A02CFB4(Header + 48, __p, &v28);
    if ((v30 & 0x80u) == 0)
    {
      v17 = &v28;
    }

    else
    {
      v17 = v28;
    }

    if ((v30 & 0x80u) == 0)
    {
      v18 = v30;
    }

    else
    {
      v18 = v29;
    }

    v19 = sub_29A00911C(v16, v17, v18);
    v20 = sub_29A00911C(v19, " to expected: ", 14);
    sub_29A099984(&v31);
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v31;
    }

    else
    {
      v21 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v31.__r_.__value_.__l.__size_;
    }

    sub_29A00911C(v20, v21, size);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v28);
    }

    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    sub_29A008C60(&v28, __p);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v24 = sub_29A008E1C(exception, &v28);
    __cxa_throw(v24, &unk_2A203B108, sub_29A008B08);
  }

  Alembic::Abc::v12::IObject::getProperties(a1, &v28);
  sub_29A008E78(__p, ".material");
  v13 = *(a1 + 2);
  LODWORD(v31.__r_.__value_.__l.__data_) = 1;
  LODWORD(v31.__r_.__value_.__r.__words[1]) = v13;
  v26[0] = 0;
  v26[2] = 0;
  v25[0] = 0;
  v25[2] = 0;
  v14 = sub_29A08E8B4(a3, a4, v26, v25);
  v27[0] = 5;
  v27[2] = v14;
  sub_29A09A04C(&v34, &v28, __p, &v31, v27);
  sub_29A099F38(v9, &v34);
  v34 = &unk_2A203E4B0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v42);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v41);
  v44 = &v40;
  sub_29A012C90(&v44);
  sub_29A01752C(v39, v39[1]);
  sub_29A01752C(v38, v38[1]);
  sub_29A01752C(v37, v37[1]);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v35);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v28);
  return a1;
}

void sub_29A099DA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_29A008F20(&a15);
  sub_29A008B0C(&a36);
  v40 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v41 = v40;
    sub_29A02F0A0(v36 + 104);
    Alembic::Abc::v12::IObject::reset(v36);
    sub_29A02D768(v37 - 184, v41);
  }

  else
  {
    sub_29A02F0A0(v36 + 104);
    Alembic::Abc::v12::IObject::reset(v36);
    sub_29A02D6F8(v37 - 184, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A099C50);
}

uint64_t sub_29A099F38(uint64_t a1, uint64_t a2)
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

  sub_29A09A894(a1 + 56, (a2 + 56));
  sub_29A09A894(a1 + 80, (a2 + 80));
  sub_29A09A894(a1 + 104, (a2 + 104));
  sub_29A095FDC(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a1 + 152) = *(a2 + 152);
  std::string::operator=((a1 + 160), (a2 + 160));
  v8 = *(a2 + 184);
  v7 = *(a2 + 192);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 192);
  *(a1 + 184) = v8;
  *(a1 + 192) = v7;
  if (v9)
  {
    sub_29A014BEC(v9);
  }

  *(a1 + 200) = *(a2 + 200);
  std::string::operator=((a1 + 208), (a2 + 208));
  v11 = *(a2 + 232);
  v10 = *(a2 + 240);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 240);
  *(a1 + 232) = v11;
  *(a1 + 240) = v10;
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  return a1;
}

uint64_t sub_29A09A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_29A09A1A4(a1, a2, a3, a4, a5);
  *v6 = &unk_2A203E4B0;
  *(v6 + 64) = 0;
  *(v6 + 56) = v6 + 64;
  *(v6 + 88) = 0;
  *(v6 + 80) = v6 + 88;
  *(v6 + 72) = 0;
  *(v6 + 96) = 0;
  *(v6 + 112) = 0;
  *(v6 + 104) = v6 + 112;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 2;
  sub_29A008E78((v6 + 160), "");
  *(a1 + 200) = 2;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_29A008E78((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  Alembic::AbcMaterial::v12::IMaterialSchema::init(a1);
  return a1;
}

void sub_29A09A13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v16 = v14;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v16);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v15);
  sub_29A012C90(&a10);
  sub_29A01752C(v13, v10[14]);
  sub_29A01752C(v12, v10[11]);
  sub_29A01752C(v11, v10[8]);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v10 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_29A09A1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 2;
  sub_29A008E78((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_2A203E510;
  sub_29A09A250(a1, a2, a3, a4, a5);
  return a1;
}

void sub_29A09A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  if ((sub_29A09A78C(v12 + 32, v41) & 1) == 0)
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
    sub_29A00911C(v28, "AbcMaterial_Material_v1", 23);
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

void sub_29A09A628(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
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
  JUMPOUT(0x29A09A3DCLL);
}

uint64_t sub_29A09A78C(uint64_t a1, int a2)
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
  sub_29A02CFB4(a1, __p, v9);
  if (v10 < 0)
  {
    v2 = v9[1] == 23 && *v9[0] == 0x726574614D636241 && *(v9[0] + 1) == 0x6574614D5F6C6169 && *(v9[0] + 15) == 0x31765F6C61697265;
    operator delete(v9[0]);
  }

  else
  {
    v2 = 0;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_29A09A878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09A894(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_29A01752C(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

Alembic::Abc::v12::IObject *sub_29A09A900(Alembic::Abc::v12::IObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_29A030028(a1, a2);
  *v9 = &unk_2A203E478;
  v10 = (v9 + 12);
  sub_29A098C64((v9 + 12));
  v11 = sub_29A030028(v44, a2);
  LODWORD(v35) = 0;
  v36 = 0;
  LODWORD(v29) = 0;
  LODWORD(v30) = 0;
  *(a1 + 2) = sub_29A02FF1C(v11, a4, a5, &v35, &v29);
  Alembic::Abc::v12::IObject::~IObject(v44);
  v43[10] = a1 + 8;
  v43[11] = "ISchemaObject::ISchemaObject( wrapflag)";
  Header = Alembic::Abc::v12::IObject::getHeader(a1);
  LODWORD(v35) = 0;
  v36 = 0;
  LODWORD(v29) = 0;
  LODWORD(v30) = 0;
  v13 = sub_29A08E8B4(a4, a5, &v35, &v29);
  if ((sub_29A0996A4(Header + 48, v13) & 1) == 0)
  {
    sub_29A008864(&v35);
    v17 = sub_29A00911C(v37, "Incorrect match of schema: ", 27);
    sub_29A008E78(__p, "schemaObjTitle");
    sub_29A02CFB4(Header + 48, __p, &v29);
    if ((v31 & 0x80u) == 0)
    {
      v18 = &v29;
    }

    else
    {
      v18 = v29;
    }

    if ((v31 & 0x80u) == 0)
    {
      v19 = v31;
    }

    else
    {
      v19 = v30;
    }

    v20 = sub_29A00911C(v17, v18, v19);
    v21 = sub_29A00911C(v20, " to expected: ", 14);
    sub_29A099984(&v32);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v32;
    }

    else
    {
      v22 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    sub_29A00911C(v21, v22, size);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v31 < 0)
    {
      operator delete(v29);
    }

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    sub_29A008C60(&v29, __p);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v25 = sub_29A008E1C(exception, &v29);
    __cxa_throw(v25, &unk_2A203B108, sub_29A008B08);
  }

  Alembic::Abc::v12::IObject::getProperties(a1, &v29);
  sub_29A008E78(__p, ".material");
  v14 = *(a1 + 2);
  LODWORD(v32.__r_.__value_.__l.__data_) = 1;
  LODWORD(v32.__r_.__value_.__r.__words[1]) = v14;
  v27[0] = 0;
  v27[2] = 0;
  v26[0] = 0;
  v26[2] = 0;
  v15 = sub_29A08E8B4(a4, a5, v27, v26);
  v28[0] = 5;
  v28[2] = v15;
  sub_29A09A04C(&v35, &v29, __p, &v32, v28);
  sub_29A099F38(v10, &v35);
  v35 = &unk_2A203E4B0;
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v43);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v42);
  v45 = &v41;
  sub_29A012C90(&v45);
  sub_29A01752C(v40, v40[1]);
  sub_29A01752C(v39, v39[1]);
  sub_29A01752C(v38, v38[1]);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v36);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v29);
  return a1;
}

void sub_29A09AC40(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_29A008F20(&a15);
  sub_29A008B0C(&a36);
  v40 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v41 = v40;
    sub_29A02F0A0(v36 + 104);
    Alembic::Abc::v12::IObject::reset(v36);
    sub_29A02D768(v37 - 184, v41);
  }

  else
  {
    sub_29A02F0A0(v36 + 104);
    Alembic::Abc::v12::IObject::reset(v36);
    sub_29A02D6F8(v37 - 184, 0);
  }

  __cxa_end_catch();
  JUMPOUT(0x29A09AAECLL);
}

uint64_t *sub_29A09ADD4(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29A0956D8(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void sub_29A09AE58(uint64_t a1, uint64_t a2)
{
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void *sub_29A09AEA8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x333333333333334)
  {
    sub_29A00C8B8();
  }

  return operator new(80 * a2);
}

uint64_t sub_29A09AEF0(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
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
      sub_29A09AFBC(a1, __dst, v7);
      v7 += 5;
      __dst = v12 + 80;
      v12 += 80;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A09AE58(a1, v5);
      v5 += 80;
    }
  }

  return sub_29A09B074(v9);
}

void *sub_29A09AFBC(int a1, void *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    result = sub_29A008D14(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v5;
  }

  *(__dst + 6) = *(a3 + 6);
  if (*(a3 + 55) < 0)
  {
    result = sub_29A008D14(__dst + 32, *(a3 + 4), *(a3 + 5));
  }

  else
  {
    v7 = a3[2];
    __dst[6] = *(a3 + 6);
    *(__dst + 2) = v7;
  }

  v8 = *(a3 + 8);
  __dst[7] = *(a3 + 7);
  __dst[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  __dst[9] = *(a3 + 9);
  return result;
}

void sub_29A09B058(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A09B074(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A09B0AC(a1);
  }

  return a1;
}

void sub_29A09B0AC(uint64_t *a1)
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
      v3 -= 80;
      sub_29A09AE58(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A09B100(void **a1)
{
  sub_29A09B134(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A09B134(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 80;
    sub_29A09AE58(v4, i - 80);
  }
}

uint64_t sub_29A09B17C(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A09AEA8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[5 * v2];
  *(&v16 + 1) = &v7[5 * v6];
  sub_29A09B2B0(a1, v15, a2);
  *&v16 = v15 + 5;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_29A09AEF0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A09B100(&v14);
  return v13;
}

void sub_29A09B29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A09B100(va);
  _Unwind_Resume(a1);
}

void *sub_29A09B2B0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v5;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 6);
  if (*(a3 + 55) < 0)
  {
    result = sub_29A008D14((a2 + 32), *(a3 + 4), *(a3 + 5));
  }

  else
  {
    v6 = a3[2];
    *(a2 + 48) = *(a3 + 6);
    *(a2 + 32) = v6;
  }

  v8 = *(a3 + 8);
  *(a2 + 56) = *(a3 + 7);
  *(a2 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 72) = *(a3 + 9);
  return result;
}

void sub_29A09B33C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A09B358(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203E530;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  v6 = 0;
  sub_29A09B4A0(&v6, 0);
  return a1;
}

void sub_29A09B3CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A09B4A0(va, 0);
  _Unwind_Resume(a1);
}

void sub_29A09B3E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A09B418(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E580))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A09B458(uint64_t a1, void **a2)
{
  if (a2)
  {
    sub_29A01752C(a2, a2[1]);

    operator delete(a2);
  }
}

void sub_29A09B4A0(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A01752C(v2, v2[1]);

    operator delete(v2);
  }
}

uint64_t *sub_29A09B4F4(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A09B58C(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29A09B58C@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x48uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A09B620(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A099388(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A09B67C(void ***a1)
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
        v4 -= 104;
        sub_29A09B704(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A09B704(uint64_t a1, uint64_t a2)
{
  sub_29A01752C(a2 + 80, *(a2 + 88));
  v3 = (a2 + 56);
  sub_29A012C90(&v3);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(a2);
}

void sub_29A09B750(void ***a1)
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
        Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((v4 - 48));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_29A09B7D4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x276276276276277)
  {
    sub_29A00C8B8();
  }

  return operator new(104 * a2);
}

uint64_t sub_29A09B820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    sub_29A09B8EC(a1, a4, a2);
  }

  v6 = 1;
  return sub_29A09B9D0(v5);
}

void sub_29A09B8EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = *(a3 + 40);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a3 + 48);
  *(a2 + 56) = 0;
  *(a2 + 48) = v8;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29A09B9A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29A09B9D0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A09BA08(a1);
  }

  return a1;
}

void sub_29A09BA08(uint64_t *a1)
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
      v3 -= 104;
      sub_29A09B704(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A09BA5C(void **a1)
{
  sub_29A09BA90(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A09BA90(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 104;
    sub_29A09B704(v4, i - 104);
  }
}

void sub_29A09BAD8(uint64_t a1, Alembic::Abc::v12::ICompoundProperty *a2, Alembic::Abc::v12::ICompoundProperty *a3, uint64_t a4)
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
      Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v6);
      v6 = (v6 + 48);
    }
  }
}

void sub_29A09BB60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v4);
      v4 = (v5 - 48);
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A09BB84(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A09BBD4(void *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) <= 0x276276276276276)
  {
    if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v6 = 0x276276276276276;
    }

    else
    {
      v6 = v3;
    }

    v11 = a1;
    if (v6)
    {
      v7 = sub_29A09B7D4(a1, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = &v7[104 * v2];
    v10 = &v7[104 * v6];
    sub_29A09B8EC(a1, v9, a2);
  }

  sub_29A00C9A4();
}

void sub_29A09BD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A09BA5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A09BD20(uint64_t a1, uint64_t a2)
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
  sub_29A09BAD8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29A09BB84(&v14);
  return v13;
}

void sub_29A09BE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A09BB84(va);
  _Unwind_Resume(a1);
}

void sub_29A09BE54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_29A09BEBC(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_29A00C9A4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    v7 = sub_29A09C03C(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[72 * v2];
  v18 = v7;
  v19 = v8;
  *(&v20 + 1) = &v7[72 * v6];
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v10 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 5);
  *(v8 + 24) = v10;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v11 = a2[3];
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 3) = v11;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *&v20 = v8 + 72;
  v12 = a1[1];
  v13 = &v8[*a1 - v12];
  sub_29A09C088(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_29A09C1FC(&v18);
  return v17;
}

void sub_29A09C028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A09C1FC(va);
  _Unwind_Resume(a1);
}

void *sub_29A09C03C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x38E38E38E38E38FLL)
  {
    sub_29A00C8B8();
  }

  return operator new(72 * a2);
}

uint64_t sub_29A09C088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      sub_29A09BE54(a1, v5);
      v5 += 72;
    }
  }

  return sub_29A09C170(v12);
}

uint64_t sub_29A09C170(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A09C1A8(a1);
  }

  return a1;
}

void sub_29A09C1A8(uint64_t *a1)
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
      v3 -= 72;
      sub_29A09BE54(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A09C1FC(void **a1)
{
  sub_29A09C230(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A09C230(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_29A09BE54(v4, i - 72);
  }
}

uint64_t Alembic::AbcMaterial::v12::getMaterialAssignmentPath(uint64_t a1, uint64_t a2, uint64_t a3)
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

  Alembic::Abc::v12::IObject::getProperties(a1, v7);
  MaterialAssignmentPath = Alembic::AbcMaterial::v12::getMaterialAssignmentPath(v7, a2, a3);
  Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v7);
  return MaterialAssignmentPath;
}

{
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    if (!*(a1 + 31))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (*(a1 + 16))
  {
    return 0;
  }

LABEL_5:
  if (!*(a1 + 32))
  {
    return 0;
  }

  result = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(a1);
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (*(result + 24) != 1)
  {
    return 0;
  }

  result = 0;
  if (*(v7 + 56) == 12 && *(v7 + 60) == 1)
  {
    result = sub_29A032984(v7 + 32, 0);
    if (result)
    {
      LODWORD(v11) = 0;
      DWORD2(v11) = 0;
      LODWORD(v8) = 0;
      LODWORD(v9) = 0;
      sub_29A0323F8(v13, a1, a3, &v11, &v8);
      v8 = 0;
      v9 = 0;
      v10 = 2;
      sub_29A0323A4(v13, &v8, &v11);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v11;
      *(a2 + 16) = v12;
      Alembic::Abc::v12::IScalarProperty::~IScalarProperty(v13);
      return 1;
    }
  }

  return result;
}

void sub_29A09C424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Alembic::Abc::v12::IScalarProperty::~IScalarProperty(va);
  _Unwind_Resume(a1);
}

uint64_t Alembic::AbcMaterial::v12::hasMaterial(Alembic::Abc::v12::IObject *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 39) < 0)
  {
    if (*(this + 3))
    {
      goto LABEL_17;
    }
  }

  else if (*(this + 39))
  {
    goto LABEL_17;
  }

  if (!*(this + 5))
  {
    goto LABEL_17;
  }

  v6 = *(a3 + 23);
  if (v6 < 0)
  {
    if (*(a3 + 8) == 9)
    {
      v7 = *a3;
      goto LABEL_11;
    }

LABEL_17:
    Alembic::Abc::v12::IObject::getProperties(this, v14);
    hasMaterial = Alembic::AbcMaterial::v12::hasMaterial(v14, a2, a3);
    Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(v14);
    return hasMaterial;
  }

  v7 = a3;
  if (v6 != 9)
  {
    goto LABEL_17;
  }

LABEL_11:
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v8 != 0x6169726574616D2ELL || v9 != 108)
  {
    goto LABEL_17;
  }

  Header = Alembic::Abc::v12::IObject::getHeader(this);
  hasMaterial = 0;
  if ((sub_29A0996A4(Header + 48, 0) & 1) == 0)
  {
    goto LABEL_17;
  }

  return hasMaterial;
}

uint64_t Alembic::AbcMaterial::v12::hasMaterial(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 31) < 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (*(a1 + 31))
  {
    return 0;
  }

LABEL_5:
  if (!*(a1 + 32))
  {
    return 0;
  }

  result = Alembic::Abc::v12::ICompoundProperty::getPropertyHeader(a1);
  if (result)
  {
    result = sub_29A09A78C(result + 32, 0);
    if (result)
    {
      v8[0] = 0;
      v8[2] = 0;
      v7[0] = 0;
      v7[2] = 0;
      sub_29A09A04C(&v9, a1, a3, v8, v7);
      sub_29A099F38(a2, &v9);
      v9 = &unk_2A203E4B0;
      Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v16);
      Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v15);
      v17 = &v14;
      sub_29A012C90(&v17);
      sub_29A01752C(v13, v13[1]);
      sub_29A01752C(v12, v12[1]);
      sub_29A01752C(v11, v11[1]);
      Alembic::Abc::v12::ICompoundProperty::~ICompoundProperty(&v10);
      return 1;
    }
  }

  return result;
}

void sub_29A09C668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_29A09703C(va);
  _Unwind_Resume(a1);
}

void Alembic::AbcMaterial::v12::addMaterialAssignment(Alembic::Abc::v12::OObject *a1, const void *a2, uint64_t a3)
{
  Alembic::Abc::v12::OObject::getProperties(a1, v5);
  Alembic::AbcMaterial::v12::addMaterialAssignment(v5, a2, a3);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v5);
}

void Alembic::AbcMaterial::v12::addMaterialAssignment(uint64_t a1, const void *a2, uint64_t a3)
{
  v10 = *a1;
  if (*(a1 + 31) < 0)
  {
    sub_29A008D14(&v11, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 24);
  }

  v6 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  v7[0] = 0;
  v7[2] = 0;
  sub_29A0371E8(v15, &v10, a3, v9, v8, v7);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v10);
  Alembic::Abc::v12::OScalarProperty::set(v15, a2);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v15);
}

void Alembic::AbcMaterial::v12::addMaterial(Alembic::Abc::v12::OObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Alembic::Abc::v12::OObject::getProperties(a1, v5);
  Alembic::AbcMaterial::v12::addMaterial(v5, a2, a3);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v5);
}

void Alembic::AbcMaterial::v12::addMaterial(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = 0;
  v9[2] = 0;
  v8[0] = 0;
  v8[2] = 0;
  v7[0] = 0;
  v7[2] = 0;
  v6[0] = 0;
  v6[2] = 0;
  Alembic::AbcMaterial::v12::OMaterialSchema::OMaterialSchema(a3, &v10, a2, v9, v8, v7, v6);
  if (v11)
  {
    sub_29A014BEC(v11);
  }
}

void sub_29A09C8C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09C8D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(a4, *a1, *(a1 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a1;
    a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  std::string::append(a4, ".");
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  std::string::append(a4, v8, v9);
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (v10)
  {
    std::operator+<char>();
    if ((v14 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(a4, v11, v12);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A09C9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

std::string::size_type sub_29A09CA00(uint64_t a1, uint64_t a2)
{
  if (std::string::find(a1, 46, 0) != -1 || (result = std::string::find(a1, 47, 0), result != -1))
  {
    sub_29A008864(&v19);
    v5 = sub_29A00911C(v20, "invalid name for ", 17);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = sub_29A00911C(v5, v7, v8);
    v10 = sub_29A00911C(v9, ":", 1);
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    sub_29A00911C(v10, v12, v13);
    std::stringbuf::str();
    sub_29A008C60(v18, &__p);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v15 = sub_29A008E1C(exception, v18);
    __cxa_throw(v15, &unk_2A203B108, sub_29A008B08);
  }

  return result;
}

void sub_29A09CB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void sub_29A09CB4C(uint64_t a1, void ***a2, uint64_t a3)
{
  sub_29A012CE4(a2);
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (!v6)
  {
    sub_29A008E78(&__p, "");
    sub_29A091654(a2, &__p);
LABEL_22:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(a1 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a1 + 8);
    }

    if (v8 >= v9)
    {
      break;
    }

    v10 = std::string::find(a1, 46, v8);
    if (v10 == -1)
    {
      break;
    }

    v11 = v10;
    std::string::basic_string(&__p, a1, v8, v10 - v8, &v15);
    sub_29A091654(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v12 = *(a1 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a1 + 8);
    }

    if (v11 == v12 - 1)
    {
      sub_29A008E78(&__p, "");
      sub_29A091654(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v8 = v11 + 1;
    ++v7;
  }

  while (a3 - 1 >= v7);
  v13 = *(a1 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a1 + 8);
  }

  if (v8 < v13)
  {
    std::string::basic_string(&__p, a1, v8, 0xFFFFFFFFFFFFFFFFLL, &v15);
    sub_29A091654(a2, &__p);
    goto LABEL_22;
  }
}

void sub_29A09CCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *Alembic::Ogawa::v12::IArchive::IArchive(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = operator new(8uLL);
  Alembic::Ogawa::v12::IStreams::IStreams(v8, a2, a3, a4);
  v9 = sub_29A09CFF8(a1, v8);
  a1[2] = 0;
  a1[3] = 0;
  Alembic::Ogawa::v12::IArchive::init(v9);
  return a1;
}

void sub_29A09CD94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Ogawa::v12::IArchive::init(Alembic::Ogawa::v12::IArchive *this)
{
  if (Alembic::Ogawa::v12::IStreams::isValid(*this))
  {
    v7 = 0;
    Alembic::Ogawa::v12::IStreams::read(*this, 0, 8, 8, &v7);
    v2 = operator new(8uLL);
    v3 = v2;
    v4 = *(this + 1);
    v5 = *this;
    v6 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Alembic::Ogawa::v12::IGroup::IGroup(v2, &v5, v7, 0, 0);
    sub_29A09CF3C(this + 2, v3);
    if (v6)
    {
      sub_29A014BEC(v6);
    }
  }
}

void sub_29A09CE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (v12)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void *Alembic::Ogawa::v12::IArchive::IArchive(void *a1, uint64_t a2)
{
  v4 = operator new(8uLL);
  Alembic::Ogawa::v12::IStreams::IStreams(v4, a2);
  v5 = sub_29A09CFF8(a1, v4);
  a1[2] = 0;
  a1[3] = 0;
  Alembic::Ogawa::v12::IArchive::init(v5);
  return a1;
}

void sub_29A09CF00(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09CF3C(void *a1, uint64_t a2)
{
  sub_29A09D10C(&v5, a2);
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

void Alembic::Ogawa::v12::IArchive::~IArchive(Alembic::Ogawa::v12::IArchive *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

uint64_t Alembic::Ogawa::v12::IArchive::getGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *sub_29A09CFF8(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203E5A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A09D050(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    Alembic::Ogawa::v12::IStreams::~IStreams(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09D070(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A09D098(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    Alembic::Ogawa::v12::IStreams::~IStreams(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A09D0CC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E5F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A09D10C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203E620;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A09D164(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    Alembic::Ogawa::v12::IGroup::~IGroup(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09D184(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A09D1AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    Alembic::Ogawa::v12::IGroup::~IGroup(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A09D1E0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E670))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void Alembic::Ogawa::v12::IData::~IData(Alembic::Ogawa::v12::IData *this)
{
  sub_29A09D40C(this, 0);
}

{
  sub_29A09D40C(this, 0);
}

Alembic::Ogawa::v12::IStreams ***Alembic::Ogawa::v12::IData::IData(Alembic::Ogawa::v12::IStreams ***a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v8 = operator new(0x20uLL);
  v9 = a2[1];
  v14 = *a2;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = sub_29A09D3B8(v8, &v14);
  *a1 = v10;
  if (v15)
  {
    sub_29A014BEC(v15);
    v10 = *a1;
  }

  v13 = 0;
  v10[2] = a3 & 0x7FFFFFFFFFFFFFFFLL;
  v10[3] = 0;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    Alembic::Ogawa::v12::IStreams::read(*v10, a4, a3 & 0x7FFFFFFFFFFFFFFFLL, 8, &v13);
    Size = Alembic::Ogawa::v12::IStreams::getSize(**a1);
    if (Size >= v13)
    {
      (*a1)[3] = v13;
    }
  }

  return a1;
}

unint64_t **Alembic::Ogawa::v12::IData::read(unint64_t **this, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v5 = (*this)[3];
    if (v5)
    {
      v6 = a4 + a2 > v5;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      return Alembic::Ogawa::v12::IStreams::read(**this, a5, a4 + (*this)[2] + 8, a2, a3);
    }
  }

  return this;
}

void *sub_29A09D3B8(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[1];
    *a1 = v4;
    a1[1] = v3;
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a1 = v4;
    a1[1] = 0;
  }

  return a1;
}

void sub_29A09D40C(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    operator delete(v2);
  }
}

Alembic::Ogawa::v12::IStreams ***Alembic::Ogawa::v12::IGroup::IGroup(Alembic::Ogawa::v12::IStreams ***a1, uint64_t *a2, uint64_t a3, char a4, unint64_t a5)
{
  v10 = operator new(0x38uLL);
  v11 = a2[1];
  v19 = *a2;
  v20 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = sub_29A09DA4C(v10, &v19);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (a3)
  {
    v12 = **a1;
    if (v12)
    {
      if (Alembic::Ogawa::v12::IStreams::isValid(v12))
      {
        v13 = *a1;
        v13[6] = a3;
        Alembic::Ogawa::v12::IStreams::read(*v13, a5, a3, 8, v13 + 5);
        v14 = (*a1)[5];
        Size = Alembic::Ogawa::v12::IStreams::getSize(**a1);
        v16 = *a1;
        if (v14 <= Size >> 3 && (v17 = v16[5]) != 0)
        {
          if (v17 < 9 || (a4 & 1) == 0)
          {
            sub_29A00BF50(v16 + 2, v17);
            Alembic::Ogawa::v12::IStreams::read(**a1, a5, a3 + 8, 8 * (*a1)[5], (*a1)[2]);
          }
        }

        else
        {
          v16[5] = 0;
        }
      }
    }
  }

  return a1;
}

void Alembic::Ogawa::v12::IGroup::~IGroup(Alembic::Ogawa::v12::IGroup *this)
{
  sub_29A09DAAC(this, 0);
}

{
  sub_29A09DAAC(this, 0);
}

void Alembic::Ogawa::v12::IGroup::getGroup(unint64_t **this@<X0>, unint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  v19 = 0x8000000000000000;
  v9 = *this;
  v10 = (*this)[5];
  if (v10)
  {
    v11 = v9[2];
    v12 = v9[3];
    if (v11 == v12)
    {
      if (v10 <= a2)
      {
        return;
      }

      Alembic::Ogawa::v12::IStreams::read(*v9, a4, v9[6] + 8 * a2 + 8, 8, &v19);
      v13 = v19;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_10:
      if (v13 < 9 || v13 == (*this)[6])
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v11 = v9[2];
    v12 = v9[3];
  }

  if (a2 >= (v12 - v11) >> 3)
  {
    return;
  }

  v13 = *(v11 + 8 * a2);
  if (v13 < 0)
  {
    return;
  }

  v19 = *(v11 + 8 * a2);
  if (v13)
  {
    goto LABEL_10;
  }

LABEL_12:
  v14 = operator new(8uLL);
  v15 = v14;
  v16 = **this;
  v17 = (*this)[1];
  v18[0] = v16;
  v18[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Ogawa::v12::IGroup::IGroup(v14, v18, v13, a3, a4);
  sub_29A09CF3C(a5, v15);
  if (v17)
  {
    sub_29A014BEC(v17);
  }
}

void sub_29A09D72C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Ogawa::v12::IGroup::getData(unint64_t **this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v8 = *this;
  v9 = (*this)[5];
  if (v9)
  {
    v10 = v8[2];
    v11 = v8[3];
    if (v10 == v11)
    {
      if (v9 <= a2)
      {
        return;
      }

      v24 = 0;
      Alembic::Ogawa::v12::IStreams::read(*v8, a3, v8[6] + 8 * a2 + 8, 8, &v24);
      v12 = v24;
      if ((v24 & 0x8000000000000000) == 0)
      {
        return;
      }

      v13 = operator new(8uLL);
      v14 = v13;
      v15 = (*this)[1];
      v22 = **this;
      v23 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Alembic::Ogawa::v12::IData::IData(v13, &v22, v12, a3);
      sub_29A09D974(a4, v14);
      v16 = v23;
      if (!v23)
      {
        return;
      }

LABEL_15:
      sub_29A014BEC(v16);
      return;
    }
  }

  else
  {
    v10 = v8[2];
    v11 = v8[3];
  }

  if (a2 < (v11 - v10) >> 3 && (*(v10 + 8 * a2) & 0x8000000000000000) != 0)
  {
    v17 = operator new(8uLL);
    v18 = v17;
    v19 = v8[1];
    v20 = *v8;
    v21 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      v8 = *this;
    }

    Alembic::Ogawa::v12::IData::IData(v17, &v20, *(v8[2] + 8 * a2), a3);
    sub_29A09D974(a4, v18);
    v16 = v21;
    if (v21)
    {
      goto LABEL_15;
    }
  }
}

void sub_29A09D91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  if (v14)
  {
    operator delete(v15);
  }

  v17 = *(v13 + 8);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09D974(void *a1, uint64_t a2)
{
  sub_29A09DB28(&v5, a2);
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

uint64_t Alembic::Ogawa::v12::IGroup::isChildData(Alembic::Ogawa::v12::IGroup *this, unint64_t a2)
{
  v2 = *(*this + 16);
  if (a2 >= (*(*this + 24) - v2) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2) >> 63;
  }
}

uint64_t sub_29A09DA4C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 8);
    *a1 = v4;
    *(a1 + 8) = v3;
    if (v5)
    {
      sub_29A014BEC(v5);
    }
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_29A09DAAC(void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A09DAE8(v3);

    operator delete(v4);
  }
}

void *sub_29A09DAE8(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

void *sub_29A09DB28(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203E698;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A09DB80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    Alembic::Ogawa::v12::IData::~IData(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09DBA0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A09DBC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    Alembic::Ogawa::v12::IData::~IData(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A09DBFC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E6E8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *Alembic::Ogawa::v12::IStreams::IStreams(uint64_t *a1, char *a2, uint64_t a3, int a4)
{
  v8 = operator new(0x20uLL);
  *v8 = 0;
  v8[2] = 0;
  v8[3] = 0;
  v8[1] = 0;
  *a1 = v8;
  if (a4)
  {
    v9 = operator new(0x40uLL);
    v10 = v9;
    *v9 = &unk_2A203E710;
    *(v9 + 1) = a3;
    if (a2[23] < 0)
    {
      sub_29A008D14(v9 + 16, *a2, *(a2 + 1));
      v17 = a2[23];
      *(v10 + 10) = -1;
      v11 = (v10 + 40);
      *(v10 + 6) = 0;
      v12 = (v10 + 48);
      *(v10 + 7) = 0;
      if (v17 < 0)
      {
        a2 = *a2;
      }
    }

    else
    {
      *(v9 + 1) = *a2;
      *(v9 + 4) = *(a2 + 2);
      *(v9 + 10) = -1;
      v11 = (v9 + 40);
      *(v9 + 6) = 0;
      v12 = (v9 + 48);
      *(v9 + 7) = 0;
    }

    v18 = open(a2, 0);
    v19 = v18;
    if (v18 < 0)
    {
      v18 = -1;
    }

    *v11 = v18;
    if ((v19 & 0x80000000) == 0 && (fstat(v18, &v27) & 0x80000000) == 0)
    {
      st_size = v27.st_size;
      if ((v27.st_size & 0x8000000000000000) == 0)
      {
        v21 = *(v10 + 10);
        v22 = *(v10 + 7);
        if (v22)
        {
          munmap(v22, *v12);
          *(v10 + 7) = 0;
        }

        v23 = mmap(0, st_size, 1, 2, v21, 0);
        if (v23 != -1)
        {
          *(v10 + 6) = st_size;
          *(v10 + 7) = v23;
        }
      }
    }

    v15 = operator new(0x20uLL);
    v16 = &unk_2A203E778;
  }

  else
  {
    v10 = operator new(0x20uLL);
    *v10 = &unk_2A203E7F0;
    *(v10 + 2) = a3;
    if (a2[23] >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    v14 = open(v13, 0);
    *(v10 + 2) = v14;
    *(v10 + 3) = 0;
    if (fstat(v14, &v27) < 0 || v27.st_size < 0)
    {
      *(v10 + 3) = 0;
    }

    else
    {
      *(v10 + 3) = v27.st_size;
    }

    v15 = operator new(0x20uLL);
    v16 = &unk_2A203E848;
  }

  v15->__shared_owners_ = 0;
  v15->__vftable = v16;
  v15->__shared_weak_owners_ = 0;
  v15[1].__vftable = v10;
  v24 = *a1;
  v26[0] = v10;
  v26[1] = v15;
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_29A09DF38(v24, v26, 1);
  sub_29A014BEC(v15);
  sub_29A014BEC(v15);
  return a1;
}

void sub_29A09DE9C(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_29A09ED48(v1, 0);
  _Unwind_Resume(a1);
}

void sub_29A09DF38(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a3 && *a2 && (*(**a2 + 24))(*a2))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v18 = 0;
      v19 = 0;
      (*(**a2 + 32))(*a2, v7, 0, 16, &v18);
      if (v18 != 2002872143 || BYTE4(v18) != 97)
      {
LABEL_24:
        *a1 = 0;
        return;
      }

      v9 = BYTE5(v18) == 255;
      v10 = BYTE6(v18);
      v11 = SHIBYTE(v18);
      v12 = v19;
      v13 = (*(**a2 + 40))(*a2);
      v14 = v11 | (v10 << 8);
      if (v7)
      {
        if (v6 != v12 || *(a1 + 1) != v9 || *(a1 + 2) != v14 || *(a1 + 8) != v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        *(a1 + 1) = v9;
        *(a1 + 2) = v14;
        v6 = v12;
        *(a1 + 8) = v13;
      }

      ++v7;
    }

    while (a3 != v7);
    if ((v11 | (v10 << 8)) == 1)
    {
      v16 = *a2;
      v15 = a2[1];
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(a1 + 24);
      *(a1 + 16) = v16;
      *(a1 + 24) = v15;
      if (v17)
      {
        sub_29A014BEC(v17);
      }

      *a1 = 1;
    }
  }
}

uint64_t *Alembic::Ogawa::v12::IStreams::IStreams(uint64_t *a1, uint64_t a2)
{
  v19[18] = *MEMORY[0x29EDCA608];
  v4 = operator new(0x20uLL);
  *v4 = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[1] = 0;
  *a1 = v4;
  v5 = operator new(0x40uLL);
  v5->~__shared_weak_count = &unk_2A203E8C0;
  v5->~__shared_weak_count_0 = 0;
  v5->__on_zero_shared = 0;
  v5->__get_deleter = 0;
  sub_29A0292DC(&v5->~__shared_weak_count_0, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v5->__on_zero_shared_weak = 0;
  v5[1].~__shared_weak_count = 0;
  v5[1].~__shared_weak_count_0 = 0;
  v7 = v5->~__shared_weak_count_0;
  on_zero_shared = v5->__on_zero_shared;
  v8 = (on_zero_shared - v7) >> 3;
  if (v8 >> 58)
  {
    v9 = -1;
  }

  else
  {
    v9 = 8 * (on_zero_shared - v7) + 16;
  }

  v10 = operator new[](v9);
  *v10 = 64;
  v10[1] = v8;
  if (on_zero_shared == v7)
  {
    v12 = on_zero_shared;
  }

  else
  {
    v11 = 0;
    do
    {
      pthread_mutex_init(&v10[v11 / 8 + 2], 0);
      v11 += 64;
    }

    while (v8 << 6 != v11);
    on_zero_shared = v5->~__shared_weak_count_0;
    v12 = v5->__on_zero_shared;
  }

  v5[1].__on_zero_shared = (v10 + 2);
  sub_29A08AF9C(&v5->__on_zero_shared_weak, (v12 - on_zero_shared) >> 3);
  if (v5->__on_zero_shared != v5->~__shared_weak_count_0)
  {
    v13 = 0;
    do
    {
      std::istream::tellg();
      v19[0] = v19[17];
      sub_29A018094(&v5->__on_zero_shared_weak, v19);
      ++v13;
    }

    while (v13 < (v5->__on_zero_shared - v5->~__shared_weak_count_0) >> 3);
  }

  v14 = operator new(0x20uLL);
  v14->__shared_owners_ = 0;
  v14->__vftable = &unk_2A203E918;
  v14->__shared_weak_owners_ = 0;
  v14[1].__vftable = v5;
  v15 = *a1;
  v18[0] = v5;
  v18[1] = v14;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = (*(v5->~__shared_weak_count + 2))(v5);
  sub_29A09DF38(v15, v18, v16);
  sub_29A014BEC(v14);
  sub_29A014BEC(v14);
  return a1;
}

void sub_29A09E368(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  sub_29A09ED48(v1, 0);
  _Unwind_Resume(a1);
}

void Alembic::Ogawa::v12::IStreams::~IStreams(Alembic::Ogawa::v12::IStreams *this)
{
  sub_29A09ED48(this, 0);
}

{
  sub_29A09ED48(this, 0);
}

unint64_t Alembic::Ogawa::v12::IStreams::read(unint64_t this, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (**this == 1)
  {
    v9 = this;
    this = (*(**(*this + 16) + 16))(*(*this + 16));
    if (this > a2)
    {
      this = (*(**(*v9 + 16) + 32))(*(*v9 + 16), a2, a3, a4, a5);
      if ((this & 1) == 0)
      {
        v10 = sub_29A00911C(MEMORY[0x29EDC93C8], "Ogawa IStreams::read failed.", 28);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(&v12, MEMORY[0x29EDC93D0]);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(&v12);
        std::ostream::put();
        return std::ostream::flush();
      }
    }
  }

  return this;
}

size_t *sub_29A09E644(size_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    munmap(v2, *a1);
    a1[1] = 0;
  }

  return a1;
}

uint64_t sub_29A09E680(uint64_t a1)
{
  *a1 = &unk_2A203E710;
  v2 = *(a1 + 56);
  if (v2)
  {
    munmap(v2, *(a1 + 48));
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 != -1)
  {
    close(v3);
  }

  sub_29A09E644((a1 + 48));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_29A09E700(uint64_t a1)
{
  v1 = sub_29A09E680(a1);

  operator delete(v1);
}

BOOL sub_29A09E740(uint64_t a1, int a2, size_t a3, size_t __n, void *__dst)
{
  v5 = *(a1 + 48);
  v8 = v5 >= __n && v5 >= a3 && __n + a3 <= v5;
  if (v8)
  {
    memcpy(__dst, (*(a1 + 56) + a3), __n);
  }

  return v8;
}

void sub_29A09E7A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A09E7D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A09E800(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E7C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29A09E840(uint64_t a1)
{
  *a1 = &unk_2A203E7F0;
  v2 = *(a1 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return a1;
}

void sub_29A09E890(uint64_t a1)
{
  v1 = sub_29A09E840(a1);

  operator delete(v1);
}

uint64_t sub_29A09E8D0(uint64_t a1, uint64_t a2, off_t a3, unint64_t a4, char *a5)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v10 = *(a1 + 24);
    if (v10 >= a4 || v10 >= a4 + a3)
    {
      v12 = 0;
      v13 = *(a1 + 8);
      while (1)
      {
        v14 = a4 - v12 >= 0x40000000 ? 0x40000000 : a4 - v12;
        v15 = pread(v13, a5, v14, a3);
        if (v15 < 0)
        {
          break;
        }

        v12 += v15;
        v16 = v12 < a4;
        if (v15)
        {
          a3 += v15;
          a5 += v15;
          if (v12 < a4)
          {
            continue;
          }
        }

        return !v16;
      }

      if (*__error() != 4)
      {
        return 0;
      }

      v16 = a4 > v12;
      return !v16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_29A09E9C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A09E9EC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A09EA1C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E898))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A09EA5C(void *a1)
{
  *a1 = &unk_2A203E8C0;
  v2 = a1[7];
  if (v2)
  {
    v3 = *(v2 - 8);
    if (v3)
    {
      v4 = (v2 + (v3 << 6) - 64);
      v5 = -64 * v3;
      do
      {
        pthread_mutex_destroy(v4--);
        v5 += 64;
      }

      while (v5);
    }

    operator delete[]((v2 - 16));
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_29A09EB00(void *a1)
{
  v1 = sub_29A09EA5C(a1);

  operator delete(v1);
}

BOOL sub_29A09EB48(void *a1, unint64_t a2)
{
  if (a2 >= (a1[2] - a1[1]) >> 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  v4 = (a1[7] + (v3 << 6));
  pthread_mutex_lock(v4);
  v5 = *(a1[1] + 8 * v3);
  std::istream::seekg();
  if (*(v5 + *(*v5 - 24) + 32))
  {
    v6 = 0;
  }

  else
  {
    std::istream::read();
    v6 = *(v5 + *(*v5 - 24) + 32) == 0;
  }

  pthread_mutex_unlock(v4);
  return v6;
}

void sub_29A09EC80(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void sub_29A09ECB0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A09ECD8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A09ED08(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E968))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A09ED48(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    operator delete(v2);
  }
}

uint64_t *Alembic::Ogawa::v12::OArchive::OArchive(uint64_t *a1, uint64_t a2)
{
  v4 = operator new(8uLL);
  Alembic::Ogawa::v12::OStream::OStream(v4, a2);
  sub_29A09F044(a1, v4);
  a1[2] = 0;
  a1[3] = 0;
  v5 = operator new(0x18uLL);
  v6 = v5;
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Ogawa::v12::OGroup::OGroup(v5, &v9);
  sub_29A09EEA0(a1 + 2, v6);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return a1;
}

{
  v4 = operator new(8uLL);
  Alembic::Ogawa::v12::OStream::OStream(v4, a2);
  sub_29A09F044(a1, v4);
  v5 = operator new(0x18uLL);
  v6 = v5;
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Alembic::Ogawa::v12::OGroup::OGroup(v5, &v9);
  sub_29A09F158(a1 + 2, v6);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return a1;
}

void sub_29A09EE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 24);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  v13 = *(v10 + 8);
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09EEA0(void *a1, void *a2)
{
  sub_29A09F158(&v5, a2);
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

void sub_29A09EF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Ogawa::v12::OArchive::~OArchive(Alembic::Ogawa::v12::OArchive *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

uint64_t Alembic::Ogawa::v12::OArchive::getGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  *a2 = *(this + 16);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *sub_29A09F044(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203E990;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A09F09C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    Alembic::Ogawa::v12::OStream::~OStream(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09F0BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A09F0E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    Alembic::Ogawa::v12::OStream::~OStream(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A09F118(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203E9E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A09F158(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203EA08;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  sub_29A017894(a1, a2, a2);
  return a1;
}

void sub_29A09F1C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    Alembic::Ogawa::v12::OGroup::~OGroup(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A09F1E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29A09F208(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    Alembic::Ogawa::v12::OGroup::~OGroup(v1);

    operator delete(v2);
  }
}

uint64_t sub_29A09F23C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203EA58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

Alembic::Ogawa::v12::OData *Alembic::Ogawa::v12::OData::OData(Alembic::Ogawa::v12::OData *this)
{
  v2 = operator new(0x20uLL);
  *v2 = 0u;
  v2[1] = 0u;
  *this = v2;
  return this;
}

{
  v2 = operator new(0x20uLL);
  *v2 = 0u;
  v2[1] = 0u;
  *this = v2;
  return this;
}

void *Alembic::Ogawa::v12::OData::OData(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = operator new(0x20uLL);
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *v8 = v10;
    v8[1] = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v8[2] = a3;
    v8[3] = a4;
    *a1 = v8;
    sub_29A014BEC(v9);
  }

  else
  {
    *v8 = v10;
    v8[1] = 0;
    v8[2] = a3;
    v8[3] = a4;
    *a1 = v8;
  }

  return a1;
}

void Alembic::Ogawa::v12::OData::~OData(Alembic::Ogawa::v12::OData *this)
{
  sub_29A09D40C(this, 0);
}

{
  sub_29A09D40C(this, 0);
}

uint64_t **Alembic::Ogawa::v12::OData::rewrite(uint64_t **this, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v4 = this;
    v5 = *this;
    this = **this;
    if (this)
    {
      v7 = v5[3];
      if (v7)
      {
        v8 = a4 + a2 > v7;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        Alembic::Ogawa::v12::OStream::seek(this, v5[2] + a4 + 8);
        v10 = **v4;

        return Alembic::Ogawa::v12::OStream::write(v10, a3, a2);
      }
    }
  }

  return this;
}

void *Alembic::Ogawa::v12::OGroup::OGroup(void *a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  v6 = operator new(0x48uLL);
  a1[2] = v6;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  v7 = *(*a2 + 16);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v10 = *(v6 + 1);
    *v6 = v9;
    *(v6 + 1) = v8;
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  else
  {
    *v6 = v9;
    *(v6 + 1) = 0;
  }

  v11 = a1[2];
  v13 = *a2;
  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v11[3];
  v14 = v11[4];
  if (v15 >= v14)
  {
    v17 = 0xAAAAAAAAAAAAAAALL;
    v18 = v11[2];
    v19 = v15 - v18;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v18) >> 3);
    v21 = v20 + 1;
    if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v22 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v18) >> 3);
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    if (v22 < 0x555555555555555)
    {
      v17 = v21;
    }

    v31[4] = v11 + 2;
    if (v17)
    {
      v23 = sub_29A012C48((v11 + 2), v17);
      v17 = v24;
      v18 = v11[2];
      v19 = v11[3] - v18;
    }

    else
    {
      v23 = 0;
    }

    v25 = &v23[24 * v20];
    v26 = &v23[24 * v17];
    *v25 = v13;
    *(v25 + 1) = v12;
    *(v25 + 2) = a3;
    v16 = v25 + 24;
    v27 = &v25[-v19];
    memcpy(&v25[-v19], v18, v19);
    v28 = v11[2];
    v11[2] = v27;
    v11[3] = v16;
    v29 = v11[4];
    v11[4] = v26;
    v31[2] = v28;
    v31[3] = v29;
    v31[0] = v28;
    v31[1] = v28;
    sub_29A03D11C(v31);
  }

  else
  {
    *v15 = v13;
    *(v15 + 1) = v12;
    v16 = v15 + 24;
    *(v15 + 2) = a3;
  }

  v11[3] = v16;
  *(a1[2] + 64) = 0x7FFFFFFFFFFFFFFFLL;
  return a1;
}

void sub_29A09F620(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29B284E4C(v2, v1);
  _Unwind_Resume(a1);
}

void *Alembic::Ogawa::v12::OGroup::OGroup(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = operator new(0x48uLL);
  a1[2] = v4;
  v5 = a1 + 2;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v8 = *(v4 + 1);
    *v4 = v7;
    *(v4 + 1) = v6;
    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  else
  {
    *v4 = v7;
    *(v4 + 1) = 0;
  }

  v9 = *v5;
  v10 = *(*v5 + 24);
  v11 = *(*v5 + 32);
  if (v10 >= v11)
  {
    v14 = v9[2];
    v15 = v10 - v14;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v14) >> 3);
    v17 = v16 + 1;
    if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAALL;
    }

    v27[4] = v9 + 2;
    if (v17)
    {
      v19 = sub_29A012C48((v9 + 2), v17);
      v17 = v20;
      v14 = v9[2];
      v15 = v9[3] - v14;
    }

    else
    {
      v19 = 0;
    }

    v21 = &v19[24 * v16];
    v22 = &v19[24 * v17];
    v12 = v21 + 24;
    v23 = &v21[-v15];
    *v21 = 0;
    *(v21 + 1) = 0;
    *(v21 + 2) = 0;
    memcpy(&v21[-v15], v14, v15);
    v24 = v9[2];
    v9[2] = v23;
    v9[3] = v12;
    v25 = v9[4];
    v9[4] = v22;
    v27[2] = v24;
    v27[3] = v25;
    v27[0] = v24;
    v27[1] = v24;
    sub_29A03D11C(v27);
    v13 = *v5;
  }

  else
  {
    v12 = v10 + 24;
    *v10 = 0;
    *(v10 + 1) = 0;
    v13 = v9;
    *(v10 + 2) = 0;
  }

  v9[3] = v12;
  v13[8] = 0x7FFFFFFFFFFFFFFFLL;
  return a1;
}

void sub_29A09F7D4(_Unwind_Exception *a1)
{
  sub_29A0A02D4(v2, 0);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void Alembic::Ogawa::v12::OGroup::~OGroup(Alembic::Ogawa::v12::OGroup *this)
{
  Alembic::Ogawa::v12::OGroup::freeze(this);
  sub_29A0A02D4(this + 2, 0);
  v2 = *(this + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void Alembic::Ogawa::v12::OGroup::freeze(Alembic::Ogawa::v12::OGroup *this)
{
  v3 = *(this + 2);
  if (v3[8] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10[5] = v1;
    v10[6] = v2;
    if (v3[5] == v3[6])
    {
      v3[8] = 0;
    }

    else
    {
      v5 = Alembic::Ogawa::v12::OStream::getAndSeekEndPos(*v3);
      v6 = *(this + 2);
      *(v6 + 64) = v5;
      v10[0] = (*(v6 + 48) - *(v6 + 40)) >> 3;
      Alembic::Ogawa::v12::OStream::write(*v6, v10, 8);
      Alembic::Ogawa::v12::OStream::write(**(this + 2), *(*(this + 2) + 40), 8 * v10[0]);
      v3 = *(this + 2);
    }

    for (i = v3[2]; i != v3[3]; i += 3)
    {
      if (*i || i[2])
      {
        v8 = *(*i + 16);
        v9 = *(v8 + 64);
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          Alembic::Ogawa::v12::OStream::seek(*v3, v9 + 8 * i[2] + 8);
          Alembic::Ogawa::v12::OStream::write(**(this + 2), (*(this + 2) + 64), 8);
          v3 = *(this + 2);
          v8 = *(*i + 16);
        }

        *(*(v8 + 40) + 8 * i[2]) = v3[8];
      }

      else
      {
        Alembic::Ogawa::v12::OStream::seek(*v3, 8);
        Alembic::Ogawa::v12::OStream::write(**(this + 2), (*(this + 2) + 64), 8);
        v3 = *(this + 2);
      }
    }

    sub_29A03CCB0(v3 + 2);
  }
}

void Alembic::Ogawa::v12::OGroup::addGroup(Alembic::Ogawa::v12::OGroup *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = *(this + 2);
  if (*(v3 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    sub_29A018094((v3 + 40), &v8);
    v5 = operator new(0x18uLL);
    sub_29A014C58(&v6, this);
    Alembic::Ogawa::v12::OGroup::OGroup(v5, &v6, ((*(*(this + 2) + 48) - *(*(this + 2) + 40)) >> 3) - 1);
    sub_29A09EEA0(a2, v5);
    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }
}

void sub_29A09FA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  operator delete(v12);
  v14 = *(v11 + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(a1);
}

void Alembic::Ogawa::v12::OGroup::createData(Alembic::Ogawa::v12::OGroup *this@<X0>, const void *a2@<X2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v5 = *(this + 2);
  if (*(v5 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v9 = Alembic::Ogawa::v12::OStream::getAndSeekEndPos(*v5);
      v18 = a3;
      Alembic::Ogawa::v12::OStream::write(**(this + 2), &v18, 8);
      Alembic::Ogawa::v12::OStream::write(**(this + 2), a2, a3);
      v10 = operator new(8uLL);
      v11 = v10;
      v12 = *(this + 2);
      v14 = *v12;
      v13 = v12[1];
      v16 = v14;
      v17 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Alembic::Ogawa::v12::OData::OData(v10, &v16, v9, a3);
      sub_29A09FC24(a4, v11);
      if (v17)
      {
        sub_29A014BEC(v17);
      }
    }

    else
    {
      sub_29A018094((v5 + 40), &qword_29B433C10);
      v15 = operator new(8uLL);
      Alembic::Ogawa::v12::OData::OData(v15);
      sub_29A09FC24(a4, v15);
    }
  }
}

void sub_29A09FBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  operator delete(v12);
  v14 = *(v11 + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(a1);
}

void sub_29A09FC24(void *a1, uint64_t a2)
{
  sub_29A01A0C4(&v5, a2);
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

void Alembic::Ogawa::v12::OGroup::addData(Alembic::Ogawa::v12::OGroup *this@<X0>, const void *a2@<X2>, uint64_t a3@<X1>, Alembic::Ogawa::v12::OData **a4@<X8>)
{
  Alembic::Ogawa::v12::OGroup::createData(this, a2, a3, a4);
  if (*a4)
  {
    v6 = *(this + 2);
    v7 = Alembic::Ogawa::v12::OData::getPos(*a4) | 0x8000000000000000;
    sub_29A018094((v6 + 40), &v7);
  }
}

void sub_29A09FCC0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Ogawa::v12::OGroup::createData(Alembic::Ogawa::v12::OGroup *this@<X0>, const unint64_t *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X1>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  v6 = *(this + 2);
  if (*(v6 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a4;
    if (!a4)
    {
      goto LABEL_14;
    }

    v9 = a2;
    v11 = 0;
    v12 = a2;
    v13 = a4;
    do
    {
      v14 = *v12++;
      v11 += v14;
      --v13;
    }

    while (v13);
    v26 = v11;
    if (v11)
    {
      v15 = Alembic::Ogawa::v12::OStream::getAndSeekEndPos(*v6);
      Alembic::Ogawa::v12::OStream::write(**(this + 2), &v26, 8);
      do
      {
        v17 = *v9++;
        v16 = v17;
        if (v17)
        {
          Alembic::Ogawa::v12::OStream::write(**(this + 2), *a3, v16);
        }

        ++a3;
        --v7;
      }

      while (v7);
      v18 = operator new(8uLL);
      v19 = v18;
      v20 = *(this + 2);
      v22 = *v20;
      v21 = v20[1];
      v24 = v22;
      v25 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Alembic::Ogawa::v12::OData::OData(v18, &v24, v15, v26);
      sub_29A09FC24(a5, v19);
      if (v25)
      {
        sub_29A014BEC(v25);
      }
    }

    else
    {
LABEL_14:
      sub_29A018094((v6 + 40), &qword_29B433C10);
      v23 = operator new(8uLL);
      Alembic::Ogawa::v12::OData::OData(v23);
      sub_29A09FC24(a5, v23);
    }
  }
}

void sub_29A09FE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  operator delete(v12);
  v14 = *(v11 + 8);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  _Unwind_Resume(a1);
}

void Alembic::Ogawa::v12::OGroup::addData(Alembic::Ogawa::v12::OGroup *this@<X0>, const unint64_t *a2@<X2>, const void **a3@<X3>, uint64_t a4@<X1>, Alembic::Ogawa::v12::OData **a5@<X8>)
{
  Alembic::Ogawa::v12::OGroup::createData(this, a2, a3, a4, a5);
  if (*a5)
  {
    v7 = *(this + 2);
    v8 = Alembic::Ogawa::v12::OData::getPos(*a5) | 0x8000000000000000;
    sub_29A018094((v7 + 40), &v8);
  }
}

void sub_29A09FECC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Ogawa::v12::OGroup::addData(uint64_t a1, Alembic::Ogawa::v12::OData **a2)
{
  v2 = *(a1 + 16);
  if (*(v2 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = Alembic::Ogawa::v12::OData::getPos(*a2) | 0x8000000000000000;
    sub_29A018094((v2 + 40), &v3);
  }
}

void Alembic::Ogawa::v12::OGroup::addGroup(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (*(v2 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(*a2 + 16);
    v6 = *(v4 + 64);
    v5 = (v4 + 64);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_29A018094((v2 + 40), qword_29B433C18);
      v8 = *(*a2 + 16);
      sub_29A014C58(&v28, a1);
      v9 = ((*(a1[2] + 48) - *(a1[2] + 40)) >> 3) - 1;
      v11 = v28;
      v10 = v29;
      v28 = 0;
      v29 = 0;
      v13 = v8[3];
      v12 = v8[4];
      if (v13 >= v12)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
        v16 = v8[2];
        v17 = v13 - v16;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_29A00C9A4();
        }

        v20 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 < 0x555555555555555)
        {
          v15 = v19;
        }

        v30[4] = v8 + 2;
        if (v15)
        {
          v21 = sub_29A012C48((v8 + 2), v15);
          v15 = v22;
          v16 = v8[2];
          v17 = v8[3] - v16;
        }

        else
        {
          v21 = 0;
        }

        v23 = &v21[24 * v18];
        v24 = &v21[24 * v15];
        *v23 = v11;
        *(v23 + 1) = v10;
        *(v23 + 2) = v9;
        v14 = v23 + 24;
        v25 = &v23[-v17];
        memcpy(&v23[-v17], v16, v17);
        v26 = v8[2];
        v8[2] = v25;
        v8[3] = v14;
        v27 = v8[4];
        v8[4] = v24;
        v30[2] = v26;
        v30[3] = v27;
        v30[0] = v26;
        v30[1] = v26;
        sub_29A03D11C(v30);
      }

      else
      {
        *v13 = v11;
        *(v13 + 1) = v10;
        v14 = v13 + 24;
        *(v13 + 2) = v9;
      }

      v8[3] = v14;
      if (v29)
      {
        sub_29A014BEC(v29);
      }
    }

    else
    {

      sub_29A018094((v2 + 40), v5);
    }
  }
}

void sub_29A0A00FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

void Alembic::Ogawa::v12::OGroup::addEmptyGroup(Alembic::Ogawa::v12::OGroup *this)
{
  v1 = *(this + 2);
  if (*(v1 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_29A018094((v1 + 40), qword_29B433C18);
  }
}

void Alembic::Ogawa::v12::OGroup::addEmptyData(Alembic::Ogawa::v12::OGroup *this)
{
  v1 = *(this + 2);
  if (*(v1 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_29A018094((v1 + 40), &qword_29B433C10);
  }
}

uint64_t Alembic::Ogawa::v12::OGroup::isChildData(Alembic::Ogawa::v12::OGroup *this, unint64_t a2)
{
  v2 = *(*(this + 2) + 40);
  if (a2 >= (*(*(this + 2) + 48) - v2) >> 3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2) >> 63;
  }
}

uint64_t Alembic::Ogawa::v12::OGroup::replaceData(uint64_t result, unint64_t a2, Alembic::Ogawa::v12::OData **a3)
{
  v3 = *(*(result + 16) + 40);
  if (a2 < (*(*(result + 16) + 48) - v3) >> 3 && (*(v3 + 8 * a2) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = Alembic::Ogawa::v12::OData::getPos(*a3);
    v6 = result | 0x8000000000000000;
    v9 = result | 0x8000000000000000;
    v7 = *(v5 + 16);
    v8 = *(v7 + 64);
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      Alembic::Ogawa::v12::OStream::seek(*v7, v8 + 8 * a2 + 8);
      result = Alembic::Ogawa::v12::OStream::write(**(v5 + 16), &v9, 8);
      v6 = v9;
      v7 = *(v5 + 16);
    }

    *(*(v7 + 40) + 8 * a2) = v6;
  }

  return result;
}

void sub_29A0A02D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A0A0310(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A0A0310(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 16);
  sub_29A03CE34(&v5);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

uint64_t **Alembic::Ogawa::v12::OStream::OStream(uint64_t **a1, __int128 *a2)
{
  v4 = operator new(0x78uLL);
  sub_29A0A0A9C(v4, a2);
  *a1 = v4;
  Alembic::Ogawa::v12::OStream::init(a1);
  return a1;
}

uint64_t Alembic::Ogawa::v12::OStream::init(uint64_t **this)
{
  result = **this;
  if (result)
  {
    std::ostream::write();
    result = std::ostream::flush();
    v3 = *this;
    v4 = (*this)[6];
    v5 = (*this)[5] + 16;
    (*this)[5] = v5;
    if (v5 > v4)
    {
      v3[6] = v5;
    }
  }

  return result;
}

uint64_t **Alembic::Ogawa::v12::OStream::OStream(uint64_t **a1, uint64_t a2)
{
  v4 = operator new(0x78uLL);
  sub_29A0A0DC8(v4, a2);
  *a1 = v4;
  Alembic::Ogawa::v12::OStream::init(a1);
  return a1;
}

void Alembic::Ogawa::v12::OStream::~OStream(Alembic::Ogawa::v12::OStream *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = **this;
  if (v2)
  {
    v3 = *(*this + 32);
    MEMORY[0x29C2C1E50](v6, v2);
    v4 = v2 + *(*v2 - 24);
    if ((v4[32] & 5) == 0)
    {
      v5 = *(v4 + 5);
      v15 = 0u;
      v14 = 0u;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v10 = 0u;
      v9 = 0u;
      v8 = 0u;
      v16 = v3 + 5;
      (*(*v5 + 40))(v7);
      if (v7[16] == -1)
      {
        std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
      }
    }

    MEMORY[0x29C2C1E60](v6);
    std::ostream::write();
    std::ostream::flush();
  }

  sub_29A0A0F84(this, 0);
}

void sub_29A0A0678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    MEMORY[0x29C2C1E60](&a10);
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Alembic::Ogawa::v12::OStream::getAndSeekEndPos(Alembic::Ogawa::v12::OStream *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v1 = *this;
  if (!**this)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 7));
  v3 = *this;
  v4 = *(*this + 48);
  v3[5] = v4;
  v5 = *v3;
  v6 = v3[4];
  MEMORY[0x29C2C1E50](v11, *v3);
  v7 = v5 + *(*v5 - 24);
  if ((v7[32] & 5) == 0)
  {
    v8 = *(v7 + 5);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v21 = v6 + v4;
    (*(*v8 + 40))(v12);
    if (v12[16] == -1)
    {
      std::ios_base::clear((v5 + *(*v5 - 24)), *(v5 + *(*v5 - 24) + 32) | 4);
    }
  }

  MEMORY[0x29C2C1E60](v11);
  v9 = *(*this + 40);
  pthread_mutex_unlock((v1 + 7));
  return v9;
}

void sub_29A0A0828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C2C1E60](va);
  pthread_mutex_unlock((v2 + 56));
  _Unwind_Resume(a1);
}

void *Alembic::Ogawa::v12::OStream::seek(void *this, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (**this)
  {
    v4 = this;
    pthread_mutex_lock((v2 + 7));
    v5 = **v4;
    v6 = (*v4)[4];
    MEMORY[0x29C2C1E50](v9, v5);
    v7 = v5 + *(*v5 - 24);
    if ((v7[32] & 5) == 0)
    {
      v8 = *(v7 + 5);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v19 = v6 + a2;
      (*(*v8 + 40))(v10);
      if (v10[16] == -1)
      {
        std::ios_base::clear((v5 + *(*v5 - 24)), *(v5 + *(*v5 - 24) + 32) | 4);
      }
    }

    MEMORY[0x29C2C1E60](v9);
    (*v4)[5] = a2;
    return pthread_mutex_unlock((v2 + 7));
  }

  return this;
}

void sub_29A0A09C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x29C2C1E60](va);
  pthread_mutex_unlock((v2 + 56));
  _Unwind_Resume(a1);
}

void *Alembic::Ogawa::v12::OStream::write(void *this, const void *a2, uint64_t a3)
{
  v3 = *this;
  if (**this)
  {
    v5 = this;
    pthread_mutex_lock((v3 + 7));
    std::ostream::write();
    std::ostream::flush();
    v6 = *v5;
    v7 = *(*v5 + 48);
    v8 = *(*v5 + 40) + a3;
    *(*v5 + 40) = v8;
    if (v8 > v7)
    {
      *(v6 + 48) = v8;
    }

    return pthread_mutex_unlock((v3 + 7));
  }

  return this;
}

uint64_t sub_29A0A0A9C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  pthread_mutex_init((a1 + 56), 0);
  v4 = operator new(0x238uLL);
  sub_29A0A0C08(v4);
  if (v4[16])
  {
    *a1 = v4;
    v5 = (v4 + *(*v4 - 24));
    v5->__exceptions_ = 5;
    std::ios_base::clear(v5, v5->__rdstate_);
  }

  else
  {
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v4 + *(*v4 - 24)), *(v4 + *(*v4 - 24) + 32) | 4);
    }

    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_29A0A0BC8(_Unwind_Exception *a1)
{
  operator delete(v3);
  pthread_mutex_destroy((v1 + 56));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29A0A0C08(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x29EDC9560] + 64;
  a1[52] = MEMORY[0x29EDC9560] + 64;
  v3 = *(MEMORY[0x29EDC9520] + 16);
  v4 = *(MEMORY[0x29EDC9520] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC9560] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x29C2C1D10](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_29A0A0D90(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C2C4390](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0A0DC8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  pthread_mutex_init((a1 + 56), 0);
  if (*a1)
  {
    v3 = (*a1 + *(**a1 - 24));
    v3->__exceptions_ = 5;
    std::ios_base::clear(v3, v3->__rdstate_);
    v4 = *a1 + *(**a1 - 24);
    if ((*(v4 + 32) & 5) != 0)
    {
      *(a1 + 32) = -1;
    }

    else
    {
      (*(**(v4 + 40) + 32))(v8);
      v5 = v9;
      *(a1 + 32) = v9;
      if (v5 != -1)
      {
        return a1;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Illegal start of Ogawa stream");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return a1;
}

void sub_29A0A0F30(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  pthread_mutex_destroy((v1 + 56));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_29A0A0F84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A0A0FC0(v3);

    operator delete(v4);
  }
}

uint64_t sub_29A0A0FC0(uint64_t a1)
{
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_10;
    }
  }

  else if (!*(a1 + 31))
  {
    goto LABEL_10;
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = __dynamic_cast(v2, MEMORY[0x29EDC9438], MEMORY[0x29EDC9440], 0);
    if (v3)
    {
      v4 = v3;
      if (!std::filebuf::close())
      {
        std::ios_base::clear(&v4[*(*v4 - 24)], *&v4[*(*v4 - 24) + 32] | 4);
      }

      (*(*v4 + 8))(v4);
    }
  }

LABEL_10:
  pthread_mutex_destroy((a1 + 56));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_29A0A10C4(float a1, uint64_t a2, int a3)
{
  if (a3 <= 2 && a1 <= 0.0)
  {
    return (1 << a3);
  }

  else
  {
    return 8;
  }
}

uint64_t OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(OpenSubdiv::__aapl__::Sdc::Crease *this, float a2, int a3, float *a4)
{
  if (a2 > 0.0)
  {
    return 8;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = a3;
  do
  {
    v7 = *a4++;
    if (v7 > 0.0)
    {
      ++v5;
    }

    --v6;
  }

  while (v6);
  if (v5 <= 2)
  {
    return (1 << v5);
  }

  else
  {
    return 8;
  }
}

double OpenSubdiv::__aapl__::Sdc::Crease::ComputeFractionalWeightAtVertex(OpenSubdiv::__aapl__::Sdc::Crease *this, float a2, float a3, int a4, float *a5, const float *a6)
{
  v6 = a2 > 0.0 && a3 <= 0.0;
  if (a2 <= 0.0 || a3 > 0.0)
  {
    a2 = 0.0;
  }

  if (a6 && *(this + 2))
  {
    if (a4 >= 1)
    {
      v7 = a4;
      do
      {
        if (*a5 > 0.0 && *a6 <= 0.0)
        {
          a2 = a2 + *a5;
          ++v6;
        }

        ++a6;
        ++a5;
        --v7;
      }

      while (v7);
    }
  }

  else if (a4 >= 1)
  {
    v8 = a4;
    do
    {
      v9 = *a5++;
      v10 = a2 + v9;
      v6 += v9 > 0.0 && v9 <= 1.0;
      if (v9 > 0.0 && v9 <= 1.0)
      {
        a2 = v10;
      }

      --v8;
    }

    while (v8);
  }

  if (!v6)
  {
    return 0.0;
  }

  *&result = a2 / v6;
  if (*&result > 1.0)
  {
    *&result = 1.0;
  }

  return result;
}

float sub_29A0A1200(uint64_t a1, int a2, float *a3, float a4)
{
  if (a2 >= 2 && *(a1 + 2))
  {
    v4 = 0.0;
    if (a4 > 0.0)
    {
      v4 = 10.0;
      if (a4 < 10.0)
      {
        v5 = 0;
        v6 = a2;
        v7 = 0.0;
        do
        {
          v8 = *a3++;
          v9 = v7 + v8;
          v10 = v8 > 0.0 && v8 < 10.0;
          if (v8 > 0.0 && v8 < 10.0)
          {
            v7 = v9;
          }

          v5 += v10;
          --v6;
        }

        while (v6);
        v11 = v5 != 0;
        v12 = v5 - 1;
        if (v12 != 0 && v11)
        {
          a4 = (((v7 - a4) / v12) * 0.25) + (a4 * 0.75);
        }

        return fmaxf(a4 + -1.0, 0.0);
      }
    }
  }

  else
  {
    v4 = 0.0;
    if (a4 > 0.0)
    {
      v4 = 10.0;
      if (a4 < 10.0)
      {
        v4 = 0.0;
        if (a4 > 1.0)
        {
          return a4 + -1.0;
        }
      }
    }
  }

  return v4;
}

uint64_t OpenSubdiv::__aapl__::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(uint64_t this, int a2, float *a3, float *a4)
{
  if (a2 > 1 && *(this + 2))
  {
    if (*(this + 2) == 1)
    {
      v4 = 0;
      v5 = a2;
      v6 = 0.0;
      v7 = a2;
      v8 = a3;
      do
      {
        v9 = *v8++;
        v10 = v6 + v9;
        v4 += v9 > 0.0 && v9 < 10.0;
        if (v9 > 0.0 && v9 < 10.0)
        {
          v6 = v10;
        }

        --v7;
      }

      while (v7);
      if (v4)
      {
        while (1)
        {
          v11 = *a3;
          v12 = 0.0;
          if (*a3 <= 0.0)
          {
            goto LABEL_16;
          }

          v12 = 10.0;
          if (v11 >= 10.0)
          {
            goto LABEL_16;
          }

          if (v4 == 1)
          {
            break;
          }

          v13 = ((((v6 - v11) / (v4 - 1)) * 0.25) + (v11 * 0.75)) + -1.0;
          v12 = 0.0;
          if (v13 <= 0.0)
          {
            goto LABEL_16;
          }

LABEL_17:
          *a4++ = v13;
          ++a3;
          if (!--v5)
          {
            return this;
          }
        }

        v12 = v11 + -1.0;
        if (v11 <= 1.0)
        {
          v12 = 0.0;
        }

LABEL_16:
        v13 = v12;
        goto LABEL_17;
      }

      do
      {
        v14 = *a3++;
        *a4++ = v14;
        --v5;
      }

      while (v5);
    }
  }

  else if (a2 >= 1)
  {
    v15 = a2;
    do
    {
      v16 = *a3;
      v17 = 0.0;
      if (*a3 > 0.0)
      {
        v17 = 10.0;
        if (v16 < 10.0)
        {
          v17 = 0.0;
          if (v16 > 1.0)
          {
            v17 = v16 + -1.0;
          }
        }
      }

      *a4++ = v17;
      ++a3;
      --v15;
    }

    while (v15);
  }

  return this;
}

double sub_29A0A1424()
{
  if (!qword_2A153ED10)
  {
    v0 = operator new[](0x48uLL);
    qword_2A153ED10 = v0;
    *v0 = "bilinear";
    *(v0 + 8) = xmmword_29B433DC0;
    *(v0 + 3) = "catmark";
    *(v0 + 2) = xmmword_29B433DD0;
    *(v0 + 6) = "loop";
    *&result = 0x300000001;
    *(v0 + 56) = xmmword_29B433DE0;
  }

  return result;
}

double sub_29A0A1560(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 1280;
  *(a1 + 16) = 0;
  *(a1 + 10) = 0;
  *(a1 + 14) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  return result;
}

void *sub_29A0A15B0(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    a1[22] = v3;
    operator delete(v3);
  }

  v4 = a1[18];
  if (v4)
  {
    a1[19] = v4;
    operator delete(v4);
  }

  v5 = a1[15];
  if (v5)
  {
    a1[16] = v5;
    operator delete(v5);
  }

  v6 = a1[12];
  if (v6)
  {
    a1[13] = v6;
    operator delete(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    a1[10] = v7;
    operator delete(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    a1[7] = v8;
    operator delete(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    a1[4] = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_29A0A1664(void *a1)
{
  sub_29A0A171C(a1 + 3, ((*(*a1 + 56) - *(*a1 + 48)) >> 2));
  v2 = a1[6];
  v8 = 0;
  v3 = *a1;
  v4 = *(*a1 + 4);
  v5 = a1[7] - v2;
  if (v4 <= v5)
  {
    if (v4 < v5)
    {
      a1[7] = v2 + v4;
    }
  }

  else
  {
    sub_29A0A2E74((a1 + 6), v4 - v5, &v8);
    v3 = *a1;
  }

  sub_29A0A174C(a1 + 9, *(v3 + 8));
  sub_29A0A171C(a1 + 12, *(*a1 + 8));
  v6 = ((*(*a1 + 296) - *(*a1 + 288)) >> 2);
  v7 = 0;
  sub_29A0A177C(a1 + 15, v6, &v7);
}

void sub_29A0A171C(void *a1, unint64_t a2)
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
    sub_29A0A2C1C(a1, a2 - v2);
  }
}

void sub_29A0A174C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_29A0A2D4C(a1, a2 - v2);
  }
}

void sub_29A0A177C(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_29A0A2F94(a1, a2 - v3, a3);
  }
}

void sub_29A0A17AC(uint64_t a1, int a2)
{
  v3 = a2;
  sub_29A0A171C((a1 + 144), a2);
  v6 = 0;
  v4 = *(a1 + 168);
  v5 = *(a1 + 176) - v4;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      *(a1 + 176) = v4 + v3;
    }
  }

  else
  {
    sub_29A0A2E74(a1 + 168, v3 - v5, &v6);
  }

  if ((*(a1 + 13) & 1) == 0)
  {
    sub_29A0A1828((a1 + 192), v3);
  }
}

void sub_29A0A1828(void *a1, unint64_t a2)
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
    sub_29A0A32E4(a1, a2 - v2);
  }
}

void sub_29A0A1860(uint64_t a1, int a2)
{
  v145 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v119 = v4 - 3;
  v117 = v4 == 3;
  *(a1 + 12) = v4 == 5;
  v116 = (v4 & 0xFE) == 4;
  *(a1 + 13) = v116;
  *(a1 + 14) = (v4 & 0xFE) == 2;
  v121 = v4;
  v6 = v3 != 2 && v4 != 0;
  v118 = v6;
  v7 = *(*a1 + 8);
  LOWORD(v125) = 0;
  sub_29A0A33F8(v124, v7, &v125);
  v8 = ((*(*a1 + 296) - *(*a1 + 288)) >> 2);
  LOWORD(v125) = 0;
  v120 = (a1 + 120);
  sub_29A0A177C((a1 + 120), v8, &v125);
  v9 = *a1;
  v10 = *(*a1 + 20);
  v140 = &v143;
  v141 = v10;
  v142 = 16;
  v144 = 0;
  if (v10 < 0x11)
  {
    v11 = v138;
    v134 = 0;
    v135 = v138;
    v136 = v10;
    v137 = 16;
    v139 = 0;
    v12 = v133;
    __p = 0;
    v130 = v133;
    v131 = v10;
    v132 = 16;
    v125 = v128;
    v126 = v10;
    v127 = 16;
  }

  else
  {
    v144 = operator new(4 * v10);
    v140 = v144;
    v142 = v10;
    v135 = v138;
    v136 = v10;
    v137 = 16;
    v139 = 0;
    v139 = operator new(4 * v10);
    v134 = 0;
    v135 = v139;
    v137 = v10;
    v130 = v133;
    v131 = v10;
    v132 = 16;
    v134 = operator new(2 * v10);
    __p = 0;
    v130 = v134;
    v132 = v10;
    v125 = v128;
    v126 = v10;
    v127 = 16;
    __p = operator new(10 * v10);
    v125 = __p;
    v127 = v10;
    v11 = v135;
    v12 = v130;
    v9 = *a1;
  }

  if (*(v9 + 8) < 1)
  {
    v14 = 0;
    goto LABEL_85;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = (2 * (v13 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
    v16 = *(v9 + 264);
    v17 = *(v16 + 8 * v13);
    v18 = v140;
    if (v17 >= 1)
    {
      v19 = *(v16 + 4 * v15);
      v20 = (*(v9 + 288) + 4 * v19);
      v21 = (*(v9 + 312) + 2 * v19);
      v22 = *(v9 + 24);
      v23 = *(a1 + 24);
      v24 = v17;
      v25 = v140;
      do
      {
        v26 = *v20++;
        v27 = *(v22 + 8 * v26 + 4);
        LODWORD(v26) = *v21++;
        *v25 = *(v23 + 4 * (v27 + v26));
        v25 = (v25 + 4);
        --v24;
      }

      while (v24);
    }

    v28 = *(v9 + 336);
    v29 = *(v28 + 4 * v15);
    v30 = *(v28 + 8 * v13);
    v31 = (*(v9 + 360) + 4 * v29);
    v32 = *(*(v9 + 432) + 2 * v13);
    if (v32)
    {
      if (v17 >= 1 && v30 >= 1)
      {
        v40 = 0;
        v41 = *(v9 + 384) + 2 * v29;
        do
        {
          v42 = v31[v40];
          v43 = *a1;
          v44 = *(*a1 + 144);
          v45 = *(v44 + 8 * v42);
          if (v45 >= 2)
          {
            v46 = 0;
            v47 = 0;
            v48 = *(v44 + 8 * v42 + 4);
            v49 = v43[21] + 4 * v48;
            v50 = v43[24] + 2 * v48;
            v51 = (v43[15] + 8 * v42);
            while (v45 != v46)
            {
              v52 = *(v49 + 4 * v46);
              v53 = 2 * v52;
              v54 = v43[3];
              v55 = *(v54 + 8 * v52 + 4);
              v56 = v43[6] + 4 * v55;
              v57 = *(v54 + 4 * v53);
              v58 = *(v50 + 2 * v46);
              v59 = *(a1 + 24) + 4 * v55;
              v60 = *v51;
              if (*(v41 + 2 * v40) != (v60 != *(v56 + 4 * v58)))
              {
                LODWORD(v58) = v58 + 1;
              }

              if (v58 == v57)
              {
                LODWORD(v58) = 0;
              }

              v61 = *(v59 + 4 * v58);
              if (v46)
              {
                ++v46;
                if (v61 != v47)
                {
                  v62 = v124[0];
                  *(v124[0] + v60) = 1;
                  v62[v51[1]] = 1;
                  v63 = *(a1 + 48);
                  v64 = *(v63 + v42) & 0xFD | (2 * (v13 == v60));
                  *(v63 + v42) = v64;
                  v65 = v64 & 0xFB | (4 * (v13 == v51[1])) | 1;
                  *(v63 + v42) = v65;
                  *(v63 + v42) = v65 & 0xF7 | (8 * *(a1 + 13));
                  break;
                }
              }

              else
              {
                v46 = 1;
                v47 = v61;
              }
            }
          }

          ++v40;
        }

        while (v40 != v30);
      }
    }

    else if (v17 > (v32 & 4) >> 2)
    {
      v33 = (v32 >> 2) & 1;
      do
      {
        if (v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v17;
        }

        if (*(v18 + v33) != *(v18 + v34 - 1))
        {
          v35 = v31[v33];
          v36 = *(*a1 + 120) + 8 * v35;
          v37 = *v36;
          v38 = v124[0];
          *(v124[0] + v37) = 1;
          v38[*(v36 + 4)] = 1;
          v39 = *(a1 + 48);
          LOBYTE(v37) = *(v39 + v35) & 0xFD | (2 * (v13 == v37));
          *(v39 + v35) = v37;
          LOBYTE(v36) = v37 & 0xFB | (4 * (v13 == *(v36 + 4))) | 1;
          *(v39 + v35) = v36;
          *(v39 + v35) = v36 & 0xF7 | (8 * *(a1 + 13));
        }

        ++v33;
      }

      while (v17 != v33);
    }

    if ((v32 & 4) != 0 && !*(v124[0] + v13))
    {
      if (*(a1 + 13) == 1)
      {
        if (v17 < 1)
        {
          goto LABEL_69;
        }

        *(v124[0] + v13) = 1;
        if (v32)
        {
          if (v30 >= 1)
          {
            do
            {
              v76 = *v31++;
              v75 = v76;
              if ((*(*(*a1 + 240) + v76) & 2) != 0)
              {
                *(*(a1 + 48) + v75) |= 8u;
              }

              --v30;
            }

            while (v30);
          }
        }

        else
        {
          *(*(a1 + 48) + *v31) |= 8u;
          v71 = v31[v30 - 1];
          *(*(a1 + 48) + v71) |= 8u;
        }
      }

      else if (v17 == 1 && v118)
      {
        *(v124[0] + v13) = 1;
LABEL_69:
        *v11 = *v18;
        *v12 = 0;
LABEL_70:
        v67 = 1;
        if (v32)
        {
          goto LABEL_71;
        }

        goto LABEL_73;
      }
    }

    *v11 = *v18;
    *v12 = 0;
    if (v17 <= 1)
    {
      goto LABEL_70;
    }

    v66 = 1;
    v67 = 1;
    do
    {
      v68 = *(v18 + v66);
      if (v68 == *(v18 + v66 - 1))
      {
        v12[v66] = v12[v66 - 1];
        goto LABEL_60;
      }

      v12[v66] = v67;
      if (v67 == 2)
      {
        if (*v11 != v68)
        {
          v11[2] = v68;
          v67 = 3;
          goto LABEL_60;
        }

        v69 = v11 + 2;
      }

      else
      {
        if (v67 == 1)
        {
          v11[1] = v68;
          v67 = 2;
          goto LABEL_60;
        }

        v69 = &v11[v67];
        v70 = v11;
        if (!v67)
        {
          goto LABEL_56;
        }
      }

      v70 = v11;
      while (*v70 != v68)
      {
        if (++v70 == v69)
        {
          goto LABEL_58;
        }
      }

LABEL_56:
      if (v70 == v69)
      {
LABEL_58:
        ++v67;
        *v69 = v68;
      }

      else
      {
        v12[v66] = (v70 - v11) >> 2;
      }

LABEL_60:
      ++v66;
    }

    while (v66 != v17);
    if ((v32 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_71:
    if (!*(v124[0] + v13))
    {
      *(v124[0] + v13) = v67 > 1;
    }

LABEL_73:
    *(*(a1 + 72) + 2 * v13) = v67;
    *(*(a1 + 96) + 4 * v13) = v14;
    v9 = *a1;
    if (v67 >= 2 && v17 >= 1)
    {
      v72 = (*v120 + 2 * *(*(v9 + 264) + 4 * v15));
      v73 = v12;
      do
      {
        v74 = *v73++;
        *v72++ = v74;
        --v17;
      }

      while (v17);
    }

    v14 += v67;
    ++v13;
  }

  while (v13 < *(v9 + 8));
LABEL_85:
  sub_29A0A17AC(a1, v14);
  v77 = *a1;
  if (*(*a1 + 8) >= 1)
  {
    v78 = 0;
    while (2)
    {
      v79 = (2 * v78) | 1;
      v80 = v77[33];
      v81 = *(v80 + 4 * v79);
      v82 = v77[36];
      v83 = *(v80 + 8 * v78);
      v84 = v77[39];
      if (v83 < 1)
      {
        v85 = 0;
      }

      else
      {
        v85 = *(*(a1 + 24) + 4 * (*(v77[3] + 8 * *(v82 + 4 * v81) + 4) + *(v84 + 2 * v81)));
      }

      v86 = *(*(a1 + 72) + 2 * v78);
      v87 = *(a1 + 96);
      v88 = (*(a1 + 144) + 4 * *(v87 + 4 * v78));
      *v88 = v85;
      if (!*(v124[0] + v78))
      {
        goto LABEL_158;
      }

      if (v86 >= 2 && v83 >= 2)
      {
        v89 = *(v80 + 4 * v79);
        v90 = (v84 + 2 * v81 + 2);
        v91 = (v82 + 4 * v81 + 4);
        v92 = (*v120 + 2 * v89 + 2);
        v93 = v83 - 1;
        v94 = 1;
        do
        {
          v95 = *v92++;
          if (v94 == v95)
          {
            v88[v94++] = *(*(a1 + 24) + 4 * (*(v77[3] + 8 * *v91 + 4) + *v90));
          }

          ++v90;
          ++v91;
          --v93;
        }

        while (v93);
      }

      v122 = *(v87 + 4 * v78);
      v96 = *(a1 + 168);
      v97 = *(v77[54] + 2 * v78);
      v98 = 1;
      if ((*(a1 + 13) & 1) == 0 && (v97 & 0x11) == 0)
      {
        if (*(a1 + 14) == 1)
        {
          v98 = v86 > 2;
          if (v86 <= 2 && (v117 || v116))
          {
            if (v86 != 1)
            {
              v98 = 0;
              goto LABEL_106;
            }

LABEL_105:
            v98 = (v97 & 4) == 0;
          }
        }

        else
        {
          v98 = 0;
          if (v119 <= 2 && v86 == 1)
          {
            goto LABEL_105;
          }
        }
      }

LABEL_106:
      v99 = v125;
      bzero(v125, 10 * v86);
      sub_29A0A23F0(a1, v78, v99);
      if ((v98 & 1) == 0 && *(a1 + 14) == 1 && v86 == 2)
      {
        v98 = v99[4] || v99[9] || v99[2] || v99[7] != 0;
        if (v121 == 3)
        {
          v101 = *v99;
          if (v101 != 1)
          {
            LOBYTE(v101) = v99[5] == 1;
          }

          v98 |= v101;
        }

        if ((v99[3] != 0) != (v99[8] != 0))
        {
          v100 = 48;
        }

        else
        {
          v100 = 8;
        }

LABEL_122:
        v102 = (v96 + v122);
        v103 = 2;
        while (2)
        {
          *v102 = 1;
          if (v99[2])
          {
            *v102 = 5;
            goto LABEL_125;
          }

          if ((v98 & 1) != 0 || v99[4])
          {
            v104 = *v99;
            v105 = v104 == 1;
            if (v104 == a2)
            {
              v106 = 1;
            }

            else
            {
              v106 = 3;
            }

            v107 = 1;
            goto LABEL_133;
          }

          v107 = v121 != 0;
          v110 = *v99;
          v105 = v110 == 1;
          if (v110 != 1)
          {
            v107 = 0;
          }

          v108 = 3;
          if (v110 == a2)
          {
            v106 = 1;
          }

          else
          {
            v106 = 3;
          }

          if (v107)
          {
LABEL_133:
            v108 = 1;
          }

          if (v105)
          {
            v106 = v108;
          }

          *v102 = v106;
          v109 = v106 | ((v99[4] != 0) << 6);
          *v102 = v109;
          if (v99[4])
          {
            LOBYTE(v109) = v109 | ((*v99 - v99[4] > 1) << 7);
            *v102 = v109;
            if (!v107)
            {
              goto LABEL_149;
            }
          }

          else if (v107)
          {
            *v102 = v109 | ((*v99 > 1u) << 7);
          }

          else
          {
            v109 = v109 & 0xFFFFFF7F | (((v106 >> 1) & 1) << 7);
            *v102 = v109;
LABEL_149:
            if (v99[3] | v97 & 0x20)
            {
              v111 = 16;
            }

            else
            {
              v111 = v100;
            }

            *v102 = v109 | v111;
            if ((*(a1 + 13) & 1) == 0)
            {
              v112 = *(a1 + 192) + 4 * *(*(a1 + 96) + 4 * v78);
              v113 = v99[1];
              *(v112 + v103 - 2) = v113;
              v114 = *v99;
              if (v103 == 2 && v113)
              {
                v115 = v113 + ~v83 + v114;
              }

              else
              {
                v115 = v113 + v114 - 1;
              }

              *(v112 + v103) = v115;
            }
          }

LABEL_125:
          v99 += 5;
          v103 += 4;
          ++v102;
          if (!--v86)
          {
            goto LABEL_158;
          }

          continue;
        }
      }

      if (v86)
      {
        v100 = 8;
        goto LABEL_122;
      }

LABEL_158:
      ++v78;
      v77 = *a1;
      if (v78 >= *(*a1 + 8))
      {
        break;
      }

      continue;
    }
  }

  operator delete(__p);
  operator delete(v134);
  operator delete(v139);
  operator delete(v144);
  if (v124[0])
  {
    v124[1] = v124[0];
    operator delete(v124[0]);
  }
}

void sub_29A0A2370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  operator delete(__p);
  operator delete(a62);
  operator delete(*(v62 - 104));
  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void *sub_29A0A23F0(void *result, int a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(result[9] + 2 * a2);
  if (*(*(*result + 432) + 2 * a2))
  {
    if (*(result[9] + 2 * a2))
    {
      v19 = (a3 + 4);
      do
      {
        *(v19 - 2) = 0;
        *v19 = 1;
        v19 += 5;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v5 = v3[42];
    v6 = (8 * ((2 * a2) >> 1)) | 4;
    v7 = (v3[45] + 4 * *(v5 + v6));
    v8 = 8 * a2;
    v9 = *(v5 + v8);
    v10 = v3[33];
    v11 = *(v10 + v8);
    v12 = *(v10 + v8);
    if (v4 != 1 || v9 > v12)
    {
      v14 = result[15] + 2 * *(v10 + v6);
      *a3 = 1;
      v15 = v14 + 2 * v11;
      if (v9 > v11 || *(v15 - 2))
      {
        goto LABEL_33;
      }

      v16 = *v7;
      if (*(result[6] + v16))
      {
        v18 = 4;
      }

      else
      {
        v17 = *(v3[30] + v16);
        if ((v17 & 4) != 0)
        {
          v18 = 8;
        }

        else
        {
          if ((v17 & 8) == 0)
          {
LABEL_33:
            if (v11 >= 2)
            {
              v25 = 0;
              v26 = v7 + 1;
              v27 = v11 - 1;
              do
              {
                v28 = (v14 + 2 * v25);
                v29 = v28[1];
                if (v29 == *v28)
                {
                  v30 = v26[v25];
                  if (*(result[6] + v30))
                  {
                    ++*(a3 + 10 * v28[1] + 4);
                  }

                  else
                  {
                    v31 = *(v3[30] + v30);
                    if ((v31 & 4) != 0)
                    {
                      ++*(a3 + 10 * v28[1] + 8);
                    }

                    else if ((v31 & 8) != 0)
                    {
                      ++*(a3 + 10 * v28[1] + 6);
                    }
                  }
                }

                else
                {
                  if (*(a3 + 10 * v28[1]))
                  {
                    ++*(a3 + 10 * v28[1] + 4);
                    v29 = v28[1];
                  }

                  *(a3 + 10 * v29 + 2) = v25 + 1;
                }

                ++*(a3 + 10 * v28[1]);
                ++v25;
              }

              while (v27 != v25);
            }

            if (!*(v15 - 2) && v9 <= v12)
            {
              --*(a3 + 4);
            }

            return result;
          }

          v18 = 6;
        }
      }

      ++*(a3 + v18);
      goto LABEL_33;
    }

    *a3 = 0;
    if (v9 > 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = result[6];
      do
      {
        v23 = v7[v21];
        if (*(v22 + v23))
        {
          if (v20)
          {
            *(a3 + 4) = 1;
            break;
          }

          *a3 = v12;
          *(a3 + 2) = v21;
          v20 = v12;
        }

        else
        {
          v24 = *(v3[30] + v23);
          if ((v24 & 4) != 0)
          {
            ++*(a3 + 8);
          }

          else if ((v24 & 8) != 0)
          {
            ++*(a3 + 6);
          }
        }

        ++v21;
      }

      while (v9 != v21);
    }

    *a3 = v12;
  }

  return result;
}

void *sub_29A0A2658(void *result, int a2, unsigned int a3, _DWORD *a4)
{
  v4 = *(*(*result + 264) + 8 * a2 + 4);
  v5 = *(*result + 288) + 4 * v4;
  v6 = *(*result + 312) + 2 * v4;
  v7 = (result[24] + 4 * *(result[12] + 4 * a2) + 4 * a3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v5 + 4 * v8);
  v11 = *(*result + 24);
  v12 = *(v11 + 8 * v10);
  v13 = result[3];
  v14 = v13 + 4 * *(v11 + 4 * ((2 * v10) | 1));
  v15 = *(v5 + 4 * v9);
  v16 = *(v11 + 8 * v15);
  v17 = *(v11 + 4 * ((2 * v15) | 1));
  v18 = *(v6 + 2 * v8);
  v19 = *(v6 + 2 * v9);
  v20 = v13 + 4 * v17;
  if (!v19)
  {
    v19 = v16;
  }

  if (v12 - 1 == v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 + 1;
  }

  *a4 = *(v14 + 4 * v21);
  a4[1] = *(v20 + 4 * v19 - 4);
  return result;
}

void *sub_29A0A2720(void *result)
{
  v1 = *result;
  v2 = *(*result + 48);
  v3 = *(*result + 56) - v2;
  if ((v3 >> 2) >= 1)
  {
    v4 = result[12];
    v5 = result[3];
    v6 = (v3 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = *v2++;
      *v5++ = *(v4 + 4 * v7);
      --v6;
    }

    while (v6);
  }

  v8 = *(v1 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = result[9];
    do
    {
      if (*(v10 + 2 * v9) >= 2u)
      {
        v11 = (*(v1 + 264) + 8 * v9);
        v12 = *v11;
        if (v12 >= 1)
        {
          v13 = v11[1];
          v14 = (*(v1 + 288) + 4 * v13);
          v15 = (*(v1 + 312) + 2 * v13);
          v16 = (result[15] + 2 * v13);
          do
          {
            v18 = *v16++;
            v17 = v18;
            if (v18)
            {
              v19 = *(*(v1 + 24) + 8 * *v14 + 4) + *v15;
              *(result[3] + 4 * v19) += v17;
            }

            ++v15;
            ++v14;
            --v12;
          }

          while (v12);
          v8 = *(v1 + 8);
        }
      }

      ++v9;
    }

    while (v9 < v8);
  }

  return result;
}

void *sub_29A0A27FC(void *result, int a2, int a3, _DWORD *a4)
{
  v4 = *result;
  v5 = (*(*result + 120) + 8 * a2);
  v6 = *v5;
  if (*(result[9] + 2 * v5[1]) + *(result[9] + 2 * v6) < 3)
  {
    if (*(v4 + 12) < 1)
    {
      v18 = result[12];
      v19 = result[18];
      *a4 = *(v19 + 4 * *(v18 + 4 * v6));
      v17 = *(v19 + 4 * *(v18 + 4 * v5[1]));
    }

    else
    {
      v16 = result[12];
      *a4 = *(v16 + 4 * v6);
      v17 = *(v16 + 4 * v5[1]);
    }

    a4[1] = v17;
  }

  else
  {
    v7 = *(*(v4 + 144) + 8 * a2 + 4);
    v8 = *(*(v4 + 168) + 4 * v7 + 4 * a3);
    v9 = *(*(v4 + 192) + 2 * v7 + 2 * a3);
    v10 = *(v4 + 24);
    LODWORD(v7) = *(v10 + 8 * v8);
    v11 = (2 * v8) | 1;
    v12 = result[3] + 4 * *(v10 + 4 * v11);
    v13 = *(v12 + 4 * v9);
    *a4 = v13;
    if (v9 + 1 < v7)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v12 + 4 * v14);
    a4[1] = v15;
    if (*v5 != *(*(v4 + 48) + 4 * *(v10 + 4 * v11) + 4 * v9))
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return result;
}

void *sub_29A0A28F8(void *result, int a2, _DWORD *a3)
{
  v3 = *result;
  v4 = *(*result + 336);
  v5 = *(v4 + 8 * a2);
  if (v5 >= 1)
  {
    v6 = (8 * ((2 * a2) >> 1)) | 4;
    v7 = *(v4 + v6);
    v8 = (*(v3 + 360) + 4 * v7);
    v9 = (*(v3 + 384) + 2 * v7);
    v10 = *(*(v3 + 264) + v6);
    v11 = *(v3 + 288) + 4 * v10;
    v12 = *(v3 + 312) + 2 * v10;
    v13 = *(*(v3 + 432) + 2 * a2);
    v14 = *(v3 + 12);
    v15 = *(v3 + 120);
    v16 = (v5 - 1);
    v17 = v16 - 1;
    v18 = result[9];
    v19 = v11;
    v20 = v12;
    v21 = v16;
    v22 = a3;
    do
    {
      v24 = *v8++;
      v23 = v24;
      v25 = v15 + 8 * v24;
      LODWORD(v24) = *v9++;
      v26 = *(v25 + 4 * (v24 == 0));
      if (*(v18 + 2 * v26) == 1)
      {
        v27 = (result[12] + 4 * v26);
        if (!v14)
        {
          v27 = (result[18] + 4 * *v27);
        }

        v28 = *v27;
      }

      else if (v13)
      {
        v34 = *(*(v3 + 144) + 4 * ((2 * v23) | 1));
        v35 = *(*(v3 + 168) + 4 * v34);
        v36 = *(*(v3 + 192) + 2 * v34);
        v37 = *(v3 + 24);
        v38 = *(v37 + 8 * v35 + 4);
        v39 = *(v3 + 48) + 4 * v38;
        v40 = result[3] + 4 * v38;
        if (v26 == *(v39 + 4 * v36))
        {
          v28 = *(v40 + 4 * v36);
        }

        else
        {
          if (*(v37 + 8 * v35) - 1 == v36)
          {
            v47 = 0;
          }

          else
          {
            v47 = v36 + 1;
          }

          v28 = *(v40 + 4 * v47);
        }
      }

      else
      {
        if ((v13 & 4) != 0 && !v21)
        {
          v29 = *(v11 + 4 * v17);
          v30 = *(v3 + 24);
          v31 = *(v30 + 8 * v29);
          v32 = result[3] + 4 * *(v30 + 4 * ((2 * v29) | 1));
          v33 = *(v12 + 2 * v17);
          if (!*(v12 + 2 * v17))
          {
            v33 = v31;
          }

          a3[v16] = *(v32 + 4 * v33 - 4);
          goto LABEL_8;
        }

        v41 = *v19;
        v42 = *(v3 + 24);
        v43 = *(v42 + 8 * v41);
        v44 = result[3] + 4 * *(v42 + 4 * ((2 * v41) | 1));
        v45 = *v20;
        if (v43 - 1 == v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = v45 + 1;
        }

        v28 = *(v44 + 4 * v46);
      }

      *v22 = v28;
LABEL_8:
      ++v22;
      --v21;
      ++v20;
      ++v19;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *sub_29A0A2AF0(void *result, int a2, uint64_t a3)
{
  v3 = *(*result + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v3 + 8 * a2 + 4);
    v7 = result[3] + 4 * v6;
    v8 = *(*result + 48) + 4 * v6;
    do
    {
      v9 = *(v7 + 4 * v5);
      if (*(*result + 12) <= 0)
      {
        v10 = *(result[12] + 4 * *(v8 + 4 * v5));
        v9 = v10 - 1;
        v11 = (result[18] + 4 * v10);
        do
        {
          v12 = *v11++;
          ++v9;
        }

        while (v12 != *(v7 + 4 * v5));
      }

      *(a3 + v5++) = *(result[21] + v9);
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_29A0A2B80(void *a1, int a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(v3 + 8 * a2);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  v7 = *(v3 + 8 * a2 + 4);
  v8 = a1[3] + 4 * v7;
  v9 = *(v2 + 48) + 4 * v7;
  v10 = *(v2 + 12);
  do
  {
    v11 = *(v8 + 4 * v5);
    if (v10 <= 0)
    {
      v12 = *(a1[12] + 4 * *(v9 + 4 * v5));
      v11 = v12 - 1;
      v13 = (a1[18] + 4 * v12);
      do
      {
        v14 = *v13++;
        ++v11;
      }

      while (v14 != *(v8 + 4 * v5));
    }

    v6 = *(a1[21] + v11) | v6;
    ++v5;
  }

  while (v5 != v4);
  return v6;
}

void sub_29A0A2C1C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_29A00C9A4();
    }

    v9 = v7 >> 2;
    v10 = v4 - v6;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_29A00E7A8(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[4 * v9];
    v14 = &v12[4 * v11];
    bzero(v13, 4 * a2);
    memcpy(&v13[-4 * (v7 >> 2)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-4 * (v7 >> 2)];
    *(a1 + 8) = &v13[4 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_29A0A2D4C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_29A00C9A4();
    }

    v9 = v7 >> 1;
    v10 = v4 - v6;
    if (v10 > v8)
    {
      v8 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      v12 = sub_29A010BBC(a1, v11);
      v6 = *a1;
      v7 = *(a1 + 8) - *a1;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[2 * v9];
    v14 = &v12[2 * v11];
    bzero(v13, 2 * a2);
    memcpy(&v13[-2 * (v7 >> 1)], v6, v7);
    v15 = *a1;
    *a1 = &v13[-2 * (v7 >> 1)];
    *(a1 + 8) = &v13[2 * a2];
    *(a1 + 16) = v14;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_29A0A2E74(uint64_t a1, size_t __len, unsigned __int8 *a3)
{
  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  if (v7 - v6 >= __len)
  {
    if (__len)
    {
      v15 = &v6[__len];
      memset(v6, *a3, __len);
      v6 = v15;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    v9 = *a1;
    v10 = &v6[-*a1];
    v11 = v10 + __len;
    if ((v10 + __len) < 0)
    {
      sub_29A00C9A4();
    }

    v12 = v7 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = operator new(v13);
    }

    else
    {
      v14 = 0;
    }

    memset(&v14[v10], *a3, __len);
    memcpy(v14, v9, v10);
    *a1 = v14;
    *(a1 + 8) = &v14[v10 + __len];
    *(a1 + 16) = &v14[v13];
    if (v9)
    {

      operator delete(v9);
    }
  }
}

void sub_29A0A2F94(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 1)
  {
    if (a2)
    {
      v14 = 0;
      v15 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v16 = v15 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v17 = vdupq_n_s64(v15);
      v18 = v7 + 2 * a2;
      v19 = *a3;
      v20 = v16 + 8;
      v21 = (v7 + 8);
      do
      {
        v22 = vdupq_n_s64(v14);
        v23 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_29B430070)));
        if (vuzp1_s8(vuzp1_s16(v23, *v17.i8), *v17.i8).u8[0])
        {
          *(v21 - 4) = v19;
        }

        if (vuzp1_s8(vuzp1_s16(v23, *&v17), *&v17).i8[1])
        {
          *(v21 - 3) = v19;
        }

        if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_29B433E10)))), *&v17).i8[2])
        {
          *(v21 - 2) = v19;
          *(v21 - 1) = v19;
        }

        v24 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_29B433E00)));
        if (vuzp1_s8(*&v17, vuzp1_s16(v24, *&v17)).i32[1])
        {
          *v21 = v19;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(v24, *&v17)).i8[5])
        {
          v21[1] = v19;
        }

        if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v22, xmmword_29B433DF0))))).i8[6])
        {
          v21[2] = v19;
          v21[3] = v19;
        }

        v14 += 8;
        v21 += 8;
      }

      while (v20 != v14);
    }

    else
    {
      v18 = *(a1 + 8);
    }

    *(a1 + 8) = v18;
  }

  else
  {
    v8 = v7 - *a1;
    if ((a2 + (v8 >> 1)) < 0)
    {
      sub_29A00C9A4();
    }

    v9 = v8 >> 1;
    v10 = v6 - *a1;
    if (v10 <= a2 + (v8 >> 1))
    {
      v11 = a2 + (v8 >> 1);
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      v13 = sub_29A010BBC(a1, v12);
    }

    else
    {
      v13 = 0;
    }

    v25 = 0;
    v26 = &v13[2 * v9];
    v27 = &v26[2 * a2];
    v28 = *a3;
    v29 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v30 = v29 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v31 = vdupq_n_s64(v29);
    v32 = v26 + 8;
    do
    {
      v33 = vdupq_n_s64(v25);
      v34 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_29B430070)));
      if (vuzp1_s8(vuzp1_s16(v34, *v31.i8), *v31.i8).u8[0])
      {
        *(v32 - 4) = v28;
      }

      if (vuzp1_s8(vuzp1_s16(v34, *&v31), *&v31).i8[1])
      {
        *(v32 - 3) = v28;
      }

      if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_29B433E10)))), *&v31).i8[2])
      {
        *(v32 - 2) = v28;
        *(v32 - 1) = v28;
      }

      v35 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_29B433E00)));
      if (vuzp1_s8(*&v31, vuzp1_s16(v35, *&v31)).i32[1])
      {
        *v32 = v28;
      }

      if (vuzp1_s8(*&v31, vuzp1_s16(v35, *&v31)).i8[5])
      {
        v32[1] = v28;
      }

      if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_29B433DF0))))).i8[6])
      {
        v32[2] = v28;
        v32[3] = v28;
      }

      v25 += 8;
      v32 += 8;
    }

    while (v30 != v25);
    v36 = &v13[2 * v12];
    v37 = *(a1 + 8) - *a1;
    v38 = &v26[-v37];
    memcpy(&v26[-v37], *a1, v37);
    v39 = *a1;
    *a1 = v38;
    *(a1 + 8) = v27;
    *(a1 + 16) = v36;
    if (v39)
    {

      operator delete(v39);
    }
  }
}

void sub_29A0A32E4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 2;
    v9 = v4 - *a1;
    if (v9 >> 1 > v7)
    {
      v7 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = sub_29A00E7A8(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[4 * v8];
    v13 = &v11[4 * v10];
    bzero(v12, 4 * a2);
    v14 = &v12[4 * a2];
    v15 = *(a1 + 8) - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    *(a1 + 16) = v13;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void *sub_29A0A33F8(void *a1, uint64_t a2, __int16 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A010B84(a1, a2);
    v6 = 0;
    v7 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v8 = v7 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
    v9 = vdupq_n_s64(v7);
    v10 = a1[1];
    v11 = v10 + 2 * a2;
    v12 = *a3;
    v13 = v8 + 8;
    v14 = (v10 + 8);
    do
    {
      v15 = vdupq_n_s64(v6);
      v16 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B430070)));
      if (vuzp1_s8(vuzp1_s16(v16, *v9.i8), *v9.i8).u8[0])
      {
        *(v14 - 4) = v12;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v9), *&v9).i8[1])
      {
        *(v14 - 3) = v12;
      }

      if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B433E10)))), *&v9).i8[2])
      {
        *(v14 - 2) = v12;
        *(v14 - 1) = v12;
      }

      v17 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B433E00)));
      if (vuzp1_s8(*&v9, vuzp1_s16(v17, *&v9)).i32[1])
      {
        *v14 = v12;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(v17, *&v9)).i8[5])
      {
        v14[1] = v12;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v15, xmmword_29B433DF0))))).i8[6])
      {
        v14[2] = v12;
        v14[3] = v12;
      }

      v6 += 8;
      v14 += 8;
    }

    while (v13 != v6);
    a1[1] = v11;
  }

  return a1;
}

void sub_29A0A3578(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0A3594(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = a3;
  result[3] = *(a2 + 16);
  result[4] = a4;
  result[6] = 0;
  result[7] = 0;
  result[5] = 0;
  return result;
}

uint64_t sub_29A0A35B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_29A0A35E8(uint64_t *a1)
{
  *(a1[4] + 8) = *(a1[2] + 8);
  v2 = a1[2];
  v3 = a1[4];
  *(v3 + 12) = *(v2 + 12);
  *(v3 + 13) = *(v2 + 13);
  sub_29A0A36B4(a1);
  sub_29A0A37C0(a1);
  sub_29A0A3844(a1);
  sub_29A0A38FC(a1);
  sub_29A0A3984(a1);
  v4 = a1[4];
  if ((*(v4 + 13) & 1) == 0)
  {
    sub_29A0A3AEC(a1);
    sub_29A0A3C34(a1);
    v4 = a1[4];
  }

  if (*(v4 + 16) <= *(a1[3] + 8))
  {

    return sub_29A0A2704(v4);
  }

  else
  {

    return sub_29A0A2720(v4);
  }
}