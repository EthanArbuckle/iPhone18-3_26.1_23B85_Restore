void sub_25FF5A590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FF5A758(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void virtual thunk toProShade::Func<ProShade::Func_ftransform>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Func<ProShade::Func_ftransform>::~Func(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[5];
  v5 = a1 + 48;
  *(a1 + 48) = &unk_28725EA68;
  if (*(a1 + 56) < 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(v5, 0, v6);
  v7 = *(a1 + 64);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  v8 = a2[1];
  *a1 = v8;
  *(a1 + *(v8 - 24)) = a2[4];
  LiString::dec((a1 + 32));
  return a1;
}

void ProShade::func_repr(PCArray_base *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  v24 = 0;
  LODWORD(a3) = *(a2 + 12);
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v7)
      {
        LiString::append(&v24, ", ", 2);
        LODWORD(a3) = *(a2 + 12);
      }

      if (v7 >= a3)
      {
        PCArray_base::badIndex(a1);
      }

      ProShade::VarT<ProShade::Node>::repr(*(a2 + 16) + v6);
      if (__src)
      {
        v8 = *(__src - 2);
      }

      else
      {
        v8 = 0;
      }

      LiString::append(&v24, __src, v8);
      if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
      {
        *__src = 0;
        free(__src - 12);
      }

      ++v7;
      a3 = *(a2 + 12);
      v6 += 32;
    }

    while (v7 < a3);
  }

  v9 = *a1;
  if (*a1)
  {
    v10 = *(v9 - 2);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = malloc_type_malloc(v10 + 14, 0x10000403E1C8BA9uLL);
  v12[1] = v11 + 1;
  v12[2] = v11 + 2;
  atomic_store(1u, v12);
  v13 = v12 + 3;
  atomic_store(0, v12);
  memcpy(v12 + 3, v9, v11);
  v13[v11] = 40;
  v13[v11 + 1] = 0;
  atomic_fetch_add(v12, 1u);
  v14 = v12[1];
  v15 = v24;
  if (v24)
  {
    v16 = *(v24 - 2);
  }

  else
  {
    v16 = 0;
  }

  v17 = v14 + v16;
  v18 = malloc_type_malloc(v17 + 13, 0x10000403E1C8BA9uLL);
  v18[1] = v17;
  v18[2] = v17 + 1;
  atomic_store(1u, v18);
  atomic_store(0, v18);
  memcpy(v18 + 3, v13, v14);
  memcpy(v18 + v14 + 12, v15, v16);
  *(v18 + v17 + 12) = 0;
  atomic_fetch_add(v18, 1u);
  v19 = v18[1];
  v20 = malloc_type_malloc(v19 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v20);
  v21 = v20 + 3;
  atomic_store(0, v20);
  v20[1] = v19 + 1;
  v20[2] = v19 + 2;
  memcpy(v20 + 3, v18 + 3, v19);
  *(v21 + v19) = 41;
  *(v21 + v19 + 1) = 0;
  *v4 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    free(v12);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    if (v24)
    {
      v22 = v24 - 12;
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }
}

void sub_25FF5ACDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    free(v11);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
    {
      *a10 = 0;
      free(a10 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void LiString::append(LiString *this, const char *__src, signed int a3)
{
  if (__src && a3)
  {
    v6 = *this;
    if (*this)
    {
      v7 = *(v6 - 2);
      v8 = v7 + a3;
      if (*(v6 - 1) <= v8)
      {
        v13 = malloc_type_malloc(v8 + 13, 0x10000403E1C8BA9uLL);
        v13[1] = v8;
        v13[2] = v8 + 1;
        atomic_store(1u, v13);
        atomic_store(0, v13);
        memcpy(v13 + 3, v6, v7);
        memcpy(v13 + v7 + 12, __src, a3);
        *(v13 + v8 + 12) = 0;
        if (v13 + 3 != *this)
        {
          LiString::dec(this);
          *this = v13 + 3;
          atomic_fetch_add(v13, 1u);
        }
      }

      else
      {
        memcpy(v6 + v7, __src, a3);
        v9 = *this;
        v10 = *this - 12;
        if (!*this)
        {
          v10 = 0;
        }

        *(v10 + 4) = v8;
        *(v9 + v8) = 0;
      }
    }

    else
    {
      v11 = a3 + 1;
      v12 = malloc_type_malloc(a3 + 13, 0x10000403E1C8BA9uLL);
      v12[2] = v11;
      atomic_store(1u, v12);
      *this = v12 + 3;
      v12[1] = a3;
      memcpy(v12 + 3, __src, a3);
      *(*this + a3) = 0;
    }
  }
}

void PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v23, "PCArray::resize");
    PCException::PCException(exception, &v23);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        v9 = 32 * v6;
        v10 = a2 - v6;
        do
        {
          v11 = (*(a1 + 16) + v9);
          v11->var0 = &unk_28725E328;
          v11[2].var0 = 0;
          PCSharedCount::PCSharedCount(v11 + 3);
          v9 += 32;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 32 * a2;
      v8 = a2;
      do
      {
        (*(*(*(a1 + 16) + v7) + 8))(*(a1 + 16) + v7);
        v7 += 32;
        ++v8;
      }

      while (*(a1 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v12 = *(a1 + 12);
    if (a2 >= v12)
    {
      v13 = *(a1 + 12);
    }

    else
    {
      v13 = a2;
    }

    if (v13 < 1)
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *(a1 + 16);
        *v14 = &unk_28725E328;
        v16 = v15 + v14;
        *(v14 + 8) = *(v16 + 8);
        *(v14 + 16) = *(v16 + 16);
        PCSharedCount::PCSharedCount((v14 + 24), (v16 + 24));
        (*(*(*(a1 + 16) + v14) + 8))(*(a1 + 16) + v14);
        v14 += 32;
      }

      while (32 * v13 != v14);
      v12 = *(a1 + 12);
    }

    if (v13 < v12)
    {
      v17 = 32 * v13;
      do
      {
        (*(*(*(a1 + 16) + v17) + 8))(*(a1 + 16) + v17);
        v17 += 32;
        ++v13;
      }

      while (*(a1 + 12) > v13);
    }

    if (v13 < a2)
    {
      v18 = 32 * v13;
      v19 = (v18 + 24);
      do
      {
        v19[-3].var0 = &unk_28725E328;
        v19[-1].var0 = 0;
        PCSharedCount::PCSharedCount(v19);
        v19 = v20 + 4;
        v18 += 32;
        ++v13;
      }

      while (v13 < a2);
    }

    v21 = *(a1 + 16);
    if (v21)
    {
      MEMORY[0x2666E9ED0](v21, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

uint64_t ProShade::Func<ProShade::Func_ftransform>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28725E430);
  *a1 = &unk_28725E358;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28725E410;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_25FF5B388(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func_ftransform::computeValue()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "not implemented yet");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
  PCException::PCException(exception, &v2, &v1, 972);
  *exception = &unk_2871F6178;
}

void sub_25FF5B464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::VertexProgram::~VertexProgram(PCSharedCount *this)
{
  this[75].var0 = &unk_28725E088;
  LiString::dec(&this[79]);
  this[75].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 78);
  for (i = 0; i != -40; i -= 5)
  {
    this[i + 70].var0 = &unk_28725E088;
    LiString::dec(&this[i + 74]);
    this[i + 70].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&this[i + 73]);
  }

  this[30].var0 = &unk_28725E088;
  LiString::dec(&this[34]);
  this[30].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 33);
  this[25].var0 = &unk_28725E088;
  LiString::dec(&this[29]);
  this[25].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 28);
  this[20].var0 = &unk_28725E088;
  LiString::dec(&this[24]);
  this[20].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 23);
  this[15].var0 = &unk_28725E088;
  LiString::dec(&this[19]);
  this[15].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 18);
  this[10].var0 = &unk_28725E088;
  LiString::dec(&this[14]);
  this[10].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 13);
  this[5].var0 = &unk_28725E088;
  LiString::dec(&this[9]);
  this[5].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 8);
  this->var0 = &unk_28725E088;
  LiString::dec(&this[4]);
  this->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 3);
}

void ProShade::FragmentProgram::~FragmentProgram(PCSharedCount *this)
{
  for (i = 0; i != -40; i -= 5)
  {
    this[i + 45].var0 = &unk_28725E088;
    LiString::dec(&this[i + 49]);
    this[i + 45].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&this[i + 48]);
  }

  this[5].var0 = &unk_28725E088;
  LiString::dec(&this[9]);
  this[5].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 8);
  this->var0 = &unk_28725E088;
  LiString::dec(&this[4]);
  this->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 3);
}

void PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v31, "PCArray::resize");
    PCException::PCException(exception, &v31);
    *exception = &unk_2872DE188;
  }

  v4 = a2;
  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        v10 = a2 - v6;
        v11 = 72 * v6;
        do
        {
          v12 = *(a1 + 16) + v11;
          *(v12 + 40) = 0u;
          *(v12 + 8) = 0u;
          *(v12 + 56) = 0u;
          *(v12 + 24) = 0u;
          *v12 = &unk_28725E328;
          PCSharedCount::PCSharedCount((v12 + 24));
          *(v12 + 32) = &unk_28725E328;
          *(v12 + 48) = 0;
          PCSharedCount::PCSharedCount((v12 + 56));
          *(v12 + 64) = -1;
          v11 += 72;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 72 * a2;
      v8 = a2;
      do
      {
        v9 = (*(a1 + 16) + v7);
        v9[4].var0 = &unk_28725E328;
        PCSharedCount::~PCSharedCount(v9 + 7);
        v9->var0 = &unk_28725E328;
        PCSharedCount::~PCSharedCount(v9 + 3);
        v7 += 72;
        ++v8;
      }

      while (*(a1 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v13 = *(a1 + 12);
    if (a2 >= v13)
    {
      v14 = *(a1 + 12);
    }

    else
    {
      v14 = a2;
    }

    if (v14 < 1)
    {
      v14 = 0;
    }

    else
    {
      v15 = v3;
      v17 = 0;
      do
      {
        v18 = *(a1 + 16);
        *v17 = &unk_28725E328;
        v19 = v18 + v17;
        *(v17 + 8) = *(v18 + v17 + 8);
        *(v17 + 16) = *(v18 + v17 + 16);
        PCSharedCount::PCSharedCount((v17 + 24), (v18 + v17 + 24));
        *(v17 + 32) = &unk_28725E328;
        *(v17 + 40) = *(v19 + 40);
        *(v17 + 48) = *(v19 + 48);
        PCSharedCount::PCSharedCount((v17 + 56), (v19 + 56));
        *(v17 + 64) = *(v19 + 64);
        v20 = (*(a1 + 16) + v17);
        v20[4].var0 = &unk_28725E328;
        PCSharedCount::~PCSharedCount(v20 + 7);
        v20->var0 = &unk_28725E328;
        PCSharedCount::~PCSharedCount(v20 + 3);
        v17 += 72;
      }

      while (72 * v14 != v17);
      v13 = *(a1 + 12);
      v4 = a2;
      v3 = v15;
    }

    v30 = v3;
    if (v14 < v13)
    {
      v21 = 72 * v14;
      do
      {
        v22 = (*(a1 + 16) + v21);
        v22[4].var0 = &unk_28725E328;
        PCSharedCount::~PCSharedCount(v22 + 7);
        v22->var0 = &unk_28725E328;
        PCSharedCount::~PCSharedCount(v22 + 3);
        v21 += 72;
        ++v14;
      }

      while (*(a1 + 12) > v14);
    }

    v23 = v4;
    if (v14 < v4)
    {
      v24 = 72 * v14;
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = v25 + v24;
        *(v27 + 40) = 0u;
        *(v27 + 8) = 0u;
        *(v25 + v24 + 56) = 0u;
        *(v25 + v24 + 24) = 0u;
        *v27 = &unk_28725E328;
        PCSharedCount::PCSharedCount((v25 + v24 + 24));
        *(v27 + 32) = &unk_28725E328;
        *(v27 + 48) = 0;
        PCSharedCount::PCSharedCount((v25 + v24 + 56));
        *(v27 + 64) = -1;
        ++v14;
        v25 += 72;
        v26 += 72;
      }

      while (v14 < v23);
    }

    v28 = *(a1 + 16);
    if (v28)
    {
      MEMORY[0x2666E9ED0](v28, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
    v4 = v23;
    v3 = v30;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
}

uint64_t ProShade::ProgramVar::ProgramVar(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28725E328;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  PCSharedCount::PCSharedCount((a1 + 24), (a2 + 24));
  *a1 = &unk_28725E0C8;
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = &unk_28725EA30;
  *(a1 + 56) = 0;
  PCWorkingColorVector::PCWorkingColorVector((a1 + 72));
  return a1;
}

void sub_25FF5BEE0(_Unwind_Exception *a1)
{
  LiString::dec(v4);
  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::~PCArray(v3);
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::SubstituteVar::eval(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ProShade::VarT<ProShade::Node>::hash(a2, &v25);
  if (*(a1 + 32) == 1)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SubstituteVar: ", 15);
    v8 = operator<<(v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " --- ", 5);
    ProShade::VarT<ProShade::Node>::repr(a2);
    v10 = v24 ? v24 : "";
    v11 = strlen(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v12 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    v6 = std::ostream::flush();
    if (v24)
    {
      if (atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
      {
        *v24 = 0;
        if (v24)
        {
          v13 = (v24 - 12);
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }
    }
  }

  v14 = *(a1 + 40);
  v15 = *(v14 + 12);
  if (v15)
  {
    v16 = 0;
    for (i = 0; i != v15; ++i)
    {
      if ((i & 0x80000000) != 0 || *(v14 + 12) <= i)
      {
        PCArray_base::badIndex(v6);
      }

      v18 = *(*(v14 + 16) + (v16 >> 29));
      ProShade::VarT<ProShade::Node>::hash(v18, &v23);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v23, v25)))) & 1) == 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v18 + 72), v25)))) & 1) == 0)
      {
        if (*(a1 + 32) == 1)
        {
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "  --> ", 6);
          if (*(v18 + 64))
          {
            v20 = *(v18 + 64);
          }

          else
          {
            v20 = "";
          }

          v21 = strlen(v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
          std::ios_base::getloc((v19 + *(*v19 - 24)));
          v22 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
          (v22->__vftable[2].~facet_0)(v22, 10);
          std::locale::~locale(&v23);
          std::ostream::put();
          std::ostream::flush();
        }

        operator new();
      }

      v16 += 0x100000000;
    }
  }

  ProShade::NodeOperator::apply(a2, a3);
}

uint64_t ProShade::NamedVar::NamedVar(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 48) = &unk_2872DEA38;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  ProShade::Node::Node(a1, &off_28725E6E0);
  *a1 = &unk_28725E608;
  *(a1 + 48) = &unk_28725E6C0;
  if ((a1 + 32) != a2)
  {
    LiString::dec((a1 + 32));
    v6 = *a2;
    *(a1 + 32) = *a2;
    if (v6)
    {
      atomic_fetch_add((v6 - 12), 1u);
    }
  }

  v7 = *(a3 + 16);
  if (!v7)
  {
    throw_PCNullPointerException(1);
  }

  *(a1 + 24) = *(v7 + 24);
  return a1;
}

void sub_25FF5C3EC(_Unwind_Exception *a1)
{
  ProShade::Node::~Node(v1, (v4 + 8));
  *(v1 + 48) = v2;
  *(v1 + 64) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::NamedVar::~NamedVar(ProShade::NamedVar *this)
{
  *this = off_28725E720;
  *(this + 6) = off_28725E7D8;
  LiString::dec((this + 32));
  *(this + 6) = &unk_2872DEA38;
  *(this + 64) = 0;
  PCWeakCount::~PCWeakCount(this + 7);
}

{
  *this = off_28725E720;
  *(this + 6) = off_28725E7D8;
  LiString::dec((this + 32));
  *(this + 6) = &unk_2872DEA38;
  *(this + 64) = 0;
  PCWeakCount::~PCWeakCount(this + 7);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::NamedVar::repr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 - 12), 1u);
  }

  return this;
}

int8x8_t *ProShade::NamedVar::computeHash(ProShade::NamedVar *this, int8x8_t *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 - 2);
  }

  else
  {
    v4 = 0;
    v3 = "";
  }

  return PCHashWriteStream::writeData(a2, v3, v4);
}

void ProShade::NamedVar::inputs(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 0, v2);
}

void ProShade::NamedVar::computeValue()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "not implemented yet");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSProgram.cpp");
  PCException::PCException(exception, &v2, &v1, 257);
  *exception = &unk_2871F6178;
}

void sub_25FF5C6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void virtual thunk toProShade::NamedVar::~NamedVar(ProShade::NamedVar *this)
{
  v1 = this + *(*this - 24);
  *v1 = off_28725E720;
  *(v1 + 6) = off_28725E7D8;
  LiString::dec((v1 + 32));
  *(v1 + 6) = &unk_2872DEA38;
  v1[64] = 0;

  PCWeakCount::~PCWeakCount(v1 + 7);
}

{
  v1 = this + *(*this - 24);
  *v1 = off_28725E720;
  *(v1 + 6) = off_28725E7D8;
  LiString::dec((v1 + 32));
  *(v1 + 6) = &unk_2872DEA38;
  v1[64] = 0;
  PCWeakCount::~PCWeakCount(v1 + 7);

  JUMPOUT(0x2666E9F00);
}

ProShade::NamedVar *ProShade::NamedVar::NamedVar(ProShade::NamedVar *this)
{
  *(this + 6) = &unk_2872DEA38;
  *(this + 7) = 0;
  *(this + 64) = 1;
  ProShade::Node::Node(this, &off_28725E6E0);
  *this = &unk_28725E608;
  *(this + 6) = &unk_28725E6C0;
  return this;
}

void sub_25FF5C950(_Unwind_Exception *a1)
{
  *(v1 + 48) = v2;
  *(v1 + 64) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(uint64_t result, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v14, "PCArray::resize");
    PCException::PCException(exception, &v14);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 8))
  {
    v6 = *(result + 12);
    if (v6 < a2)
    {
      do
      {
        *(*(result + 16) + 8 * v6++) = 0;
      }

      while (a2 != v6);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v7 = *(result + 12);
    if (a2 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2;
    }

    if (v8 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v9 = *(result + 16);
      v10 = v8;
      v11 = 0;
      do
      {
        v12 = *v9++;
        *v11++ = v12;
        --v10;
      }

      while (v10);
    }

    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v7 < a2)
    {
      bzero((8 * v7), 8 * (~v7 + a2) + 8);
    }

    result = *(v5 + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v5 + 16) = 0;
  }

  *(v5 + 8) = v3;
  *(v5 + 12) = a2;
  return result;
}

void *LiString::LiString(void *a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    LODWORD(v3) = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (v3 < 1)
  {
    *a1 = 0;
  }

  else
  {
    v5 = malloc_type_malloc((v3 & 0x7FFFFFFF) + 13, 0x10000403E1C8BA9uLL);
    v5[2] = v3 + 1;
    atomic_store(1u, v5);
    *a1 = v5 + 3;
    v5[1] = v3;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memcpy(v5 + 3, v6, v3 & 0x7FFFFFFF);
    *(*a1 + (v3 & 0x7FFFFFFF)) = 0;
  }

  return a1;
}

void LiString::LiString(LiString *this, PCString *a2)
{
  if (PCString::size(a2))
  {
    CStr = PCString::createCStr(a2);
    v5 = CStr;
    if (CStr && *CStr)
    {
      v6 = 0;
        ;
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    v8 = malloc_type_malloc(v6 + 1 + 12, 0x10000403E1C8BA9uLL);
    v8[2] = v6 + 1;
    atomic_store(1u, v8);
    *this = v8 + 3;
    v8[1] = v6;
    memcpy(v8 + 3, v5, v6 + 1);
    free(v5);
  }

  else
  {
    *this = 0;
  }
}

void std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::destroy(uint64_t a1, PCSharedCount *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::destroy(a1, a2[1].var0);
    a2[5].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(a2 + 8);

    operator delete(a2);
  }
}

void ProShade::Sampler::~Sampler(PCSharedCount *this)
{
  this->var0 = &unk_28725E878;
  this[8].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(this + 11);
  this[4].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(this + 7);
  this->var0 = &unk_28725E920;
  PCSharedCount::~PCSharedCount(this + 3);
}

{
  this->var0 = &unk_28725E878;
  this[8].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(this + 11);
  this[4].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(this + 7);
  this->var0 = &unk_28725E920;
  PCSharedCount::~PCSharedCount(this + 3);

  JUMPOUT(0x2666E9F00);
}

void ProShade::VarT<ProShade::UniformNode>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(a1 + 3);

  JUMPOUT(0x2666E9F00);
}

PCSharedCount *ProShade::VarT<ProShade::SamplerNode>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_28725E920;
  PCSharedCount::~PCSharedCount(a1 + 3);
  return a1;
}

void ProShade::VarT<ProShade::SamplerNode>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_28725E920;
  PCSharedCount::~PCSharedCount(a1 + 3);

  JUMPOUT(0x2666E9F00);
}

void PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725E948;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725E948;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v24, "PCArray::resize");
    PCException::PCException(exception, &v24);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (v6 <= a2)
    {
      if (v6 < a2)
      {
        v10 = 16 * v6;
        v11 = a2 - v6;
        do
        {
          v12 = (*(a1 + 16) + v10);
          *v12 = 0;
          v12[1] = 0;
          v10 += 16;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v7 = 16 * a2;
      v8 = a2;
      do
      {
        v9 = *(a1 + 16) + v7;
        LiString::dec((v9 + 8));
        LiString::dec(v9);
        v7 += 16;
        ++v8;
      }

      while (*(a1 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v13 = *(a1 + 12);
    if (a2 >= v13)
    {
      v14 = *(a1 + 12);
    }

    else
    {
      v14 = a2;
    }

    if (v14 < 1)
    {
      v14 = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = *(a1 + 16);
        v17 = *(v15 + v16);
        *v15 = v17;
        if (v17)
        {
          atomic_fetch_add((v17 - 12), 1u);
        }

        v18 = *(v15 + v16 + 8);
        v15[1] = v18;
        if (v18)
        {
          atomic_fetch_add((v18 - 12), 1u);
        }

        v19 = v15 + *(a1 + 16);
        LiString::dec((v19 + 8));
        LiString::dec(v19);
        v15 += 2;
      }

      while ((16 * v14) != v15);
      v13 = *(a1 + 12);
    }

    if (v14 < v13)
    {
      v20 = 16 * v14;
      do
      {
        v21 = *(a1 + 16) + v20;
        LiString::dec((v21 + 8));
        LiString::dec(v21);
        v20 += 16;
        ++v14;
      }

      while (*(a1 + 12) > v14);
    }

    if (v14 < a2)
    {
      bzero((16 * v14), 16 * (~v14 + a2) + 16);
    }

    v22 = *(a1 + 16);
    if (v22)
    {
      MEMORY[0x2666E9ED0](v22, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

uint64_t ProShade::VariableList::by_type(const char **a1, const char **a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2)
  {
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = strcmp(v3, v2);
    if (v4 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (!v4)
    {
      return 0;
    }
  }

  else if (!v3)
  {
    return 0;
  }

  return 1;
}

void ProShade::InsertVarying::eval(uint64_t a1@<X0>, const PCSharedCount *a2@<X1>, PCSharedCount *a3@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  a3->var0 = &unk_28725E328;
  a3[2].var0 = 0;
  PCSharedCount::PCSharedCount(a3 + 3);
  v6 = ProShade::VarT<ProShade::Node>::frequency(a2);
  if (!v6)
  {
LABEL_6:
    ProShade::VarT<ProShade::Node>::operator=(a3, a2);
    return;
  }

  if (v6 == 1)
  {
    if ((ProShade::VarT<ProShade::Node>::atomic(a2) & 1) == 0)
    {
      operator new();
    }

    goto LABEL_6;
  }

  if (v6 != 3)
  {
    var0 = a2[2].var0;
    if (*(a1 + 32) == 1)
    {
      if (!var0)
      {
        throw_PCNullPointerException(1);
      }

      v8 = *(var0 + 4);
      if (!v8 || strcmp(*(var0 + 4), "gl_Normal") && strcmp(v8, "gl_Vertex"))
      {
        goto LABEL_18;
      }
    }

    else if (!var0)
    {
      throw_PCNullPointerException(1);
    }

    if (*(var0 + 6) == 3)
    {
      operator new();
    }
  }

LABEL_18:
  ProShade::NodeOperator::apply(a2, v9);
  ProShade::VarT<ProShade::Node>::operator=(a3, v9);
  v9[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v10);
}

void sub_25FF5D650(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v3, 0x10B1C40515157B5);
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void PCGLSLException::PCGLSLException(PCGLSLException *this, const PCString *a2)
{
  PCException::PCException(this, a2);
  v2->var0 = &unk_28725E9B8;
  PCSharedCount::PCSharedCount(v2 + 8);
}

void PCGLSLException::report(PCString *this)
{
  PCException::report(this);
  CStr = PCString::createCStr(this + 8);
  if (CStr)
  {
    v3 = CStr;
    v4 = strlen(CStr);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], v3, v4);

    free(v3);
  }
}

uint64_t LiPerContext<ProShade::ProgramBase::Exe *,LiPerContextObject_Traits<ProShade::ProgramBase::Exe>,LiOpenGLContextGetter>::get(os_unfair_lock_s *a1, _BYTE *a2)
{
  v4 = a1 + 6;
  v9[2] = &a1[6];
  PCSpinLock::lock(a1 + 6);
  v9[1] = 0;
  v9[0] = LiGLState::getCurrentContext(v5);
  v6 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::find<LiOpenGLContextGetter::C>(a1, v9);
  if (&a1[2] == v6)
  {
    *a2 = 1;
    v9[4] = v9;
    std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(a1, v9);
    operator new();
  }

  *a2 = 0;
  v7 = v6 + 48;
  PCSpinLock::unlock(v4);
  return v7;
}

void sub_25FF5D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::find<LiOpenGLContextGetter::C>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(a2 + 2);
  v6 = *a2;
  v7 = v2;
  do
  {
    v8 = *(v3 + 40);
    v10 = v8 == v5;
    v9 = v8 < v5;
    if (v10)
    {
      v9 = *(v3 + 32) < v6;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 40);
  v13 = v6 < *(v7 + 32);
  v10 = v5 == v12;
  v14 = v5 < v12;
  if (v10)
  {
    v14 = v13;
  }

  if (v14)
  {
    return v2;
  }

  return v7;
}

uint64_t std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::__find_equal<LiOpenGLContextGetter::C>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::__find_equal<LiOpenGLContextGetter::C>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *(a3 + 2);
    v7 = *a3;
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 40);
        v10 = v8[4];
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_15:
  *a2 = v8;
  return result;
}

void ProShade::Program::~Program(ProShade::Program *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  ProShade::UniformProgram::~UniformProgram((this + 1472));
  *(this + 181) = &unk_28725EB60;
  if (*(this + 364) < 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(this + 364);
  }

  PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(this + 1448, 0, v5);
  v6 = *(this + 183);
  if (v6)
  {
    MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
  }

  *(this + 183) = 0;
  *(this + 364) = 0;
  *(this + 178) = &unk_28725EA30;
  v7 = *(this + 358);
  if (v7 < 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 & ~(v7 >> 31);
  }

  if (v8 == v7)
  {
    v9 = *(this + 359);
    if ((v9 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 180) + 8 * v9) = 0;
        v10 = __CFADD__(v9++, 1);
      }

      while (!v10);
    }
  }

  else
  {
    if (v8)
    {
      operator new[]();
    }

    v11 = *(this + 180);
    if (v11)
    {
      MEMORY[0x2666E9ED0](v11, 0x1000C8077774924);
    }

    *(this + 180) = 0;
  }

  *(this + 358) = v8;
  *(this + 359) = 0;
  v12 = *(this + 180);
  if (v12)
  {
    MEMORY[0x2666E9ED0](v12, 0x1000C8077774924);
  }

  *(this + 180) = 0;
  *(this + 358) = 0;
  *(this + 175) = &unk_28725EA30;
  v13 = *(this + 352);
  if (v13 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 & ~(v13 >> 31);
  }

  if (v14 == v13)
  {
    v15 = *(this + 353);
    if ((v15 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 177) + 8 * v15) = 0;
        v10 = __CFADD__(v15++, 1);
      }

      while (!v10);
    }
  }

  else
  {
    if (v14)
    {
      operator new[]();
    }

    v16 = *(this + 177);
    if (v16)
    {
      MEMORY[0x2666E9ED0](v16, 0x1000C8077774924);
    }

    *(this + 177) = 0;
  }

  *(this + 352) = v14;
  *(this + 353) = 0;
  v17 = *(this + 177);
  if (v17)
  {
    MEMORY[0x2666E9ED0](v17, 0x1000C8077774924);
  }

  *(this + 177) = 0;
  *(this + 352) = 0;
  *(this + 165) = &unk_28725E130;
  std::__tree<LiString>::destroy(this + 1376, *(this + 173));
  *(this + 169) = &unk_28725E9F8;
  if (*(this + 340) < 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = *(this + 340);
  }

  PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::resize(this + 1352, 0, v18);
  v19 = *(this + 171);
  if (v19)
  {
    MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  *(this + 171) = 0;
  *(this + 340) = 0;
  *(this + 165) = &unk_287272E98;
  std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::destroy(this + 1328, *(this + 167));
  ProShade::FragmentProgram::~FragmentProgram(this + 114);
  ProShade::VertexProgram::~VertexProgram(this + 34);

  ProShade::ProgramBase::~ProgramBase(this, a2 + 1);
}

void ProShade::UniformProgram::~UniformProgram(ProShade::UniformProgram *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 24, *(this + 4));
  v3 = this;
  std::vector<ProShade::UniformProgram::Register>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<ProShade::UniformProgram::Register>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ProShade::UniformProgram::Register>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ProShade::UniformProgram::Register>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = v3 - 120;
    do
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 48);
      if (v6)
      {
        *(v3 - 40) = v6;
        operator delete(v6);
      }

      *(v3 - 88) = &unk_28725E328;
      PCSharedCount::~PCSharedCount((v3 - 64));
      *(v3 - 120) = &unk_28725E328;
      PCSharedCount::~PCSharedCount((v3 - 96));
      v4 -= 120;
      v3 -= 120;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725E9F8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void std::__tree<LiString>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<LiString>::destroy(a1, *a2);
    std::__tree<LiString>::destroy(a1, a2[1]);
    LiString::dec((a2 + 4));

    operator delete(a2);
  }
}

void PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725E9F8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

PCSharedCount *ProShade::VarT<ProShade::Node>::VarT(PCSharedCount *a1, PCShared_base *a2)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(a1 + 3, a2);
  return a1;
}

void PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EA30;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

ProShade::ConstVector *ProShade::ConstVector::ConstVector(ProShade::ConstVector *this, int a2)
{
  *(this + 10) = &unk_2872DEA38;
  *(this + 11) = 0;
  *(this + 96) = 1;
  ProShade::Node::Node(this, &off_2872726E8);
  v4 = off_2872726E0;
  *this = off_2872726E0;
  *(this + *(v4 - 3)) = off_287272708;
  *this = &unk_2872725B8;
  *(this + 10) = &unk_2872726C0;
  *(this + 6) = a2;
  *(this + 7) = a2;
  *(this + 8) = a2;
  *(this + 9) = a2;
  *(this + 3) = 0x100000002;
  return this;
}

void sub_25FF5E3E8(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v23, "PCArray::resize");
    PCException::PCException(exception, &v23);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        v9 = 40 * v6;
        v10 = a2 - v6;
        do
        {
          v11 = (*(a1 + 16) + v9);
          v11->var0 = &unk_28725E328;
          v11[2].var0 = 0;
          PCSharedCount::PCSharedCount(v11 + 3);
          v11->var0 = &unk_28725E088;
          v11[4].var0 = 0;
          v9 += 40;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 40 * a2;
      v8 = a2;
      do
      {
        (*(*(*(a1 + 16) + v7) + 8))(*(a1 + 16) + v7);
        v7 += 40;
        ++v8;
      }

      while (*(a1 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v12 = *(a1 + 12);
    if (a2 >= v12)
    {
      v13 = *(a1 + 12);
    }

    else
    {
      v13 = a2;
    }

    if (v13 < 1)
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *(a1 + 16);
        *v14 = &unk_28725E328;
        v16 = v15 + v14;
        *(v14 + 8) = *(v15 + v14 + 8);
        *(v14 + 16) = *(v15 + v14 + 16);
        PCSharedCount::PCSharedCount((v14 + 24), (v15 + v14 + 24));
        *v14 = &unk_28725E088;
        v17 = *(v16 + 32);
        *(v14 + 32) = v17;
        if (v17)
        {
          atomic_fetch_add((v17 - 12), 1u);
        }

        (*(*(*(a1 + 16) + v14) + 8))(*(a1 + 16) + v14);
        v14 += 40;
      }

      while (40 * v13 != v14);
      v12 = *(a1 + 12);
    }

    if (v13 < v12)
    {
      v18 = 40 * v13;
      do
      {
        (*(*(*(a1 + 16) + v18) + 8))(*(a1 + 16) + v18);
        v18 += 40;
        ++v13;
      }

      while (*(a1 + 12) > v13);
    }

    if (v13 < a2)
    {
      v19 = (40 * v13);
      v20 = v19;
      do
      {
        v19->var0 = &unk_28725E328;
        v19[2].var0 = 0;
        PCSharedCount::PCSharedCount(v19 + 3);
        v19->var0 = &unk_28725E088;
        v19[4].var0 = 0;
        ++v13;
        v20 += 5;
        v19 += 5;
      }

      while (v13 < a2);
    }

    v21 = *(a1 + 16);
    if (v21)
    {
      MEMORY[0x2666E9ED0](v21, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void *std::__tree<LiString>::find<LiString>(uint64_t a1, const char **a2)
{
  v3 = (a1 + 8);
  v4 = std::__tree<LiString>::__lower_bound<LiString>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = v4[4];
  if (v6)
  {
    if (!*a2 || strcmp(*a2, v6) < 0)
    {
      return v3;
    }
  }

  return v5;
}

void *std::__tree<LiString>::__lower_bound<LiString>(uint64_t a1, const char **a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *a2;
    do
    {
      if (v6)
      {
        v7 = v5[4];
        if (v7)
        {
          v8 = strcmp(v7, v6);
          if (v8 >= 0)
          {
            a4 = v5;
          }

          v5 = (v5 + ((v8 >> 28) & 8));
        }

        else
        {
          ++v5;
        }
      }

      else
      {
        a4 = v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<LiString>::__emplace_unique_key_args<LiString,LiString const&>(uint64_t a1, const char **a2)
{
  v2 = *std::__tree<LiString>::__find_equal<LiString>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<LiString>::__find_equal<LiString>(uint64_t a1, void *a2, const char **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 32);
        if (v8)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_14;
        }

LABEL_11:
        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_14;
        }
      }

      if (v6 && (strcmp(v6, *(v4 + 32)) & 0x80000000) == 0)
      {
        if ((strcmp(v8, v6) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      v4 = *v7;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = (a1 + 8);
LABEL_14:
  *a2 = v7;
  return v5;
}

void PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EA68;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__tree<std::__value_type<PCHash128,ProShade::Snippet *>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,ProShade::Snippet *>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,ProShade::Snippet *>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__tree<std::__value_type<LiString,int>,std::__map_value_compare<LiString,std::__value_type<LiString,int>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<LiString,int>,std::__map_value_compare<LiString,std::__value_type<LiString,int>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<LiString,int>,std::__map_value_compare<LiString,std::__value_type<LiString,int>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,int>>>::destroy(a1, a2[1]);
    LiString::dec((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<LiString,int>,std::__map_value_compare<LiString,std::__value_type<LiString,int>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,int>>>::__emplace_unique_key_args<LiString,std::piecewise_construct_t const&,std::tuple<LiString const&>,std::tuple<>>(uint64_t a1, const char **a2)
{
  v2 = *std::__tree<LiString>::__find_equal<LiString>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void PCPtr<ProShade::Node>::reset<ProShade::Node>(PCShared_base **a1, PCShared_base *a2)
{
  if (*a1 != a2)
  {
    v3 = a2;
    if (a2)
    {
      a2 = (a2 + *(*a2 - 24));
    }

    PCSharedCount::PCSharedCount(&v4, a2);
    *a1 = v3;
    PCSharedCount::operator=(&v4, a1 + 1);
    PCSharedCount::~PCSharedCount(&v4);
  }
}

uint64_t *ProShade::Sampler::operator=(uint64_t *a1, const PCSharedCount *a2)
{
  a1[2] = a2[2].var0;
  PCSharedCount::PCSharedCount(&v5, a2 + 3);
  PCSharedCount::operator=(a1 + 3, &v5);
  PCSharedCount::~PCSharedCount(&v5);
  a1[6] = a2[6].var0;
  PCSharedCount::PCSharedCount(&v5, a2 + 7);
  PCSharedCount::operator=(a1 + 7, &v5);
  PCSharedCount::~PCSharedCount(&v5);
  a1[10] = a2[10].var0;
  PCSharedCount::PCSharedCount(&v5, a2 + 11);
  PCSharedCount::operator=(a1 + 11, &v5);
  PCSharedCount::~PCSharedCount(&v5);
  return a1;
}

uint64_t PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(uint64_t result, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v19, "PCArray::resize");
    PCException::PCException(exception, &v19);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 8))
  {
    v6 = *(result + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        v9 = 96 * v6;
        v10 = a2 - v6;
        do
        {
          result = ProShade::Sampler::Sampler((*(v5 + 16) + v9));
          v9 += 96;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 96 * a2;
      v8 = a2;
      do
      {
        result = (*(*(*(v5 + 16) + v7) + 8))(*(v5 + 16) + v7);
        v7 += 96;
        ++v8;
      }

      while (*(v5 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v11 = *(result + 12);
    if (a2 >= v11)
    {
      v12 = *(result + 12);
    }

    else
    {
      v12 = a2;
    }

    if (v12 < 1)
    {
      v12 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        v14 = *(v5 + 16);
        *v13 = &unk_28725E920;
        v15 = v14 + v13;
        *(v13 + 8) = *(v14 + v13 + 8);
        *(v13 + 16) = *(v14 + v13 + 16);
        PCSharedCount::PCSharedCount((v13 + 24), (v14 + v13 + 24));
        *v13 = &unk_28725E878;
        ProShade::VarT<ProShade::UniformNode>::VarT((v13 + 32), *(v15 + 48));
        *(v13 + 32) = &unk_28725EAA0;
        ProShade::VarT<ProShade::UniformNode>::VarT((v13 + 64), *(v15 + 80));
        *(v13 + 64) = &unk_28725EB20;
        (*(*(*(v5 + 16) + v13) + 8))(*(v5 + 16) + v13);
        v13 += 96;
      }

      while (96 * v12 != v13);
      v11 = *(v5 + 12);
    }

    if (v12 < v11)
    {
      v16 = 96 * v12;
      do
      {
        (*(*(*(v5 + 16) + v16) + 8))(*(v5 + 16) + v16);
        v16 += 96;
        ++v12;
      }

      while (*(v5 + 12) > v12);
    }

    if (v12 < a2)
    {
      v17 = 96 * v12;
      do
      {
        v17 = ProShade::Sampler::Sampler(v17) + 96;
        ++v12;
      }

      while (v12 < a2);
    }

    result = *(v5 + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v5 + 16) = 0;
  }

  *(v5 + 8) = v3;
  *(v5 + 12) = a2;
  return result;
}

PCSharedCount *ProShade::VarT<ProShade::UniformNode>::VarT(PCSharedCount *a1, PCShared_base *a2)
{
  a1->var0 = &unk_28725E8E0;
  a1[2].var0 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(a1 + 3, a2);
  return a1;
}

void PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EB60;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EB98;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void *std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void OUTLINED_FUNCTION_0_13(uint64_t a1, _BYTE **a2)
{
  **a2 = 0;
  if (*a2)
  {
    v3 = *a2 - 12;
  }

  else
  {
    v3 = 0;
  }

  free(v3);
}

void ProShade::VertexProgram::VertexProgram(uint64_t a1, _BYTE **a2)
{
  if (atomic_fetch_add((a1 - 12), 0xFFFFFFFF) == 1)
  {
    OUTLINED_FUNCTION_0_13(a1, a2);
  }
}

uint64_t ProShade::Program::shader(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  v4 = MEMORY[0x277D82828];
  v5 = *MEMORY[0x277D82828];
  *a2 = *MEMORY[0x277D82828];
  *(a2 + *(v5 - 24)) = *(v4 + 24);
  *(a2 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a2 + 16));
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](a2 + 112);
}

PCSharedCount *ProShade::Snippet::Snippet(PCSharedCount *this)
{
  this[5].var0 = 0;
  LOBYTE(this[6].var0) = 1;
  this->var0 = &unk_28725EBD8;
  this[4].var0 = &unk_28725EC08;
  PCSharedCount::PCSharedCount(this + 1);
  PCWorkingColorVector::PCWorkingColorVector(&this[2]);
  return this;
}

void sub_25FF5F618(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 8));
  *(v1 + 32) = &unk_2872DEA38;
  *(v1 + 48) = 0;
  PCWeakCount::~PCWeakCount(v2);
  _Unwind_Resume(a1);
}

void ProShade::Snippet::~Snippet(ProShade::Snippet *this)
{
  *this = &unk_28725EBD8;
  *(this + 4) = &unk_28725EC08;
  PCString::~PCString(this + 1);
  *(this + 4) = &unk_2872DEA38;
  *(this + 48) = 0;
  PCWeakCount::~PCWeakCount(this + 5);
}

{
  ProShade::Snippet::~Snippet(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::Snippet::~Snippet(ProShade::Snippet *this)
{
  ProShade::Snippet::~Snippet((this + *(*this - 24)));
}

{
  ProShade::Snippet::~Snippet((this + *(*this - 24)));

  JUMPOUT(0x2666E9F00);
}

void ProShade::External::define(uint64_t a1, const PCSharedCount *a2, const PCString *a3, int a4, int a5)
{
  *a1 = a2->var0;
  v9 = (a1 + 8);
  PCSharedCount::PCSharedCount(&v10, a2 + 1);
  PCSharedCount::operator=(v9, &v10);
  PCSharedCount::~PCSharedCount(&v10);
  PCString::set((a1 + 16), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
}

void ProShade::External::addArgument(uint64_t a1, int a2, int a3, const PCString *a4)
{
  v8 = *(a1 + 44);
  if (*(a1 + 40) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 40);
  }

  PCArray<ProShade::External::Argument,PCArray_Traits<ProShade::External::Argument>>::resize(a1 + 32, v8 + 1, v9);
  v10 = *(a1 + 48) + 16 * *(a1 + 44);
  *(v10 - 16) = a2;
  *(v10 - 12) = a3;

  PCString::set((v10 - 8), a4);
}

void ProShade::Error<PCIllegalArgumentException>::raise<PCString>(OZChannelBase *a1, const PCString *a2)
{
  OZChannelBase::setRangeName(a1, a2);
  exception = __cxa_allocate_exception(0x40uLL);
  PCIllegalArgumentException::PCIllegalArgumentException(exception, a1);
}

ProShade::ExternalNode *ProShade::ExternalNode::ExternalNode(ProShade::ExternalNode *this)
{
  *(this + 10) = &unk_2872DEA38;
  *(this + 11) = 0;
  *(this + 96) = 1;
  ProShade::Node::Node(this, &off_28725ED18);
  *this = &unk_28725EC38;
  *(this + 9) = 0;
  *(this + 10) = &unk_28725ECF8;
  *(this + 7) = &unk_28725EA68;
  *(this + 8) = 0;
  *(this + 6) = 0;
  return this;
}

void sub_25FF5F9D8(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::External::operator()(uint64_t a1)
{
  if (*(a1 + 44) == 4)
  {
    operator new();
  }

  PCString::ssprintf("expected %d arguments, got 4", v2, *(a1 + 44));
  ProShade::Error<PCIllegalArgumentException>::raise<PCString>(v2, v1);
}

{
  if (*(a1 + 44) == 5)
  {
    operator new();
  }

  PCString::ssprintf("expected %d arguments, got 5", &var60, *(a1 + 44));
  ProShade::Error<PCIllegalArgumentException>::raise<PCString>(&var60, v1);
}

uint64_t ProShade::ExternalNode::ExternalNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  ProShade::Node::Node(a1, &off_28725ED18);
  *a1 = &unk_28725EC38;
  *(a1 + 72) = 0;
  *(a1 + 80) = &unk_28725ECF8;
  *(a1 + 56) = &unk_28725EA68;
  *(a1 + 64) = 0;
  *(a1 + 48) = a2;
  v6 = *(a3 + 12);
  if (v6 > 0)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 56, v6, v7);
  if (*(a3 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 72) + v8, (*(a3 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a3 + 12));
  }

  *(a1 + 24) = *(*(a1 + 48) + 24);
  (*(*a1 + 152))(a1);
  return a1;
}

void sub_25FF600F8(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::ExternalNode::~ExternalNode(ProShade::ExternalNode *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  v5 = this + 56;
  *(this + 7) = &unk_28725EA68;
  if (*(this + 16) < 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(this + 16);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(v5, 0, v6);
  v7 = *(this + 9);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(this + 9) = 0;
  *(this + 16) = 0;
  v8 = a2[1];
  *this = v8;
  *(this + *(v8 - 24)) = a2[4];
  LiString::dec((this + 32));
}

void ProShade::ExternalNode::~ExternalNode(ProShade::ExternalNode *this)
{
  *(v1 + 80) = &unk_2872DEA38;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount((v1 + 88));
}

{
  *(v1 + 80) = &unk_2872DEA38;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount((v1 + 88));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::ExternalNode::~ExternalNode(ProShade::ExternalNode *this)
{
  *(v1 + 80) = &unk_2872DEA38;
  *(v1 + 96) = 0;
  v2 = (v1 + 88);

  PCWeakCount::~PCWeakCount(v2);
}

{
  ProShade::ExternalNode::~ExternalNode((this + *(*this - 24)));
}

void ProShade::ExternalNode::repr(ProShade::ExternalNode *this@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v24 = 0;
  LODWORD(a2) = *(this + 17);
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v5)
      {
        LiString::append(&v24, ", ", 2);
        LODWORD(a2) = *(this + 17);
      }

      if (v5 >= a2)
      {
        PCArray_base::badIndex(this);
      }

      ProShade::VarT<ProShade::Node>::repr(*(this + 9) + v4);
      if (__src)
      {
        v6 = *(__src - 2);
      }

      else
      {
        v6 = 0;
      }

      LiString::append(&v24, __src, v6);
      if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
      {
        *__src = 0;
        if (__src)
        {
          v7 = __src - 12;
        }

        else
        {
          v7 = 0;
        }

        free(v7);
      }

      ++v5;
      a2 = *(this + 17);
      v4 += 32;
    }

    while (v5 < a2);
  }

  (*(*this + 24))(&__src, this);
  v8 = __src;
  if (__src)
  {
    v9 = *(__src - 2);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = malloc_type_malloc(v9 + 14, 0x10000403E1C8BA9uLL);
  v11[1] = v10 + 1;
  v11[2] = v10 + 2;
  atomic_store(1u, v11);
  v12 = v11 + 3;
  atomic_store(0, v11);
  memcpy(v11 + 3, v8, v10);
  v12[v10] = 40;
  v12[v10 + 1] = 0;
  atomic_fetch_add(v11, 1u);
  v13 = v11[1];
  v14 = v24;
  if (v24)
  {
    v15 = *(v24 - 2);
  }

  else
  {
    v15 = 0;
  }

  v16 = v13 + v15;
  v17 = malloc_type_malloc(v16 + 13, 0x10000403E1C8BA9uLL);
  v17[1] = v16;
  v17[2] = v16 + 1;
  atomic_store(1u, v17);
  atomic_store(0, v17);
  memcpy(v17 + 3, v12, v13);
  memcpy(v17 + v13 + 12, v14, v15);
  *(v17 + v16 + 12) = 0;
  atomic_fetch_add(v17, 1u);
  v18 = v17[1];
  v19 = malloc_type_malloc(v18 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v19);
  v20 = v19 + 3;
  atomic_store(0, v19);
  v19[1] = v18 + 1;
  v19[2] = v18 + 2;
  memcpy(v19 + 3, v17 + 3, v18);
  *(v20 + v18) = 41;
  *(v20 + v18 + 1) = 0;
  *v3 = v19 + 3;
  atomic_fetch_add(v19, 1u);
  if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    free(v17);
  }

  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    free(v11);
  }

  if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
  {
    *__src = 0;
    if (__src)
    {
      v21 = __src - 12;
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    if (v24)
    {
      v22 = v24 - 12;
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }
}

void sub_25FF60748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10)
{
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    free(v11);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (a9 && atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
  {
    *a9 = 0;
    free(a9 - 3);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
    {
      *a10 = 0;
      free(a10 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::ExternalNode::description(ProShade::ExternalNode *this@<X0>, LiString *a2@<X8>)
{
  PCString::PCString(&v4, (*(this + 6) + 16));
  v3 = PCString::createCStr(&v4);
  PCString::~PCString(&v4);
  LiString::LiString(a2, v3);
  free(v3);
}

void ProShade::ExternalNode::computeHash(ProShade::ExternalNode *this, int8x8_t *a2)
{
  PCHashWriteStream::writeValue(a2, "ExternalNode");
  (*(*this + 24))(&v10, this);
  if (v10)
  {
    v4 = v10;
  }

  else
  {
    v4 = "";
  }

  if (v10)
  {
    v5 = *(v10 - 2);
  }

  else
  {
    v5 = 0;
  }

  PCHashWriteStream::writeData(a2, v4, v5);
  if (*(this + 17) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(this + 9) + v6, &v9);
      PCHashWriteStream::writeValue(a2, &v9);
      ++v7;
      v6 += 32;
    }

    while (v7 < *(this + 17));
  }

  if (v10 && atomic_fetch_add(v10 - 3, 0xFFFFFFFF) == 1)
  {
    *v10 = 0;
    if (v10)
    {
      v8 = v10 - 12;
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }
}

void sub_25FF609A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (a12)
  {
    if (atomic_fetch_add(a12 - 3, 0xFFFFFFFF) == 1)
    {
      *a12 = 0;
      free(a12 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::ExternalNode::inputs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 68);
  if (*(a2 + 8) < v4)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v4, v5);
  if (*(a1 + 68) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + v6, (*(a1 + 72) + v6));
      ++v7;
      v6 += 32;
    }

    while (v7 < *(a1 + 68));
  }
}

uint64_t ProShade::ExternalNode::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 68);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 68))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 72);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF60C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C4041E1679CLL);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::ExternalNode::setFrequency(ProShade::ExternalNode *this)
{
  result = ProShade::Node::setFrequency(this);
  if (*(this + 10) == 2 && *(this + 11) >= 3)
  {
    *(this + 10) = 3;
  }

  return result;
}

PC_Sp_counted_base *ProShade::ExternalNode::snippet(ProShade::ExternalNode *this)
{
  v1 = *(this + 6);
  var0 = v1->var0;
  PCSharedCount::PCSharedCount(&v4, v1 + 1);
  PCSharedCount::~PCSharedCount(&v4);
  return var0;
}

void PCArray<ProShade::External::Argument,PCArray_Traits<ProShade::External::Argument>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v21, "PCArray::resize");
    PCException::PCException(exception, &v21);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        v9 = 16 * v6;
        v10 = a2 - v6;
        do
        {
          v11 = *(a1 + 16);
          *(v11 + v9) = 0;
          *(v11 + v9 + 8) = 0;
          PCSharedCount::PCSharedCount((v11 + v9 + 8));
          v9 += 16;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = (16 * a2) | 8;
      v8 = a2;
      do
      {
        PCString::~PCString((*(a1 + 16) + v7));
        v7 += 16;
        ++v8;
      }

      while (*(a1 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v12 = *(a1 + 12);
    if (a2 >= v12)
    {
      v13 = *(a1 + 12);
    }

    else
    {
      v13 = a2;
    }

    if (v13 < 1)
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = (v14 + *(a1 + 16));
        v14->var0 = v15->var0;
        PCString::PCString(v14 + 1, v15 + 1);
        PCString::~PCString((v14 + *(a1 + 16) + 8));
        v14 += 2;
      }

      while ((16 * v13) != v14);
      v12 = *(a1 + 12);
    }

    if (v13 < v12)
    {
      v16 = (16 * v13) | 8;
      do
      {
        PCString::~PCString((*(a1 + 16) + v16));
        v16 += 16;
        ++v13;
      }

      while (*(a1 + 12) > v13);
    }

    if (v13 < a2)
    {
      v17 = (16 * v13 + 8);
      do
      {
        v17[-1].var0 = 0;
        v17->var0 = 0;
        PCSharedCount::PCSharedCount(v17);
        v17 = v18 + 2;
        ++v13;
      }

      while (v13 < a2);
    }

    v19 = *(a1 + 16);
    if (v19)
    {
      MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void LiClipSet::LiClipSet(LiClipSet *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2871F2618;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_2871F25E0;
}

void LiClipSet::LiClipSet(LiClipSet *this, const LiClipSet *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2871F2618;
  v4 = *(a2 + 3);
  if (v4 > 0)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  PCArray<PCVector4<double>,PCArray_Traits<PCVector4<double>>>::resize(this, v4, v5);
  if (*(a2 + 3) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(a2 + 2) + v6);
      v9 = (*(this + 2) + v6);
      v10 = v8[1];
      *v9 = *v8;
      v9[1] = v10;
      ++v7;
      v6 += 32;
    }

    while (v7 < *(a2 + 3));
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_2871F25E0;
  v11 = *(a2 + 9);
  if (v11 > 0)
  {
    v12 = 2 * v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  PCArray<int,PCArray_Traits<int>>::resize(this + 24, v11, v12);
  if (*(a2 + 9) >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 5);
    v15 = *(this + 5);
    do
    {
      *(v15 + 4 * v13) = *(v14 + 4 * v13);
      ++v13;
    }

    while (v13 < *(a2 + 9));
  }
}

uint64_t LiClipSet::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (*(a1 + 8) < v4)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  PCArray<PCVector4<double>,PCArray_Traits<PCVector4<double>>>::resize(a1, v4, v5);
  if (*(a2 + 12) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(a2 + 16) + v6);
      v9 = (*(a1 + 16) + v6);
      v10 = v8[1];
      *v9 = *v8;
      v9[1] = v10;
      ++v7;
      v6 += 32;
    }

    while (v7 < *(a2 + 12));
  }

  v11 = *(a2 + 36);
  if (*(a1 + 32) < v11)
  {
    v12 = 2 * v11 + 1;
  }

  else
  {
    v12 = *(a1 + 32);
  }

  PCArray<int,PCArray_Traits<int>>::resize(a1 + 24, v11, v12);
  if (*(a2 + 36) >= 1)
  {
    v13 = 0;
    v14 = *(a2 + 40);
    v15 = *(a1 + 40);
    do
    {
      *(v15 + 4 * v13) = *(v14 + 4 * v13);
      ++v13;
    }

    while (v13 < *(a2 + 36));
  }

  return a1;
}

void LiClipSet::removeIndex(LiClipSet *this, int a2)
{
  LODWORD(v4) = *(this + 3) - 1;
  if (v4 > a2)
  {
    v5 = a2;
    v6 = 32 * a2;
    do
    {
      ++v5;
      v7 = (*(this + 2) + v6);
      v8 = v7[3];
      *v7 = v7[2];
      v7[1] = v8;
      v4 = *(this + 3) - 1;
      v6 += 32;
    }

    while (v5 < v4);
  }

  if (*(this + 2) < v4)
  {
    v9 = 2 * v4 + 1;
  }

  else
  {
    v9 = *(this + 2);
  }

  PCArray<PCVector4<double>,PCArray_Traits<PCVector4<double>>>::resize(this, v4, v9);
  LODWORD(v10) = *(this + 9) - 1;
  if (v10 > a2)
  {
    v11 = a2;
    v12 = (*(this + 5) + 4 * a2 + 4);
    do
    {
      ++v11;
      *(v12 - 1) = *v12;
      v10 = *(this + 9) - 1;
      ++v12;
    }

    while (v11 < v10);
  }

  if (*(this + 8) < v10)
  {
    v13 = 2 * v10 + 1;
  }

  else
  {
    v13 = *(this + 8);
  }

  PCArray<int,PCArray_Traits<int>>::resize(this + 24, v10, v13);
}

void LiClipSet::add(uint64_t a1, double *a2, int a3)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  if (v5 * v5 + v6 * v6 + v7 * v7 > 0.0)
  {
    v9[4] = v3;
    v9[5] = v4;
    v8 = -(v5 * *a2 + v6 * a2[1] + v7 * a2[2]);
    *v9 = v5;
    *&v9[1] = v6;
    *&v9[2] = v7;
    *&v9[3] = v8;
    LiClipSet::add(a1, v9, a3);
  }
}

void LiClipSet::add(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = *(a1 + 12);
  if (v6 == 1)
  {
    a1 = PCPlaneType(*(a1 + 16));
    if (a1 == 1)
    {
      return;
    }

    v6 = *(v5 + 12);
  }

  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 < 0)
      {
        PCArray_base::badIndex(a1);
      }

      a1 = PCComparePlanes(a2, (*(v5 + 16) + 32 * v7));
      if (a1 > 4)
      {
        if (a1 > 6)
        {
          if (a1 != 8)
          {
            if (a1 == 7)
            {
LABEL_34:

              LiClipSet::setEmpty(v5);
              return;
            }

LABEL_24:
            PCPrint("File %s, line %d should not have been reached:\n\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiClipSet.cpp");
            pcAbortImpl();
          }
        }

        else if (a1 != 6)
        {
          return;
        }

        ++v7;
      }

      else
      {
        if (a1 > 2)
        {
          if (a1 != 4)
          {
            return;
          }
        }

        else if (a1 != 2)
        {
          if (!a1)
          {
            return;
          }

          if (a1 == 1)
          {
            goto LABEL_34;
          }

          goto LABEL_24;
        }

        LiClipSet::removeIndex(v5, v7);
      }

      v6 = *(v5 + 12);
    }

    while (v7 < v6);
  }

  if (*(v5 + 8) <= v6)
  {
    v15 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v15 = *(v5 + 8);
  }

  PCArray<PCVector4<double>,PCArray_Traits<PCVector4<double>>>::resize(v5, v6 + 1, v15);
  v16 = *(v5 + 16) + 32 * *(v5 + 12);
  v17 = *(a2 + 16);
  *(v16 - 32) = *a2;
  *(v16 - 16) = v17;
  v18 = *(v5 + 36);
  if (*(v5 + 32) <= v18)
  {
    v19 = 2 * (v18 + 1) + 1;
  }

  else
  {
    v19 = *(v5 + 32);
  }

  PCArray<int,PCArray_Traits<int>>::resize(v5 + 24, v18 + 1, v19);
  *(*(v5 + 40) + 4 * *(v5 + 36) - 4) = a3;
}

void LiClipSet::setEmpty(LiClipSet *this)
{
  v2 = *(this + 2);
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 2);
  }

  if (v2 >= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (v4 != v2)
  {
    operator new[]();
  }

  v5 = *(this + 3);
  if (v5 <= 0)
  {
    v6 = v5 - 1;
    v7 = 32 * v5;
    do
    {
      v8 = (*(this + 2) + v7);
      *v8 = 0uLL;
      v8[1] = 0uLL;
      v7 += 32;
    }

    while (!__CFADD__(v6++, 1));
  }

  *(this + 2) = v4;
  *(this + 3) = 1;
  v10 = *(this + 8);
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(this + 8);
  }

  if (v10 >= 1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 3;
  }

  if (v12 != v10)
  {
    operator new[]();
  }

  v13 = *(this + 9);
  if (v13 <= 0)
  {
    bzero((*(this + 5) + 4 * v13), 4 * -v13 + 4);
  }

  *(this + 8) = v12;
  *(this + 9) = 1;
  if (*(this + 3) < 1)
  {
    PCArray_base::badIndex(this);
  }

  v14 = *(this + 2);
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0xBFF0000000000000;
  **(this + 5) = 0;
}

void LiClipSet::add(LiClipSet *this, const LiClipSet *a2)
{
  v2 = *(a2 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if (i >= *(a2 + 3))
      {
        PCArray_base::badIndex(this);
      }

      if (i >= *(a2 + 9))
      {
        PCArray_base::badIndex(this);
      }

      LiClipSet::add(this, *(a2 + 2) + 32 * i, *(*(a2 + 5) + 4 * i));
    }
  }
}

void LiClipSet::flatten(uint64_t a1, __int128 *a2)
{
  v12 = 0x3FF0000000000000;
  v9 = 0x3FF0000000000000;
  v6 = 0x3FF0000000000000;
  v3 = 0x3FF0000000000000;
  v4 = 0u;
  v5 = 0u;
  v7 = 0u;
  v8 = 0u;
  v10 = 0u;
  v11 = 0u;
  v13 = *a2;
  v14 = *(a2 + 2);
  PCMatrix44Tmpl<double>::flatten(&v3, a2, &v13);
  transform(&v3, a1);
}

void transform(PCArray_base *a1, uint64_t a2)
{
  if (*(a2 + 12) < 1)
  {
    return;
  }

  v3 = a1;
  v4 = 0;
  while (1)
  {
    if (v4 < 0)
    {
      PCArray_base::badIndex(a1);
    }

    v5 = (*(a2 + 16) + 32 * v4);
    PCMatrix44Tmpl<double>::transform_row<double>(v3, v5, v5);
    a1 = PCPlaneType(v5);
    if (!a1)
    {
      LiClipSet::removeIndex(a2, v4);
      goto LABEL_9;
    }

    if (a1 == 1)
    {
      break;
    }

    ++v4;
LABEL_9:
    if (v4 >= *(a2 + 12))
    {
      return;
    }
  }

  LiClipSet::setEmpty(a2);
}

uint64_t LiClipSet::containsBox(uint64_t a1, void *a2, double *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 12);
  if (v3)
  {
    if (v3 < 1)
    {
      v9 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v17 = 0u;
        v18 = 0u;
        PCMatrix44Tmpl<double>::transform_row<double>(a3, (*(a1 + 16) + 32 * v7), v17.f64);
        v8 = 0;
        v9 = 0;
        v10 = a2[1];
        v11 = a2[2];
        v12 = a2[3];
        v19[0] = *a2;
        v19[1] = v11;
        v22 = v10;
        v23 = v11;
        v26 = v10;
        v27 = v11;
        v30 = v19[0];
        v31 = v11;
        v13 = a2[5];
        v20 = a2[4];
        v21 = 0x3FF0000000000000;
        v24 = v20;
        v25 = 0x3FF0000000000000;
        v28 = v13;
        v29 = 0x3FF0000000000000;
        v32 = v13;
        v33 = 0x3FF0000000000000;
        v34 = v19[0];
        v35 = v12;
        v36 = v20;
        v37 = 0x3FF0000000000000;
        v38 = v10;
        v39 = v12;
        v40 = v20;
        v41 = 0x3FF0000000000000;
        v42 = v10;
        v43 = v12;
        v44 = v13;
        v45 = 0x3FF0000000000000;
        v46 = v19[0];
        v47 = v12;
        v48 = v13;
        v49 = 0x3FF0000000000000;
        do
        {
          v14 = vmulq_f64(v17, *&v19[v8]);
          v15 = vmulq_f64(v18, *&v19[v8 + 2]);
          v9 |= vaddq_f64(vaddq_f64(vaddq_f64(v14, vdupq_laneq_s64(v14, 1)), v15), vdupq_laneq_s64(v15, 1)).f64[0] < 0.0;
          v8 += 4;
        }

        while (v8 != 32);
        if (v9)
        {
          break;
        }

        ++v7;
      }

      while (v7 < *(a1 + 12));
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t PCArray<PCVector4<double>,PCArray_Traits<PCVector4<double>>>::resize(uint64_t result, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "PCArray::resize");
    PCException::PCException(exception, &v17);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 8))
  {
    v6 = *(result + 12);
    if (v6 < a2)
    {
      v7 = 32 * v6;
      v8 = a2 - v6;
      do
      {
        v9 = (*(result + 16) + v7);
        *v9 = 0uLL;
        v9[1] = 0uLL;
        v7 += 32;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    LODWORD(v10) = *(result + 12);
    if (a2 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = a2;
    }

    if (v11 < 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v12 = (*(result + 16) + 16);
      v13 = 16;
      v14 = v11;
      do
      {
        *(v13 - 16) = *(v12 - 1);
        v15 = *v12;
        v12 += 2;
        *v13 = v15;
        v13 += 32;
        --v14;
      }

      while (v14);
    }

    if (v11 <= v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = v11;
    }

    if (v10 < a2)
    {
      bzero((32 * v10), 32 * (~v10 + a2) + 32);
    }

    result = *(v5 + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v5 + 16) = 0;
  }

  *(v5 + 8) = v3;
  *(v5 + 12) = a2;
  return result;
}

void PCArray<int,PCArray_Traits<int>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v15, "PCArray::resize");
    PCException::PCException(exception, &v15);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (v6 < a2)
    {
      bzero((*(a1 + 16) + 4 * v6), 4 * (~v6 + a2) + 4);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v7 = *(a1 + 12);
    if (a2 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2;
    }

    if (v8 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v9 = *(a1 + 16);
      v10 = v8;
      v11 = 0;
      do
      {
        v12 = *v9++;
        *v11++ = v12;
        --v10;
      }

      while (v10);
    }

    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v7 < a2)
    {
      bzero((4 * v7), 4 * (~v7 + a2) + 4);
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

BOOL PCMatrix44Tmpl<double>::flatten(uint64_t a1, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = sqrt(*a2 * *a2 + v3 * v3 + v4 * v4);
  v6 = *a2 / v5;
  v7 = v3 / v5;
  v8 = v4 / v5;
  v9 = *a3 * v6;
  v10 = v8 * a3[2] + v9 + a3[1] * v7;
  v11 = v8 * (v8 * (-a2[3] / v5)) + v6 * (v6 * (-a2[3] / v5)) + v7 * (v7 * (-a2[3] / v5));
  *a1 = v10 - v9;
  *(a1 + 8) = -(v7 * *a3);
  *(a1 + 16) = -(v8 * *a3);
  *(a1 + 24) = v11 * *a3;
  *(a1 + 32) = -(v6 * a3[1]);
  *(a1 + 40) = v10 - v7 * a3[1];
  *(a1 + 48) = -(v8 * a3[1]);
  *(a1 + 56) = v11 * a3[1];
  *(a1 + 64) = -(v6 * a3[2]);
  *(a1 + 72) = -(v7 * a3[2]);
  *(a1 + 80) = v10 - v8 * a3[2];
  *(a1 + 88) = v11 * a3[2];
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = v10;
  return fabs(v10) >= 0.0000001;
}

void LiCompositor::LiCompositor(LiCompositor *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  PCSharedCount::PCSharedCount(this + 4);
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 48) = 1;
}

void sub_25FF620B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void LiCompositor::~LiCompositor(PCSharedCount *this)
{
  var0 = this[5].var0;
  if (var0)
  {
    (*(*var0 + 24))(var0);
  }

  PCSharedCount::~PCSharedCount(this + 4);
  v3 = this->var0;
  if (this->var0)
  {
    this[1].var0 = v3;
    operator delete(v3);
  }
}

uint64_t cropToPolygon@<X0>(LiImagePolygon *this@<X2>, HGRenderer *a2@<X0>, void *a3@<X1>, char a4@<W4>, void *a5@<X5>, int a6@<W6>, HGCrop **a7@<X8>, double a8@<D1>, char a9)
{
  v9 = a6;
  if (a6)
  {
    goto LABEL_41;
  }

  if (a8 != 1.0)
  {
    goto LABEL_41;
  }

  v16 = **(this + 11);
  if (((*(*(this + 11) + 8) - v16) & 0x1FFFFFFFE0) != 0x80)
  {
    goto LABEL_41;
  }

  v17 = *v16;
  v18 = v16[4];
  v19 = v16[5];
  if (vabdd_f64(*v16, v18) < 0.000001)
  {
    v20 = v16[9];
    if (vabdd_f64(v19, v20) < 0.000001)
    {
      v21 = v16[8];
      if (vabdd_f64(v21, v16[12]) < 0.000001)
      {
        v22 = v16[1];
        if (vabdd_f64(v16[13], v22) < 0.000001)
        {
          if (v17 >= v21)
          {
            v23 = v16[8];
          }

          else
          {
            v23 = *v16;
          }

          if (v17 >= v21)
          {
            v24 = v17 - v21;
          }

          else
          {
            v24 = v21 - v17;
          }

          if (v22 >= v20)
          {
            v25 = v16[9];
          }

          else
          {
            v25 = v16[1];
          }

          if (v22 >= v20)
          {
            v26 = v22 - v20;
          }

          else
          {
            v26 = v20 - v22;
          }

          goto LABEL_36;
        }
      }
    }
  }

  v27 = v16[1];
  if (vabdd_f64(v27, v19) >= 0.000001 || (v28 = v16[8], vabdd_f64(v18, v28) >= 0.000001) || (v29 = v16[9], vabdd_f64(v29, v16[13]) >= 0.000001) || vabdd_f64(v16[12], v17) >= 0.000001)
  {
LABEL_41:
    if (!*a5)
    {
      v9 = 0;
    }

    if ((*(*a2 + 304))(a2))
    {
      LiFilteredPolygon::LiFilteredPolygon(&v34);
      v36 = 1;
      LiFilteredPolygon::setPolygon(&v34, this);
      v35 = a4;
      v33[1] = 0;
      if (v9 == 48)
      {
        OMSamplesElem::getBottom(v33);
        v32 = HGObject::operator new(0x1A0uLL);
        *(v32 + 24) = 0u;
        *(v32 + 25) = 0u;
        *(v32 + 22) = 0u;
        *(v32 + 23) = 0u;
        *(v32 + 20) = 0u;
        *(v32 + 21) = 0u;
        *(v32 + 18) = 0u;
        *(v32 + 19) = 0u;
        *(v32 + 16) = 0u;
        *(v32 + 17) = 0u;
        *(v32 + 14) = 0u;
        *(v32 + 15) = 0u;
        *(v32 + 12) = 0u;
        *(v32 + 13) = 0u;
        *(v32 + 10) = 0u;
        *(v32 + 11) = 0u;
        *(v32 + 8) = 0u;
        *(v32 + 9) = 0u;
        *(v32 + 6) = 0u;
        *(v32 + 7) = 0u;
        *(v32 + 4) = 0u;
        *(v32 + 5) = 0u;
        *(v32 + 2) = 0u;
        *(v32 + 3) = 0u;
        *v32 = 0u;
        *(v32 + 1) = 0u;
        LiHeEdgeMixShader::LiHeEdgeMixShader(v32);
      }

      LiFilteredPolygon::makeEdge(&v34, v33);
    }

    LiFilteredPolygon::LiFilteredPolygon(&v34);
    v36 = 1;
    LiFilteredPolygon::setPolygon(&v34, this);
    v35 = a4;
    LiFilteredPolygon::makeRasterizer(&v34, 0, a2);
  }

  if (v17 >= v28)
  {
    v23 = v16[8];
  }

  else
  {
    v23 = *v16;
  }

  if (v17 >= v28)
  {
    v24 = v17 - v28;
  }

  else
  {
    v24 = v28 - v17;
  }

  if (v27 >= v29)
  {
    v25 = v16[9];
  }

  else
  {
    v25 = v16[1];
  }

  if (v27 >= v29)
  {
    v26 = v27 - v29;
  }

  else
  {
    v26 = v29 - v27;
  }

LABEL_36:
  LiImagePolygon::getDOD(this, 0.0, &v34);
  if (vabdd_f64(v23, SLODWORD(v34.__begin_)) >= 0.000001 || vabdd_f64(v25, SHIDWORD(v34.__begin_)) >= 0.000001 || vabdd_f64(v24, SLODWORD(v34.__end_)) >= 0.000001 || vabdd_f64(v26, SHIDWORD(v34.__end_)) >= 0.000001)
  {
    goto LABEL_41;
  }

  v30 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v30);
  (*(*v30 + 96))(v30, 0, SLODWORD(v34.__begin_), SHIDWORD(v34.__begin_), (LODWORD(v34.__end_) + LODWORD(v34.__begin_)), (HIDWORD(v34.__end_) + HIDWORD(v34.__begin_)));
  result = (*(*v30 + 120))(v30, 0, *a3);
  *a7 = v30;
  return result;
}

CGColorSpace **blendNodes@<X0>(FxColorDescription *a1@<X4>, CGColorSpace **result@<X0>, uint64_t *a3@<X1>, int a4@<W2>, int a5@<W3>, uint64_t *a6@<X8>, float a7@<S0>, double a8@<D1>)
{
  if (*a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = a5 == 0;
  }

  if (!v9)
  {
    *a6 = 0;
    return result;
  }

  v16 = result;
  makeBlendingColorDescription(a1, &v31);
  if ((a4 - 25) > 1)
  {
    PCSharedCount::PCSharedCount(&v27);
    PCSharedCount::~PCSharedCount(&v27);
    v19 = *a3;
    if (a8 != 1.0 || v19)
    {
      if (a8 != 0.0)
      {
        v21 = *v16;
        if (*v16)
        {
          if (a5)
          {
            v22 = HGObject::operator new(0x1C0uLL);
            HGStencil::HGStencil(v22);
            (*(*v22 + 96))(v22, 0, 0.0, 0.0, 0.0, 0.0);
            (*(*v22 + 96))(v22, 1, 1.0, 0.0, 0.0, 0.0);
            conformWithToneMap(a1, v16, &v31, &v30);
            (*(*v22 + 120))(v22, 0, v30);
            if (v30)
            {
              (*(*v30 + 24))(v30);
            }

            (*(*v22 + 120))(v22, 1, *a3);
            (*(*v22 + 16))(v22);
            conformWithToneMap(a1, v16, &v31, &v30);
            v23 = v30;
            (*(*v22 + 24))(v22);
          }

          else
          {
            if (a4 == 27)
            {
              v30 = *v16;
              (*(*v21 + 16))(v21);
            }

            else
            {
              conformWithToneMap(a1, v16, &v31, &v30);
            }

            v22 = v30;
            if (v30)
            {
              (*(*v30 + 16))(v30);
              if (v30)
              {
                (*(*v30 + 24))(v30);
              }
            }

            conformWithToneMap(a1, a3, &v31, &v30);
            v23 = v30;
          }

          v24 = LiHelium::convertMotionBlendMode(a4);
          v25 = HGObject::operator new(0x220uLL);
          HGHWBlendFlipped::HGHWBlendFlipped(v25);
          (*(*v25 + 96))(v25, 0, v24, 0.0, 0.0, 0.0);
          v26 = a8;
          (*(*v25 + 96))(v25, 1, v26, 0.0, 0.0, 0.0);
          (*(*v25 + 96))(v25, 2, 0.0, 0.0, 0.0, 0.0);
          (*(*v25 + 96))(v25, 5, a7, 0.0, 0.0, 0.0);
          (*(*v25 + 120))(v25, 0, v23);
          (*(*v25 + 120))(v25, 1, v22);
          v30 = v25;
          (*(*v25 + 16))(v25);
          conformWithToneMap(&v31, &v30, a1, a6);
          if (v30)
          {
            (*(*v30 + 24))(v30);
          }

          (*(*v25 + 24))(v25);
          if (v23)
          {
            (*(*v23 + 24))(v23);
          }

          if (v22)
          {
            (*(*v22 + 24))(v22);
          }

          return PCCFRef<CGColorSpace *>::~PCCFRef(&v31._pcColorDesc._colorSpaceRef._obj);
        }
      }
    }

    else
    {
      v19 = *v16;
    }

    *a6 = v19;
    if (v19)
    {
      (*(*v19 + 16))(v19);
    }
  }

  else
  {
    v17 = HGObject::operator new(0x1C0uLL);
    HGStencil::HGStencil(v17);
    conformWithToneMap(a1, a3, &v31, &v30);
    if (a4 == 25)
    {
      v18 = *v16;
      v29 = v18;
      if (v18)
      {
        (*(*v18 + 16))(v18);
      }

      (*(*v17 + 96))(v17, 0, 0.0, 0.0, 0.0, 0.0);
    }

    else
    {
      conformWithToneMap(a1, v16, &v31, &v29);
      (*(*v17 + 96))(v17, 0, 1.0, 0.0, 0.0, 0.0);
    }

    (*(*v17 + 120))(v17, 0, v30);
    (*(*v17 + 120))(v17, 1, v29);
    v20 = a8;
    (*(*v17 + 96))(v17, 1, v20, 0.0, 0.0, 0.0);
    v28 = v17;
    (*(*v17 + 16))(v17);
    conformWithToneMap(&v31, &v28, a1, a6);
    if (v28)
    {
      (*(*v28 + 24))(v28);
    }

    if (v29)
    {
      (*(*v29 + 24))(v29);
    }

    if (v30)
    {
      (*(*v30 + 24))(v30);
    }

    (*(*v17 + 24))(v17);
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v31._pcColorDesc._colorSpaceRef._obj);
}

void sub_25FF63878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    (*(*a7 + 24))(a7);
  }

  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

uint64_t cropToPolygon@<X0>(HGRenderer *a1@<X0>, void *a2@<X1>, LiImagePolygon *a3@<X2>, char a4@<W4>, char a5@<W6>, HGCrop **a6@<X8>)
{
  v7 = 0;
  cropToPolygon(a3, a1, a2, a4, &v7, 0, a6, 1.0, a5);
  result = v7;
  if (v7)
  {
    return (*(*v7 + 24))(v7);
  }

  return result;
}

void sub_25FF63CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void LiBlender::LiBlender(LiBlender *this, float a2, const FxColorDescription *a3)
{
  *this = &unk_28725EEC8;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = -1;
  *(this + 48) = 0;
  *(this + 13) = a2;
  obj = a3->_pcColorDesc._colorSpaceRef._obj;
  *(this + 7) = a3->_pcColorDesc._colorSpaceRef._obj;
  if (obj)
  {
    PCCFRefTraits<CGColorSpace *>::retain(obj);
  }

  v6 = *&a3->_pcColorDesc._dynamicRange;
  *(this + 18) = LODWORD(a3->_pcColorDesc._toneMapMethod._gain);
  *(this + 8) = v6;
  *(this + 80) = a3->_isPremultiplied;
}

uint64_t LiBlender::crop(uint64_t result, uint64_t a2, char a3)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

void LiMultiBlender::LiMultiBlender(LiMultiBlender *this, float a2, FxColorDescription *a3)
{
  LiBlender::LiBlender(this, a2, a3);
  *v5 = &unk_28725EF08;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  makeBlendingColorDescription(a3, v5 + 104);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = &unk_28725EF80;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = &unk_28725EF80;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = &unk_28725EF80;
  *(this + 26) = &unk_28725EFB8;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 0;
  *(this + 32) = 0x3FF0000000000000;
  *(this + 264) = 0;
  *(this + 273) = 256;
}

void sub_25FF63F0C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 88);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *v1 = &unk_28725EEC8;
  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 56));
  _Unwind_Resume(a1);
}

void makeBlendingColorDescription(FxColorDescription *a1@<X0>, uint64_t a2@<X8>)
{
  if (FxColorDescription::isDynamicRangeManaged(a1))
  {
    {
      makeBlendingColorDescription(FxColorDescription const&)::blendingSpace = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
    }

    {
      if (v4)
      {
        v5.i32[0] = 1.0;
        WhiteGainForHLGLevel = PCColorUtil::getWhiteGainForHLGLevel(v4, v5);
        makeBlendingColorDescription(FxColorDescription const&)::toneMapMethod = 5;
        dword_27FE4B884 = LODWORD(WhiteGainForHLGLevel);
      }
    }

    v3 = makeBlendingColorDescription(FxColorDescription const&)::blendingSpace;

    FxColorDescription::FxColorDescription(a2, v3, 0, &makeBlendingColorDescription(FxColorDescription const&)::toneMapMethod, 1);
  }

  else
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    PCColorDescription::PCColorDescription(a2);
    *(a2 + 24) = 1;
  }
}

uint64_t PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EFB8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void LiMultiBlender::~LiMultiBlender(LiMultiBlender *this)
{
  *this = &unk_28725EF08;
  v2 = *(this + 30);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  *(this + 26) = &unk_28725EFB8;
  if (*(this + 54) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 54);
  }

  PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::resize(this + 208, 0, v3);
  v5 = *(this + 28);
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(this + 28) = 0;
  *(this + 54) = 0;
  *(this + 23) = &unk_28725EF80;
  if (*(this + 48) < 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(this + 48);
  }

  PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::resize(this + 184, 0, v6, v4);
  v8 = *(this + 25);
  if (v8)
  {
    MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
  }

  *(this + 25) = 0;
  *(this + 48) = 0;
  *(this + 20) = &unk_28725EF80;
  if (*(this + 42) < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(this + 42);
  }

  PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::resize(this + 160, 0, v9, v7);
  v11 = *(this + 22);
  if (v11)
  {
    MEMORY[0x2666E9ED0](v11, 0x1000C8077774924);
  }

  *(this + 22) = 0;
  *(this + 42) = 0;
  *(this + 17) = &unk_28725EF80;
  if (*(this + 36) < 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(this + 36);
  }

  PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::resize(this + 136, 0, v12, v10);
  v13 = *(this + 19);
  if (v13)
  {
    MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
  }

  *(this + 19) = 0;
  *(this + 36) = 0;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 13);
  v14 = *(this + 11);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  *this = &unk_28725EEC8;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 7);
}

{
  LiMultiBlender::~LiMultiBlender(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t LiMultiBlender::clear(LiMultiBlender *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(this + 30) = 0;
  }

  *(this + 24) = 0;
  result = *(this + 11);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(this + 11) = 0;
  }

  *(this + 273) = 0;
  *(this + 58) = 0;
  return result;
}

HGNode *LiMultiBlender::add(uint64_t a1, HGNode **a2, int a3, char a4, char a5, const PCSharedCount *a6, double a7)
{
  v43 = 0;
  LODWORD(v44) = 0;
  *(&v44 + 1) = 0x3FF0000000000000;
  v45 = 0;
  v13 = *a2;
  if (*a2)
  {
    v43 = *a2;
    (*(*v13 + 16))(v13);
  }

  LODWORD(v44) = a3;
  *(&v44 + 1) = a7;
  v45 = a5;
  *(a1 + 272) = a4;
  if (*(a1 + 273) == 1)
  {
    v14 = *(a1 + 88);
    if (v14)
    {
      v42 = *(a1 + 88);
      (*(*v14 + 16))(v14);
      conformWithToneMap((a1 + 104), &v42, (a1 + 56), v41);
      v15 = *(a1 + 240);
      v16 = v41[0].f64[0];
      if (v15 == *&v41[0].f64[0])
      {
        if (v15)
        {
          (*(**&v41[0].f64[0] + 24))(*&v41[0].f64[0]);
        }
      }

      else
      {
        if (v15)
        {
          (*(*v15 + 24))(v15);
          v16 = v41[0].f64[0];
        }

        *(a1 + 240) = v16;
        v41[0].f64[0] = 0.0;
      }

      if (v42)
      {
        (*(*v42 + 24))(v42);
      }

      *(a1 + 256) = 0x3FF0000000000000;
      *(a1 + 248) = 0;
      v17 = *(a1 + 88);
      if (v17)
      {
        (*(*v17 + 24))(v17);
        *(a1 + 88) = 0;
      }

      *(a1 + 96) = 1;
      *(a1 + 273) = 0;
    }
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    if (*(a1 + 48) != 1 || (v19 = *(a1 + 32), v20 = *(a1 + 40), v21.i64[0] = v19, v21.i64[1] = SHIDWORD(v19), v22 = vcvtq_f64_s64(v21), v21.i64[0] = v20, v21.i64[1] = SHIDWORD(v20), v41[0] = v22, v41[1] = vcvtq_f64_s64(v21), !LiPolygon::contains(v18, v41)))
    {
      v23 = *(a1 + 24);
      v24 = v43;
      v42 = v43;
      if (v43)
      {
        (*(*v43 + 16))(v43);
      }

      cropToPolygon(v23, &v42, *(a1 + 8), *(a1 + 16), 0, v41);
      v25 = v41[0].f64[0];
      if (v43 == *&v41[0].f64[0])
      {
        if (v43)
        {
          (*(**&v41[0].f64[0] + 24))(*&v41[0].f64[0]);
        }
      }

      else
      {
        if (v43)
        {
          (*(*v43 + 24))();
          v25 = v41[0].f64[0];
        }

        v43 = *&v25;
        v41[0].f64[0] = 0.0;
      }

      if (v24)
      {
        (*(*v24 + 24))(v24);
      }
    }

    *(a1 + 8) = 0;
  }

  if (*(a1 + 96))
  {
    if ((v44 - 25) > 1)
    {
      var0 = a6->var0;
      PCSharedCount::PCSharedCount(&v40, a6 + 1);
      if (var0 && *(var0 + 2) == 35 && (v33 = *(var0 + 2)) != 0 && *(v33 + 12) > 0.0 && *(v33 + 24) > 0.0)
      {
        PCSharedCount::~PCSharedCount(&v40);
        if (!a6->var0)
        {
          throw_PCNullPointerException(1);
        }

        LiMultiBlender::addLightWrap(a1, &v43, *(a6->var0 + 2));
      }

      else
      {
        PCSharedCount::~PCSharedCount(&v40);
        if (v45 == 1)
        {
          LiMultiBlender::addPreserveOpacity(a1, &v43);
        }

        else
        {
          (*(*a1 + 56))(a1, &v43);
        }
      }
    }

    else
    {
      LiMultiBlender::addStencil(a1, &v43);
    }
  }

  else if ((v45 & 1) == 0 && (PCBlend::isNothingOverNothing(v44) & 1) == 0)
  {
    v26 = *(a1 + 240);
    v27 = v43;
    if (v26 != v43)
    {
      if (v26)
      {
        (*(*v26 + 24))(v26);
        v27 = v43;
      }

      *(a1 + 240) = v27;
      if (v27)
      {
        (*(*v27 + 16))(v27);
        v27 = v43;
      }
    }

    *(a1 + 248) = v44;
    *(a1 + 264) = v45;
    ++*(a1 + 96);
    DOD = HGRenderer::GetDOD(*(a1 + 24), v27);
    v30 = v29;
    v41[0].f64[0] = 0.0;
    if (HGRectIsNull(DOD, v29))
    {
      v31 = -1;
      v32 = -1;
    }

    else
    {
      if (DOD <= -1073741823)
      {
        v34 = -1073741823;
      }

      else
      {
        v34 = DOD;
      }

      v35 = HIDWORD(DOD);
      if (SHIDWORD(DOD) <= -1073741823)
      {
        LODWORD(v35) = -1073741823;
      }

      if (v30 >= 1073741822)
      {
        v36 = 1073741822;
      }

      else
      {
        v36 = v30;
      }

      v37 = HIDWORD(v30);
      if (SHIDWORD(v30) >= 1073741822)
      {
        LODWORD(v37) = 1073741822;
      }

      *&v41[0].f64[0] = __PAIR64__(v35, v34);
      v31 = v36 - v34;
      v32 = v37 - v35;
    }

    *&v41[0].f64[1] = __PAIR64__(v32, v31);
    LiDrawnRegion::add(a1 + 136, v41, 1, 1, 0);
  }

  result = v43;
  if (v43)
  {
    return (*(*v43 + 24))(v43);
  }

  return result;
}

void sub_25FF64960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(va);
  _Unwind_Resume(a1);
}

uint64_t conformWithToneMap@<X0>(FxColorDescription *this@<X1>, uint64_t *a2@<X0>, FxColorDescription *a3@<X2>, uint64_t *a4@<X8>)
{
  if (FxColorDescription::isColorManaged(this) && (FxColorDescription::isColorManaged(a3) & 1) != 0)
  {
    if (FxColorDescription::isHDR(this) && FxColorDescription::isSDR(a3))
    {
      v8 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
      CGColorSpace = FxColorDescription::getCGColorSpace(this);
      isPremultiplied = FxColorDescription::isPremultiplied(this);
      FxApplyColorConform(a2, CGColorSpace, isPremultiplied, v8, 0);
      FxApplyColorConform(&v29, &kPCNCLC_Rec2020Linear, 0, &kPCNCLC_Rec2020HLG, 0, &v28);
      v11 = v28;
      if (v29 == v28)
      {
        if (v29)
        {
          (*(*v28 + 24))(v28);
        }
      }

      else
      {
        if (v29)
        {
          (*(*v29 + 24))();
          v11 = v28;
        }

        v29 = v11;
      }

      FxApplyColorConform(&v29, &kPCNCLC_Rec709, 0, &kPCNCLC_Rec709Linear, 0, &v28);
      v22 = v28;
      if (v29 == v28)
      {
        if (v29)
        {
          (*(*v28 + 24))(v28);
        }
      }

      else
      {
        if (v29)
        {
          (*(*v29 + 24))();
          v22 = v28;
        }

        v29 = v22;
      }

      v23 = FxColorDescription::getCGColorSpace(a3);
      v24 = FxColorDescription::isPremultiplied(a3);
      FxApplyColorConform(&v29, v8, 0, v23, v24);
      result = v29;
      if (v29)
      {
        return (*(*v29 + 24))(result);
      }
    }

    else if (FxColorDescription::isSDR(this) && FxColorDescription::isHDR(a3))
    {
      v14 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
      v15 = FxColorDescription::getCGColorSpace(this);
      v16 = FxColorDescription::isPremultiplied(this);
      FxApplyColorConform(a2, v15, v16, v14, 0);
      FxApplyColorConform(&v29, &kPCNCLC_Rec709Linear, 0, &kPCNCLC_Rec709, 0, &v28);
      v17 = v28;
      if (v29 == v28)
      {
        if (v29)
        {
          (*(*v28 + 24))(v28);
        }
      }

      else
      {
        if (v29)
        {
          (*(*v29 + 24))();
          v17 = v28;
        }

        v29 = v17;
      }

      FxApplyColorConform(&v29, &kPCNCLC_Rec2020HLG, 0, &kPCNCLC_Rec2020Linear, 0, &v28);
      v25 = v28;
      if (v29 == v28)
      {
        if (v29)
        {
          (*(*v28 + 24))(v28);
        }
      }

      else
      {
        if (v29)
        {
          (*(*v29 + 24))();
          v25 = v28;
        }

        v29 = v25;
      }

      v26 = FxColorDescription::getCGColorSpace(a3);
      v27 = FxColorDescription::isPremultiplied(a3);
      FxApplyColorConform(&v29, v14, 0, v26, v27);
      result = v29;
      if (v29)
      {
        return (*(*v29 + 24))(result);
      }
    }

    else
    {
      v18 = FxColorDescription::getCGColorSpace(this);
      v19 = FxColorDescription::isPremultiplied(this);
      v20 = FxColorDescription::getCGColorSpace(a3);
      v21 = FxColorDescription::isPremultiplied(a3);

      return FxApplyColorConform(a2, v18, v19, v20, v21);
    }
  }

  else
  {
    result = *a2;
    *a4 = *a2;
    if (result)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

{
  if (FxColorDescription::isColorManaged(this) && (FxColorDescription::isColorManaged(a3) & 1) != 0)
  {
    if (FxColorDescription::isHDR(this) && FxColorDescription::isSDR(a3))
    {
      v8 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
      CGColorSpace = FxColorDescription::getCGColorSpace(this);
      isPremultiplied = FxColorDescription::isPremultiplied(this);
      FxApplyColorConform(a2, CGColorSpace, isPremultiplied, v8, 0);
      FxApplyColorConform(&v29, &kPCNCLC_Rec2020Linear, 0, &kPCNCLC_Rec2020HLG, 0, &v28);
      v11 = v28;
      if (v29 == v28)
      {
        if (v29)
        {
          (*(*v28 + 24))(v28);
        }
      }

      else
      {
        if (v29)
        {
          (*(*v29 + 24))();
          v11 = v28;
        }

        v29 = v11;
      }

      FxApplyColorConform(&v29, &kPCNCLC_Rec709, 0, &kPCNCLC_Rec709Linear, 0, &v28);
      v22 = v28;
      if (v29 == v28)
      {
        if (v29)
        {
          (*(*v28 + 24))(v28);
        }
      }

      else
      {
        if (v29)
        {
          (*(*v29 + 24))();
          v22 = v28;
        }

        v29 = v22;
      }

      v23 = FxColorDescription::getCGColorSpace(a3);
      v24 = FxColorDescription::isPremultiplied(a3);
      FxApplyColorConform(&v29, v8, 0, v23, v24);
      result = v29;
      if (v29)
      {
        return (*(*v29 + 24))(result);
      }
    }

    else if (FxColorDescription::isSDR(this) && FxColorDescription::isHDR(a3))
    {
      v14 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
      v15 = FxColorDescription::getCGColorSpace(this);
      v16 = FxColorDescription::isPremultiplied(this);
      FxApplyColorConform(a2, v15, v16, v14, 0);
      FxApplyColorConform(&v29, &kPCNCLC_Rec709Linear, 0, &kPCNCLC_Rec709, 0, &v28);
      v17 = v28;
      if (v29 == v28)
      {
        if (v29)
        {
          (*(*v28 + 24))(v28);
        }
      }

      else
      {
        if (v29)
        {
          (*(*v29 + 24))();
          v17 = v28;
        }

        v29 = v17;
      }

      FxApplyColorConform(&v29, &kPCNCLC_Rec2020HLG, 0, &kPCNCLC_Rec2020Linear, 0, &v28);
      v25 = v28;
      if (v29 == v28)
      {
        if (v29)
        {
          (*(*v28 + 24))(v28);
        }
      }

      else
      {
        if (v29)
        {
          (*(*v29 + 24))();
          v25 = v28;
        }

        v29 = v25;
      }

      v26 = FxColorDescription::getCGColorSpace(a3);
      v27 = FxColorDescription::isPremultiplied(a3);
      FxApplyColorConform(&v29, v14, 0, v26, v27);
      result = v29;
      if (v29)
      {
        return (*(*v29 + 24))(result);
      }
    }

    else
    {
      v18 = FxColorDescription::getCGColorSpace(this);
      v19 = FxColorDescription::isPremultiplied(this);
      v20 = FxColorDescription::getCGColorSpace(a3);
      v21 = FxColorDescription::isPremultiplied(a3);

      return FxApplyColorConform(a2, v18, v19, v20, v21);
    }
  }

  else
  {
    result = *a2;
    *a4 = *a2;
    if (result)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

void sub_25FF64F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiMultiBlender::addStencil(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) <= 0.0)
  {
    v8 = *(*a1 + 48);

    return v8();
  }

  else
  {
    v4 = HGObject::operator new(0x1C0uLL);
    HGStencil::HGStencil(v4);
    (*(*a1 + 24))(&v23, a1);
    conformWithToneMap((a1 + 56), &v23, (a1 + 104), &v28);
    if (v23)
    {
      (*(*v23 + 24))(v23);
    }

    if (*(a2 + 8) == 25)
    {
      v7 = *a2;
      v27 = v7;
      if (v7)
      {
        (*(*v7 + 16))(v7);
      }
    }

    else
    {
      conformWithToneMap((a1 + 56), a2, (a1 + 104), &v27);
    }

    v5.n128_u32[0] = 1.0;
    v6.n128_u64[0] = 0;
    if (*(a2 + 8) == 25)
    {
      v5.n128_f32[0] = 0.0;
    }

    (*(*v4 + 96))(v4, 0, v5, v6, 0.0, 0.0);
    (*(*v4 + 120))(v4, 0, v28);
    (*(*v4 + 120))(v4, 1, v27);
    (*(*v4 + 96))(v4, 1, 1.0, 0.0, 0.0, 0.0);
    v26 = v4;
    (*(*v4 + 16))(v4);
    conformWithToneMap((a1 + 104), &v26, (a1 + 56), &v23);
    v10 = *(a1 + 240);
    v11 = v23;
    if (v10 == v23)
    {
      if (v10)
      {
        (*(*v23 + 24))(v23);
      }
    }

    else
    {
      if (v10)
      {
        (*(*v10 + 24))(v10);
        v11 = v23;
      }

      *(a1 + 240) = v11;
      v23 = 0;
    }

    if (v26)
    {
      (*(*v26 + 24))(v26);
    }

    *(a1 + 256) = *(a2 + 16);
    *(a1 + 248) = *(a2 + 8);
    *(a1 + 96) = 1;
    DOD = HGRenderer::GetDOD(*(a1 + 24), *(a1 + 240));
    v14 = v13;
    v23 = 0;
    if (HGRectIsNull(DOD, v13))
    {
      v16 = -1;
      v17 = -1;
    }

    else
    {
      if (DOD <= -1073741823)
      {
        v18 = -1073741823;
      }

      else
      {
        v18 = DOD;
      }

      v19 = HIDWORD(DOD);
      if (SHIDWORD(DOD) <= -1073741823)
      {
        LODWORD(v19) = -1073741823;
      }

      if (v14 >= 1073741822)
      {
        v20 = 1073741822;
      }

      else
      {
        v20 = v14;
      }

      v21 = HIDWORD(v14);
      if (SHIDWORD(v14) >= 1073741822)
      {
        LODWORD(v21) = 1073741822;
      }

      v23 = __PAIR64__(v19, v18);
      v16 = v20 - v18;
      v17 = v21 - v19;
    }

    v24 = v16;
    v25 = v17;
    LiDrawnRegion::clear((a1 + 136), v15);
    LiDrawnRegion::add(a1 + 136, &v23, 1, 1, 0);
    v22 = *(a1 + 88);
    if (v22)
    {
      (*(*v22 + 24))(v22);
      *(a1 + 88) = 0;
    }

    if (v27)
    {
      (*(*v27 + 24))(v27);
    }

    if (v28)
    {
      (*(*v28 + 24))(v28);
    }

    return (*(*v4 + 24))(v4);
  }
}

void sub_25FF65544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiMultiBlender::addLightWrap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 12);
  if (*(a2 + 8) == 35)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = HGObject::operator new(0x220uLL);
  HGHWBlendFlipped::HGHWBlendFlipped(v8);
  (*(*a1 + 24))(&v31, a1);
  conformWithToneMap((a1 + 56), &v31, (a1 + 104), &v28);
  (*(*v8 + 120))(v8, 0, v28);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  conformWithToneMap((a1 + 56), a2, (a1 + 104), &v28);
  (*(*v8 + 120))(v8, 1, v28);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  v9 = LiHelium::convertMotionBlendMode(v7);
  (*(*v8 + 96))(v8, 0, v9, 0.0, 0.0, 0.0);
  v10 = *(a2 + 16);
  (*(*v8 + 96))(v8, 1, v10, 0.0, 0.0, 0.0);
  v11 = *(a3 + 16);
  v12 = *(a3 + 20);
  v13 = LiHelium::convertMotionBlendMode(*(a3 + 8));
  HGHWBlendFlipped::SetLightWrapParams(v8, v13, v6, v11, v12, *(a3 + 24));
  v31 = v8;
  (*(*v8 + 16))(v8);
  conformWithToneMap((a1 + 104), &v31, (a1 + 56), &v28);
  v14 = *(a1 + 240);
  v15 = v28;
  if (v14 == v28)
  {
    if (v14)
    {
      (*(*v28 + 24))(v28);
    }
  }

  else
  {
    if (v14)
    {
      (*(*v14 + 24))(v14);
      v15 = v28;
    }

    *(a1 + 240) = v15;
    v28 = 0;
  }

  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  *(a1 + 256) = 0x3FF0000000000000;
  *(a1 + 248) = *(a2 + 8);
  *(a1 + 96) = 1;
  DOD = HGRenderer::GetDOD(*(a1 + 24), *(a1 + 240));
  v18 = v17;
  v28 = 0;
  if (HGRectIsNull(DOD, v17))
  {
    v20 = -1;
    v21 = -1;
  }

  else
  {
    if (DOD <= -1073741823)
    {
      v22 = -1073741823;
    }

    else
    {
      v22 = DOD;
    }

    v23 = HIDWORD(DOD);
    if (SHIDWORD(DOD) <= -1073741823)
    {
      LODWORD(v23) = -1073741823;
    }

    if (v18 >= 1073741822)
    {
      v24 = 1073741822;
    }

    else
    {
      v24 = v18;
    }

    v25 = HIDWORD(v18);
    if (SHIDWORD(v18) >= 1073741822)
    {
      LODWORD(v25) = 1073741822;
    }

    v28 = __PAIR64__(v23, v22);
    v20 = v24 - v22;
    v21 = v25 - v23;
  }

  v29 = v20;
  v30 = v21;
  LiDrawnRegion::clear((a1 + 136), v19);
  LiDrawnRegion::add(a1 + 136, &v28, 1, 1, 0);
  v26 = *(a1 + 88);
  if (v26)
  {
    (*(*v26 + 24))(v26);
    *(a1 + 88) = 0;
  }

  return (*(*v8 + 24))(v8);
}

void sub_25FF65B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  (*(*v12 + 24))(v12);
  _Unwind_Resume(a1);
}

uint64_t LiMultiBlender::addPreserveOpacity(uint64_t a1, uint64_t a2)
{
  v4 = HGObject::operator new(0x1C0uLL);
  HGStencil::HGStencil(v4);
  (*(*a1 + 24))(&v12, a1);
  conformWithToneMap((a1 + 56), a2, (a1 + 104), &v11);
  (*(*v4 + 120))(v4, 0, v11);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  (*(*v4 + 120))(v4, 1, v12);
  (*(*v4 + 96))(v4, 0, 0.0, 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 1, 1.0, 0.0, 0.0, 0.0);
  LiMultiBlender::makeMultiBlend(a1, &v11);
  v5 = *(a1 + 88);
  v6 = v11;
  if (v5 == v11)
  {
    if (v5)
    {
      (*(*v11 + 24))(v11);
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }

    *(a1 + 88) = v6;
  }

  LiMultiBlender::addToMultiBlender(a1, 0, v12, 9, 0, 1, 1.0);
  v7 = LiHelium::convertMotionBlendMode(*(a2 + 8));
  v8 = *(a2 + 16);
  LiMultiBlender::addToMultiBlender(a1, 1, v4, v7, 1, 0, v8);
  *(a1 + 96) = 2;
  *(a1 + 236) = 2;
  LiDrawnRegion::clear((a1 + 160), v9);
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  return (*(*v4 + 24))(v4);
}

void sub_25FF65F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(exception_object);
}

HGNode *LiMultiBlender::add(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  DOD = HGRenderer::GetDOD(*(a1 + 24), *a2);
  v7 = v6;
  v26 = 0;
  if (HGRectIsNull(DOD, v6))
  {
    v8 = -1;
    v9 = -1;
  }

  else
  {
    if (DOD <= -1073741823)
    {
      v10 = -1073741823;
    }

    else
    {
      v10 = DOD;
    }

    v11 = HIDWORD(DOD);
    if (SHIDWORD(DOD) <= -1073741823)
    {
      LODWORD(v11) = -1073741823;
    }

    if (v7 >= 1073741822)
    {
      v12 = 1073741822;
    }

    else
    {
      v12 = v7;
    }

    v13 = HIDWORD(v7);
    if (SHIDWORD(v7) >= 1073741822)
    {
      LODWORD(v13) = 1073741822;
    }

    v26 = __PAIR64__(v11, v10);
    v8 = v12 - v10;
    v9 = v13 - v11;
  }

  v27 = v8;
  v28 = v9;
  v14 = LiDrawnRegion::add(a1 + 136, &v26, 1, 1, 0);
  v15 = (a2 + 8);
  v16 = LiHelium::convertMotionBlendMode(*(a2 + 8));
  if ((v14 & 1) == 0)
  {
    result = PCBlend::isNothingOverNothing(*v15);
    if (result)
    {
      return result;
    }

    if (PCBlend::isNormalOverNothing(*v15))
    {
      v16 = 9;
    }

    else
    {
      v16 = v16;
    }
  }

  if (!*(a1 + 88))
  {
    LiMultiBlender::multify(a1);
  }

  if (LiDrawnRegion::add(a1 + 184, &v26, 1, 0, *v15))
  {
    goto LABEL_24;
  }

  if (LiDrawnRegion::add(a1 + 160, &v26, 0, 1, 0))
  {
    LiDrawnRegion::add(a1 + 184, &v26, 0, 1, *(a2 + 8));
LABEL_24:
    v18 = *(a1 + 220);
    if (*(a1 + 216) <= v18)
    {
      v19 = 2 * (v18 + 1) + 1;
    }

    else
    {
      v19 = *(a1 + 216);
    }

    PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::resize(a1 + 208, v18 + 1, v19);
    v20 = *(a1 + 224) + 32 * *(a1 + 220);
    v21 = *(v20 - 32);
    result = *a2;
    if (v21 != *a2)
    {
      if (v21)
      {
        (*(*v21 + 24))(*(v20 - 32));
        result = *a2;
      }

      *(v20 - 32) = result;
      if (result)
      {
        result = (*(*result + 16))(result);
      }
    }

    v22 = *v15;
    *(v20 - 8) = *(a2 + 24);
    *(v20 - 24) = v22;
    v23 = *(a1 + 232);
    *(a1 + 232) = v23 + 1;
    if (v23 >= 31)
    {
      return LiMultiBlender::flushDeferred(a1, v22);
    }

    return result;
  }

  v25 = *(a1 + 96);
  if (*(a1 + 274) == 1)
  {
    v25 = *(a1 + 236);
  }

  v24 = *(a2 + 16);
  result = LiMultiBlender::addToMultiBlender(a1, *(a1 + 96), v4, v16, v25, 1, v24);
  ++*(a1 + 96);
  *(a1 + 232) = 0;
  return result;
}

void LiMultiBlender::multify(LiMultiBlender *this)
{
  v2 = *(this + 30);
  LiMultiBlender::makeMultiBlend(this, &v22);
  v3 = *(this + 11);
  v4 = v22;
  if (v3 == v22)
  {
    if (v3)
    {
      (*(*v22 + 24))(v22);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }

    *(this + 11) = v4;
  }

  *(this + 59) = 0;
  if (*(this + 32) == 1.0)
  {
    LiMultiBlender::addToMultiBlender(this, 0, *(this + 30), 9, 0, 1, 1.0);
    ++*(this + 59);

    LiDrawnRegion::clear((this + 160), v7);
  }

  else
  {
    v5 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v5);
    if (*(this + 274) == 1)
    {
      v6 = *(this + 59);
    }

    else
    {
      v6 = 0;
    }

    LiMultiBlender::addToMultiBlender(this, 0, v5, 9, v6, 1, 1.0);
    v8 = *(this + 59);
    *(this + 59) = v8 + 1;
    v9 = *(this + 24);
    if (*(this + 274))
    {
      v11 = (v8 + 1);
    }

    else
    {
      v11 = v9;
    }

    v10 = *(this + 32);
    LiMultiBlender::addToMultiBlender(this, v9, *(this + 30), 9, v11, 1, v10);
    ++*(this + 24);
    LiDrawnRegion::clear((this + 160), v12);
    DOD = HGRenderer::GetDOD(*(this + 3), v2);
    v15 = v14;
    v22 = 0;
    if (HGRectIsNull(DOD, v14))
    {
      v16 = -1;
      v17 = -1;
    }

    else
    {
      if (DOD <= -1073741823)
      {
        v18 = -1073741823;
      }

      else
      {
        v18 = DOD;
      }

      v19 = HIDWORD(DOD);
      if (SHIDWORD(DOD) <= -1073741823)
      {
        LODWORD(v19) = -1073741823;
      }

      if (v15 >= 1073741822)
      {
        v20 = 1073741822;
      }

      else
      {
        v20 = v15;
      }

      v21 = HIDWORD(v15);
      if (SHIDWORD(v15) >= 1073741822)
      {
        LODWORD(v21) = 1073741822;
      }

      v22 = __PAIR64__(v19, v18);
      v16 = v20 - v18;
      v17 = v21 - v19;
    }

    v23 = v16;
    v24 = v17;
    LiDrawnRegion::add(this + 160, &v22, 1, 1, 0);
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }
}

void sub_25FF66518(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiMultiBlender::addToMultiBlender(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float a7)
{
  v11 = a3;
  if (a3)
  {
    (*(*a3 + 16))(a3);
    if (a6 != 1)
    {
      goto LABEL_14;
    }

    (*(*v11 + 16))(v11);
  }

  else if (a6 != 1)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v16 = v11;
  conformWithToneMap((a1 + 56), &v16, (a1 + 104), &v17);
  v14 = v17;
  if (v17 == v11)
  {
    if (v11)
    {
      (*(*v17 + 24))();
    }
  }

  else
  {
    if (v11)
    {
      (*(*v11 + 24))(v11);
      v14 = v17;
    }

    v17 = 0;
    v11 = v14;
  }

  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

LABEL_14:
  result = (*(**(a1 + 88) + 632))(*(a1 + 88), a2, v11, a4, a5, a7);
  if (v11)
  {
    return (*(*v11 + 24))(v11);
  }

  return result;
}

void sub_25FF66794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiMultiBlender::flushDeferred(uint64_t this, __n128 a2)
{
  if (*(this + 220))
  {
    v2 = this;
    do
    {
      ++*(v2 + 236);
      LiDrawnRegion::clear((v2 + 160), a2);
      v18 = &unk_28725EFB8;
      v19 = 0;
      v20 = 0;
      v3 = *(v2 + 220);
      if (v3 > 0)
      {
        v4 = 2 * v3 + 1;
      }

      else
      {
        v4 = 0;
      }

      PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::resize(&v18, v3, v4);
      if (*(v2 + 220) >= 1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = *(v2 + 224);
          v8 = v20;
          v9 = *(v20 + v5);
          v10 = *(v7 + v5);
          if (v9 != v10)
          {
            if (v9)
            {
              (*(*v9 + 24))(*(v20 + v5));
              v10 = *(v7 + v5);
            }

            *(v8 + v5) = v10;
            if (v10)
            {
              (*(*v10 + 16))(v10);
            }
          }

          v11 = v8 + v5;
          v12 = *(v7 + v5 + 8);
          *(v11 + 24) = *(v7 + v5 + 24);
          *(v11 + 8) = v12;
          ++v6;
          v5 += 32;
        }

        while (v6 < *(v2 + 220));
      }

      if (*(v2 + 216) < 0)
      {
        v13 = 1;
      }

      else
      {
        v13 = *(v2 + 216);
      }

      PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::resize(v2 + 208, 0, v13);
      LiDrawnRegion::clear((v2 + 184), v14);
      if (SHIDWORD(v19) >= 1)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          (*(*v2 + 56))(v2, v20 + v15);
          ++v16;
          v15 += 32;
        }

        while (v16 < SHIDWORD(v19));
      }

      v18 = &unk_28725EFB8;
      if (v19 < 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = v19;
      }

      PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::resize(&v18, 0, v17);
      this = v20;
      if (v20)
      {
        this = MEMORY[0x2666E9ED0](v20, 0x1000C8077774924);
      }
    }

    while (*(v2 + 220));
  }

  return this;
}

void sub_25FF66A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::~PCArray(va);
  _Unwind_Resume(a1);
}

HGHWMultiBlend *LiMultiBlender::getOutput@<X0>(LiMultiBlender *this@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  LiMultiBlender::flushDeferred(this, a3);
  v5 = *(this + 11);
  if (v5)
  {
    goto LABEL_19;
  }

  if (*(this + 30) && *(this + 32) < 1.0)
  {
    LiMultiBlender::makeMultiBlend(this, &v16);
    v6 = *(this + 11);
    v7 = v16;
    if (v6 == v16)
    {
      if (v6)
      {
        (*(*v16 + 24))(v16);
      }
    }

    else
    {
      if (v6)
      {
        (*(*v6 + 24))(v6);
      }

      *(this + 11) = v7;
    }

    *(this + 59) = 0;
    v8 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v8);
    if (*(this + 274) == 1)
    {
      v9 = *(this + 59);
    }

    else
    {
      v9 = 0;
    }

    LiMultiBlender::addToMultiBlender(this, 0, v8, 9, v9, 1, 1.0);
    v10 = *(this + 59);
    *(this + 59) = v10 + 1;
    v11 = *(this + 24);
    if (*(this + 274))
    {
      v13 = (v10 + 1);
    }

    else
    {
      v13 = v11;
    }

    v12 = *(this + 32);
    LiMultiBlender::addToMultiBlender(this, v11, *(this + 30), 9, v13, 1, v12);
    ++*(this + 24);
    if (v8)
    {
      (*(*v8 + 24))(v8);
    }
  }

  v5 = *(this + 11);
  if (v5)
  {
LABEL_19:
    *(this + 273) = 1;
    v16 = v5;
    (*(*v5 + 16))(v5);
    conformWithToneMap((this + 104), &v16, (this + 56), a2);
    result = v16;
    if (v16)
    {
      return (*(*v16 + 24))(v16);
    }
  }

  else
  {
    result = *(this + 30);
    *a2 = result;
    if (result)
    {
      v15 = *(*result + 16);

      return v15();
    }
  }

  return result;
}

void sub_25FF66CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiMultiBlender::makeMultiBlend@<X0>(LiMultiBlender *this@<X0>, HGHWMultiBlend **a2@<X8>)
{
  v4 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v4);
  *a2 = v4;
  return (*(*v4 + 96))(v4, 5, *(this + 13), 0.0, 0.0, 0.0);
}

void LiMultiBlender::addPatch()
{
  v0 = HGObject::operator new(0x1A0uLL);
  *v0 = 0u;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  *(v0 + 4) = 0u;
  *(v0 + 5) = 0u;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  *(v0 + 10) = 0u;
  *(v0 + 11) = 0u;
  *(v0 + 12) = 0u;
  *(v0 + 13) = 0u;
  *(v0 + 14) = 0u;
  *(v0 + 15) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 17) = 0u;
  *(v0 + 18) = 0u;
  *(v0 + 19) = 0u;
  *(v0 + 20) = 0u;
  *(v0 + 21) = 0u;
  *(v0 + 22) = 0u;
  *(v0 + 23) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 25) = 0u;
  LiHeMixShader::LiHeMixShader(v0);
}

void sub_25FF67134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  (*(*v12 + 24))(v12);
  _Unwind_Resume(a1);
}

CGColorSpace **LiCompositor::getHelium@<X0>(LiCompositor *this@<X0>, LiAgent *a2@<X1>, CGColorSpace **a3@<X8>)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  CGColorSpace = FxColorDescription::getCGColorSpace((*(a2 + 6) + 160));
  FxColorDescription::FxColorDescription(&v26, RequestedColorDescription, CGColorSpace);
  LiAgent::setActualColorDescription(a2, &v26);
  LiMultiBlender::LiMultiBlender(v23, *(*(a2 + 6) + 192), &v26);
  v23[3] = LiAgent::getHeliumRenderer(a2);
  if (LiAgent::haveROI(a2))
  {
    LiAgent::getROI(a2, v22);
    v24 = v22[0];
    v25 = 1;
  }

  LiAgent::LiAgent(v22, a2);
  LiAgent::setRequestedColorDescription(v22, &v26);
  if (*(this + 5))
  {
    v20 = 0;
    PCSharedCount::PCSharedCount(&v21);
    (*(v23[0] + 16))(v23, this + 40, 0, 0, 0, &v20, 1.0);
    PCSharedCount::~PCSharedCount(&v21);
  }

  else
  {
    v11 = *(this + 3);
    if (v11)
    {
      if (*(this + 48) == 1)
      {
        LiAgent::getHelium(v22, v11, &v19);
        v17 = 0;
        PCSharedCount::PCSharedCount(&v18);
        (*(v23[0] + 16))(v23, &v19, 0, 0, 0, &v17, 1.0);
        PCSharedCount::~PCSharedCount(&v18);
        if (v19)
        {
          (*(*v19 + 24))(v19);
        }
      }
    }
  }

  v8 = *(this + 8);
  if (v8)
  {
    (*(*v8 + 16))(v8, v23);
  }

  (*(v23[0] + 24))(v23);
  if (!*(this + 5))
  {
    v12 = *(this + 3);
    if (v12)
    {
      if ((*(this + 48) & 1) == 0)
      {
        LiAgent::getHelium(v22, v12, &v16);
        blendNodes(&v26, a3, &v16, 0, 0, &v19, *(*(a2 + 6) + 192), 1.0);
        v13 = *a3;
        v14 = v19;
        if (*a3 == v19)
        {
          if (v13)
          {
            (*(*v19 + 24))(v19);
          }
        }

        else
        {
          if (v13)
          {
            (*(*v13 + 24))(v13);
            v14 = v19;
          }

          *a3 = v14;
          v19 = 0;
        }

        if (v16)
        {
          (*(*v16 + 24))(v16);
        }
      }
    }
  }

  if (!*a3)
  {
    v9 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v9);
    v10 = *a3;
    if (*a3 == v9)
    {
      if (v9)
      {
        (*(*v9 + 24))(v9);
      }
    }

    else
    {
      if (v10)
      {
        (*(*v10 + 24))(v10);
      }

      *a3 = v9;
    }
  }

  LiAgent::~LiAgent(v22);
  LiMultiBlender::~LiMultiBlender(v23);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v26._pcColorDesc._colorSpaceRef._obj);
}

void sub_25FF67698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a6)
  {
    (*(*a6 + 24))(a6);
  }

  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  if (*v8)
  {
    (*(**v8 + 24))(*v8);
  }

  LiAgent::~LiAgent(va);
  LiMultiBlender::~LiMultiBlender(&STACK[0x208]);
  PCCFRef<CGColorSpace *>::~PCCFRef((v9 - 80));
  _Unwind_Resume(a1);
}

uint64_t PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::~PCArray(uint64_t a1, __n128 a2)
{
  *a1 = &unk_28725EF80;
  if (*(a1 + 8) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 8);
  }

  PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::resize(a1, 0, v3, a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::~PCArray(uint64_t a1, __n128 a2)
{
  *a1 = &unk_28725EF80;
  if (*(a1 + 8) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 8);
  }

  PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::resize(a1, 0, v3, a2);
  v4 = *(a1 + 16);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::resize(uint64_t a1, int a2, int a3, __n128 a4)
{
  if (a3 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v18, "PCArray::resize");
    PCException::PCException(exception, &v18);
    *exception = &unk_2872DE188;
  }

  if (v4 == *(a1 + 8))
  {
    v7 = *(a1 + 12);
    if (a2 > v7)
    {
      v8 = 20 * v7;
      v9 = a2 - v7;
      do
      {
        LiDrawnRegion::Rect::Rect((*(a1 + 16) + v8));
        v8 += 20;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v4)
    {
      operator new[]();
    }

    v10 = *(a1 + 12);
    if (a2 >= v10)
    {
      v11 = *(a1 + 12);
    }

    else
    {
      v11 = a2;
    }

    if (v11 < 1)
    {
      v11 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        a4 = LiDrawnRegion::Rect::Rect(v12, (v12 + *(a1 + 16)));
        v12 = (v12 + 20);
      }

      while ((20 * v11) != v12);
      v10 = *(a1 + 12);
    }

    if (v11 > v10)
    {
      v10 = v11;
    }

    if (v10 < a2)
    {
      v13 = (20 * v10);
      v14 = a2 - v10;
      do
      {
        a4.n128_f64[0] = LiDrawnRegion::Rect::Rect(v13);
        v13 = (v15 + 20);
        --v14;
      }

      while (v14);
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      MEMORY[0x2666E9ED0](v16, 0x1000C8077774924, a4);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v4;
  *(a1 + 12) = a2;
}

void PCPtr<LiImageSource>::reset(void *a1)
{
  PCSharedCount::PCSharedCount(&v2);
  *a1 = 0;
  PCSharedCount::operator=(&v2, a1 + 1);
  PCSharedCount::~PCSharedCount(&v2);
}

void PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EFB8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<LiMultiBlenderLayer,PCArray_Traits<LiMultiBlenderLayer>>::resize(uint64_t result, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v24, "PCArray::resize");
    PCException::PCException(exception, &v24);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 8))
  {
    v6 = *(result + 12);
    if (v6 <= a2)
    {
      if (v6 < a2)
      {
        v9 = v6;
        v10 = *(result + 16) + 32 * v6 + 16;
        v11 = a2 - v9;
        do
        {
          *(v10 - 16) = 0;
          *(v10 - 8) = 0;
          *v10 = 0x3FF0000000000000;
          *(v10 + 8) = 0;
          v10 += 32;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v7 = 32 * a2;
      v8 = a2;
      do
      {
        result = *(*(v5 + 16) + v7);
        if (result)
        {
          result = (*(*result + 24))(result);
          v6 = *(v5 + 12);
        }

        v7 += 32;
        ++v8;
      }

      while (v6 > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v12 = *(result + 12);
    if (a2 >= v12)
    {
      v13 = *(result + 12);
    }

    else
    {
      v13 = a2;
    }

    if (v13 < 1)
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = *(v5 + 16);
        v16 = *(v15 + v14);
        *v14 = v16;
        if (v16)
        {
          (*(*v16 + 16))(v16);
          v17 = *(*(v5 + 16) + v14);
          v18 = *(v15 + v14 + 24);
          *(v14 + 8) = *(v15 + v14 + 8);
          *(v14 + 24) = v18;
          if (v17)
          {
            (*(*v17 + 24))(v17);
          }
        }

        else
        {
          v19 = *(v15 + v14 + 8);
          *(v14 + 24) = *(v15 + v14 + 24);
          *(v14 + 8) = v19;
        }

        v14 += 32;
      }

      while (32 * v13 != v14);
      v12 = *(v5 + 12);
    }

    if (v13 < v12)
    {
      v20 = 32 * v13;
      do
      {
        v21 = *(*(v5 + 16) + v20);
        if (v21)
        {
          (*(*v21 + 24))(v21);
          v12 = *(v5 + 12);
        }

        v20 += 32;
        ++v13;
      }

      while (v12 > v13);
    }

    if (v13 < a2)
    {
      v22 = 32 * v13 + 16;
      do
      {
        *(v22 - 16) = 0;
        *(v22 - 8) = 0;
        *v22 = 0x3FF0000000000000;
        *(v22 + 8) = 0;
        v22 += 32;
        ++v13;
      }

      while (v13 < a2);
    }

    result = *(v5 + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v5 + 16) = 0;
  }

  *(v5 + 8) = v3;
  *(v5 + 12) = a2;
  return result;
}

void LiDepthSorter::stackSort(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1)
  {
    qsort(*(a1 + 16), v1, 8uLL, stackOrder);
  }
}

uint64_t stackOrder(LiDrawer **a1, LiDrawer **a2)
{
  result = LiDrawer::hasCompositeOrder(*a1);
  if (result)
  {
    result = LiDrawer::hasCompositeOrder(*a2);
    if (result)
    {
      v5 = LiDrawer::compositeOrder(*a1);
      v6 = LiDrawer::compositeOrder(*a2);
      v7 = v5 >= v6 ? 0 : -1;
      result = v5 > v6 ? 1 : v7;
      if (!result)
      {
        v8 = LiDrawer::compositeOrder2(*a1);
        v9 = LiDrawer::compositeOrder2(*a2);
        v10 = v8 >= v9 ? 0 : -1;
        result = v8 > v9 ? 1 : v10;
        if (!result)
        {
          v11 = LiDrawer::compositeOrder3(*a1);
          v12 = LiDrawer::compositeOrder3(*a2);
          v13 = v11 >= v12 ? 0 : -1;
          result = v11 > v12 ? 1 : v13;
          if (!result)
          {
            v14 = *(*a1 + 3);
            v15 = *(*a2 + 3);
            v16 = v14 <= v15;
            if (v14 >= v15)
            {
              v17 = 0;
            }

            else
            {
              v17 = -1;
            }

            if (v16)
            {
              return v17;
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void LiDepthSorter::LiDepthSorter(LiDepthSorter *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28725EFF0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = &unk_28725EFF0;
  *(this + 48) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
}

void LiDepthSorter::~LiDepthSorter(LiDepthSorter *this)
{
  *(this + 3) = &unk_28725F040;
  v2 = *(this + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(this + 9);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 5) + 8 * v4) = 0;
        v5 = __CFADD__(v4++, 1);
      }

      while (!v5);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(this + 5);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(this + 5) = 0;
  }

  *(this + 8) = v3;
  *(this + 9) = 0;
  v7 = *(this + 5);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(this + 5) = 0;
  *(this + 8) = 0;
  *this = &unk_28725F040;
  v8 = *(this + 2);
  if (v8 < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 & ~(v8 >> 31);
  }

  if (v9 == v8)
  {
    v10 = *(this + 3);
    if ((v10 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 2) + 8 * v10) = 0;
        v5 = __CFADD__(v10++, 1);
      }

      while (!v5);
    }
  }

  else
  {
    if (v9)
    {
      operator new[]();
    }

    v11 = *(this + 2);
    if (v11)
    {
      MEMORY[0x2666E9ED0](v11, 0x1000C8077774924);
    }

    *(this + 2) = 0;
  }

  *(this + 2) = v9;
  *(this + 3) = 0;
  v12 = *(this + 2);
  if (v12)
  {
    MEMORY[0x2666E9ED0](v12, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;
}

void LiDepthSorter::sort(LiDepthSorter *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    LiPlaneSplit::LiPlaneSplit(v67);
    v3 = 0;
    v68 = *(this + 48);
    v67[0] = *(this + 7);
    LODWORD(i) = v1 / 2;
LABEL_3:
    v5 = LiPlaneSplit::clear(v67);
    if ((i & 0x80000000) != 0 || *(this + 3) <= i)
    {
      PCArray_base::badIndex(v5);
    }

    v6 = *(*(this + 2) + 8 * i);
    v67[1] = v6;
    v7 = (*(*v6 + 48))(&v58, v6);
    v69 = v61[0] > 0.0;
    if (v1 >= 1)
    {
      v8 = i;
      for (i = 0; v1 != i; ++i)
      {
        if (v8 != i)
        {
          if (i >= *(this + 3))
          {
            PCArray_base::badIndex(v7);
          }

          v67[2] = *(*(this + 2) + 8 * i);
          LiPlaneSplit::compute(v67);
          if (v70 == 3 && (v71 & 1) == 0 && v3 < 0xA)
          {
            ++v3;
            goto LABEL_3;
          }

          v7 = LiPlaneSplit::store(v67, v9, v10, v11, v12, v13, v14, v15);
        }
      }
    }

    if (*(this + 16) <= 299)
    {
      v16 = 1;
      do
      {
        v17 = v16;
        if (v16)
        {
          v18 = 364;
        }

        else
        {
          v18 = 340;
        }

        v19 = *(v67 + v18);
        if (v19 >= 2)
        {
          v58 = &unk_28725EFF0;
          v62 = 0;
          v63 = 0;
          v65 = *(this + 7);
          v20 = *(this + 16);
          v66[0] = v20 + 1;
          if (v20 < 5)
          {
            v21 = *(this + 48);
          }

          else
          {
            v21 = 0;
          }

          v64[0] = v21;
          v22 = 42;
          if (v17)
          {
            v22 = 45;
          }

          v23 = &v67[v22];
          v24 = v67[v22];
          if (v17)
          {
            v25 = 46;
          }

          else
          {
            v25 = 43;
          }

          v26 = *&v67[v25];
          v59 = v24;
          v60 = v19;
          v61[0] = v26;
          *&v61[1] = &unk_28725EFF0;
          *v23 = 0;
          v23[1] = 0;
          LiDepthSorter::sort(&v58);
          v27 = *v23;
          if (*v23 < 0)
          {
            v28 = 1;
          }

          else
          {
            v28 = v27 & ~(v27 >> 31);
          }

          if (v28 == v27)
          {
            v29 = *(v67 + v18);
            if ((v29 & 0x80000000) != 0)
            {
              do
              {
                *(v67[v25] + 8 * v29) = 0;
                v30 = __CFADD__(v29++, 1);
              }

              while (!v30);
            }

            v31 = v67[v25];
          }

          else
          {
            if (v28)
            {
              operator new[]();
            }

            v31 = 0;
            v32 = v67[v25];
            if (v32)
            {
              MEMORY[0x2666E9ED0](v32, 0x1000C8077774924);
            }

            v67[v25] = 0;
          }

          *v23 = v28;
          *(v67 + v18) = 0;
          if (v31)
          {
            MEMORY[0x2666E9ED0](v31, 0x1000C8077774924);
          }

          v33 = v62;
          *(v67 + v18) = HIDWORD(v62);
          *v23 = v33;
          v67[v25] = v63;
          v62 = 0;
          v63 = 0;
          LiDepthSorter::~LiDepthSorter(&v58);
        }

        v16 = 0;
      }

      while ((v17 & 1) != 0);
    }

    v34 = *(this + 8);
    if (v34 < 0)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34 & ~(v34 >> 31);
    }

    if (v35 == v34)
    {
      v36 = *(this + 9);
      v37 = v6;
      if ((v36 & 0x80000000) != 0)
      {
        do
        {
          *(*(this + 5) + 8 * v36) = 0;
          v30 = __CFADD__(v36++, 1);
        }

        while (!v30);
      }
    }

    else
    {
      v37 = v6;
      if (v35)
      {
        operator new[]();
      }

      v38 = *(this + 5);
      if (v38)
      {
        MEMORY[0x2666E9ED0](v38, 0x1000C8077774924);
      }

      *(this + 5) = 0;
    }

    *(this + 8) = v35;
    *(this + 9) = 0;
    v39 = *(this + 5);
    if (v39)
    {
      MEMORY[0x2666E9ED0](v39, 0x1000C8077774924);
    }

    v40 = v73;
    v41 = HIDWORD(v73);
    *(this + 8) = v73;
    *(this + 9) = v41;
    *(this + 5) = v74;
    v73 = 0;
    v74 = 0;
    if (__nel[0])
    {
      if (v80 <= __nel[0])
      {
        v42 = 2 * (__nel[0] + 1) + 1;
      }

      else
      {
        v42 = v80;
      }

      PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(&v79, __nel[0] + 1, v42);
      v43 = __nel[0];
      *(*&__nel[1] + 8 * __nel[0] - 8) = v37;
      if (v43)
      {
        qsort(*&__nel[1], v43, 8uLL, stackOrder);
      }

      PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::append(this + 24, &v79);
    }

    else
    {
      if (v40 <= v41)
      {
        v44 = 2 * (v41 + 1) + 1;
      }

      else
      {
        v44 = v40;
      }

      PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(this + 24, v41 + 1, v44);
      *(*(this + 5) + 8 * *(this + 9) - 8) = v37;
    }

    PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::append(this + 24, &v75);
    v79 = &unk_28725F040;
    if (v80 < 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = v80 & ~(v80 >> 31);
    }

    if (v45 == v80)
    {
      v46 = __nel[0];
      if ((__nel[0] & 0x80000000) != 0)
      {
        do
        {
          *(*&__nel[1] + 8 * v46) = 0;
          v30 = __CFADD__(v46++, 1);
        }

        while (!v30);
      }
    }

    else
    {
      if (v45)
      {
        operator new[]();
      }

      if (*&__nel[1])
      {
        MEMORY[0x2666E9ED0](*&__nel[1], 0x1000C8077774924);
      }

      *&__nel[1] = 0;
    }

    v80 = v45;
    __nel[0] = 0;
    if (*&__nel[1])
    {
      MEMORY[0x2666E9ED0](*&__nel[1], 0x1000C8077774924);
    }

    *&__nel[1] = 0;
    v80 = 0;
    v75 = &unk_28725F040;
    if (v76 < 0)
    {
      v47 = 1;
    }

    else
    {
      v47 = v76 & ~(v76 >> 31);
    }

    if (v47 == v76)
    {
      v48 = v77;
      if (v77 < 0)
      {
        do
        {
          *(v78 + 8 * v48) = 0;
          v30 = __CFADD__(v48++, 1);
        }

        while (!v30);
      }
    }

    else
    {
      if (v47)
      {
        operator new[]();
      }

      if (v78)
      {
        MEMORY[0x2666E9ED0](v78, 0x1000C8077774924);
      }

      v78 = 0;
    }

    v76 = v47;
    v77 = 0;
    if (v78)
    {
      MEMORY[0x2666E9ED0](v78, 0x1000C8077774924);
    }

    v78 = 0;
    v76 = 0;
    v72 = &unk_28725F040;
    if (v73 < 0)
    {
      v49 = 1;
    }

    else
    {
      v49 = v73 & ~(v73 >> 31);
    }

    if (v49 == v73)
    {
      v50 = SHIDWORD(v73);
      if (v73 < 0)
      {
        do
        {
          *(v74 + 8 * v50) = 0;
          v30 = __CFADD__(v50++, 1);
        }

        while (!v30);
      }

      v51 = v74;
    }

    else
    {
      if (v49)
      {
        operator new[]();
      }

      v51 = 0;
      if (v74)
      {
        MEMORY[0x2666E9ED0](v74, 0x1000C8077774924);
      }

      v74 = 0;
    }

    v73 = v49;
    if (v51)
    {
      MEMORY[0x2666E9ED0](v51, 0x1000C8077774924);
    }

    v74 = 0;
    LODWORD(v73) = 0;
    for (j = 312; j != 88; j -= 112)
    {
      v53 = *&v66[j / 4];
      if (v53)
      {
        v67[j / 8] = v53;
        operator delete(v53);
      }

      v54 = *&v64[j - 8];
      if (v54)
      {
        *&v64[j] = v54;
        operator delete(v54);
      }

      v55 = &v67[j / 8];
      v56 = v61[j / 8];
      if (v56 != 0.0)
      {
        *(v55 - 6) = v56;
        operator delete(*&v56);
      }

      v57 = *(v55 - 10);
      if (v57)
      {
        *(&v58 + j) = v57;
        operator delete(v57);
      }
    }
  }
}

void sub_25FF68A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  LiPlaneSplit::~LiPlaneSplit(va);
  _Unwind_Resume(a1);
}

uint64_t PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::append(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  v5 = *(a2 + 12) + v4;
  if (*(a1 + 8) < v5)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  result = PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(a1, v5, v6);
  v8 = *(a2 + 12);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = 8 * v4;
    v11 = 8 * v8;
    do
    {
      *(*(a1 + 16) + v10) = *(*(a2 + 16) + v9);
      v10 += 8;
      v9 += 8;
    }

    while (v11 != v9);
  }

  return result;
}

void PCPtrArray<LiDrawer>::~PCPtrArray(uint64_t a1)
{
  *a1 = &unk_28725F040;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725F040;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void LiPlaneSplit::~LiPlaneSplit(LiPlaneSplit *this)
{
  PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::~PCArray(this + 376);
  PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::~PCArray(this + 352);
  PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::~PCArray(this + 328);
  for (i = 216; i != -8; i -= 112)
  {
    LiShard::~LiShard((this + i));
  }
}

void LiShard::~LiShard(LiShard *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void LiDrawer::LiDrawer(LiDrawer *this)
{
  *this = &unk_28725F060;
  *(this + 8) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_28725F208;
}

void LiDrawer::~LiDrawer(LiDrawer *this)
{
  *this = &unk_28725F060;
  *(this + 3) = &unk_28725F258;
  v2 = *(this + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(this + 9);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 5) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(this + 5);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(this + 5) = 0;
  }

  *(this + 8) = v3;
  *(this + 9) = 0;
  v7 = *(this + 5);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(this + 5) = 0;
  *(this + 8) = 0;
}

uint64_t PCPtrArray<LiSeam>::~PCPtrArray(uint64_t a1)
{
  *a1 = &unk_28725F258;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void LiDrawer::dump(LiDrawer *this, const char **a2)
{
  if (*a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  v5 = MEMORY[0x277D82670];
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], v3, v4);
  (*(*this + 88))(&v9, this);
  if (v9)
  {
    v6 = v9;
  }

  else
  {
    v6 = "";
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "\n", 1);
  if (v9 && atomic_fetch_add(v9 - 3, 0xFFFFFFFF) == 1)
  {
    *v9 = 0;
    if (v9)
    {
      v8 = (v9 - 12);
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }
}

void sub_25FF691C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::VertexProgram::VertexProgram(a10, &a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiDrawer::compositeOrder(LiDrawer *this)
{
  result = (*(*this + 72))(this);
  if (result)
  {
    v3 = *(result + 528);
    if (*(this + 8))
    {
      return v3;
    }

    else
    {
      return v3 ^ 0x7FFFFFFF;
    }
  }

  return result;
}

uint64_t LiDrawer::compositeOrder2(LiDrawer *this)
{
  result = (*(*this + 72))(this);
  if (result)
  {
    v3 = result;
    result = *(result + 532);
    if (*(v3 + 540) == 1)
    {
      if (*(this + 8))
      {
        return result;
      }

      else
      {
        return result ^ 0x7FFFFFFF;
      }
    }
  }

  return result;
}

uint64_t LiDrawer::compositeOrder3(LiDrawer *this)
{
  result = (*(*this + 72))(this);
  if (result)
  {
    v3 = *(result + 536);
    if (*(this + 8))
    {
      return v3;
    }

    else
    {
      return v3 ^ 0x7FFFFFFF;
    }
  }

  return result;
}

double LiDrawer::getPlane@<D0>(LiDrawer *this@<X0>, _OWORD *a2@<X8>)
{
  if ((*(*this + 40))(this))
  {
    v4 = *(*(*(*this + 32))(this) + 24);

    v4();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *LiDrawer::getBox@<X0>(LiDrawer *this@<X0>, double *a2@<X8>)
{
  v4 = (*(*this + 32))(this);
  result = (*(*this + 48))(&v28, this);
  v6 = *(v4 + 88);
  v7 = *v6;
  v8 = v6[1] - *v6;
  if ((v8 >> 5) < 1)
  {
    v15 = 1.0;
    v16 = -1.0;
    v14 = -1.0;
    v13 = 1.0;
    v11 = -1.0;
    v12 = 1.0;
  }

  else
  {
    v9 = (v8 >> 5) & 0x7FFFFFFF;
    v10 = (v7 + 8);
    v11 = -1.0;
    v12 = 1.0;
    v13 = 1.0;
    v14 = -1.0;
    v15 = 1.0;
    v16 = -1.0;
    do
    {
      v17 = *(v10 - 1);
      v18 = *v10;
      v19 = -(v30 + v17 * v28 + *v10 * v29);
      if (v12 >= v17)
      {
        v20 = *(v10 - 1);
      }

      else
      {
        v20 = v12;
      }

      if (v11 <= v17)
      {
        v21 = *(v10 - 1);
      }

      else
      {
        v21 = v11;
      }

      if (v13 >= v18)
      {
        v22 = *v10;
      }

      else
      {
        v22 = v13;
      }

      if (v14 <= v18)
      {
        v23 = *v10;
      }

      else
      {
        v23 = v14;
      }

      if (v15 >= v19)
      {
        v24 = -(v30 + v17 * v28 + *v10 * v29);
      }

      else
      {
        v24 = v15;
      }

      if (v16 <= v19)
      {
        v25 = -(v30 + v17 * v28 + *v10 * v29);
      }

      else
      {
        v25 = v16;
      }

      v27 = v12 <= v11 && v13 <= v14 && v15 <= v16;
      if (v27)
      {
        v16 = v25;
      }

      else
      {
        v16 = -(v30 + v17 * v28 + *v10 * v29);
      }

      if (v27)
      {
        v15 = v24;
      }

      else
      {
        v15 = -(v30 + v17 * v28 + *v10 * v29);
      }

      if (v27)
      {
        v14 = v23;
      }

      else
      {
        v14 = *v10;
      }

      if (v27)
      {
        v13 = v22;
      }

      else
      {
        v13 = *v10;
      }

      if (v27)
      {
        v11 = v21;
      }

      else
      {
        v11 = *(v10 - 1);
      }

      if (v27)
      {
        v12 = v20;
      }

      else
      {
        v12 = *(v10 - 1);
      }

      v10 += 4;
      --v9;
    }

    while (v9);
  }

  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  return result;
}

uint64_t LiDrawer::farAway(LiDrawer *this)
{
  v1 = (*(*this + 72))(this);
  if (v1)
  {
    v2 = *(v1 + 541);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t LiDrawer::addIntersection(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(*v4 + 152);

    return v5();
  }

  else
  {
    v7 = *(a1 + 36);
    if (*(a1 + 32) <= v7)
    {
      v8 = 2 * (v7 + 1) + 1;
    }

    else
    {
      v8 = *(a1 + 32);
    }

    result = PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(a1 + 24, v7 + 1, v8);
    *(*(a1 + 40) + 8 * *(a1 + 36) - 8) = a2;
  }

  return result;
}

uint64_t LiDrawer::getIntersections(LiDrawer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    return (*(*v2 + 160))();
  }

  else
  {
    return this + 24;
  }
}

void LiGroupDrawer::LiGroupDrawer(LiGroupDrawer *this)
{
  *(this + 8) = 1;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = &unk_28725F208;
  *this = &unk_28725F118;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_28725EFF0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 112) = 0;
  LiPolygon::LiPolygon((this + 120));
  *(this + 56) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 46) = 0x3FF0000000000000;
  *(this + 41) = 0x3FF0000000000000;
  *(this + 36) = 0x3FF0000000000000;
  *(this + 31) = 0x3FF0000000000000;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
}

void sub_25FF697E8(_Unwind_Exception *a1)
{
  PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::~PCArray(v2);
  LiDrawer::~LiDrawer(v1);
  _Unwind_Resume(a1);
}

void LiGroupDrawer::~LiGroupDrawer(LiGroupDrawer *this)
{
  *this = &unk_28725F118;
  v2 = *(this + 29);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  LiPolygon::~LiPolygon((this + 120));
  *(this + 7) = &unk_28725F040;
  v3 = *(this + 16);
  if (v3 < 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 & ~(v3 >> 31);
  }

  if (v4 == v3)
  {
    v5 = *(this + 17);
    if ((v5 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 9) + 8 * v5) = 0;
      }

      while (!__CFADD__(v5++, 1));
    }
  }

  else
  {
    if (v4)
    {
      operator new[]();
    }

    v7 = *(this + 9);
    if (v7)
    {
      MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
    }

    *(this + 9) = 0;
  }

  *(this + 16) = v4;
  *(this + 17) = 0;
  v8 = *(this + 9);
  if (v8)
  {
    MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
  }

  *(this + 9) = 0;
  *(this + 16) = 0;

  LiDrawer::~LiDrawer(this);
}

{
  LiGroupDrawer::~LiGroupDrawer(this);

  JUMPOUT(0x2666E9F00);
}

unsigned int *LiGroupDrawer::draw(unsigned int *this, LiBlender *a2)
{
  v2 = this[17];
  if (v2 >= 1)
  {
    v4 = this;
    v5 = v2 - 1;
    do
    {
      if (v5 < 0 || v5 >= v4[17])
      {
        PCArray_base::badIndex(this);
      }

      v6 = *(*(v4 + 9) + 8 * v5);
      this = (*(*v6 + 16))(v6, a2);
      --v5;
    }

    while (v5 != -1);
  }

  return this;
}

uint64_t LiGroupDrawer::add(LiGroupDrawer *this, LiDrawer *a2)
{
  v4 = *(this + 17);
  if (*(this + 16) <= v4)
  {
    v5 = 2 * (v4 + 1) + 1;
  }

  else
  {
    v5 = *(this + 16);
  }

  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(this + 56, v4 + 1, v5);
  *(*(this + 9) + 8 * *(this + 17) - 8) = a2;
  *(this + 112) = 0;
  v6 = *(this + 56);
  if (v6 <= (*(*a2 + 112))(a2))
  {
    result = (*(*a2 + 112))(a2);
  }

  else
  {
    result = *(this + 56);
  }

  *(this + 56) = result;
  return result;
}

uint64_t LiGroupDrawer::add(PCArray_base *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 12);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (i >= *(a2 + 12))
      {
        PCArray_base::badIndex(a1);
      }

      v6 = *(*(a2 + 16) + 8 * i);
      v7 = *(v3 + 56);
      if (v7 <= (*(*v6 + 112))(v6))
      {
        a1 = (*(*v6 + 112))(v6);
      }

      else
      {
        a1 = *(v3 + 56);
      }

      *(v3 + 56) = a1;
    }
  }

  result = PCArray<LiDrawer *,PCArray_Traits_Zero<LiDrawer *>>::append(v3 + 56, a2);
  *(v3 + 112) = 0;
  return result;
}

uint64_t LiGroupDrawer::getBounds(LiGroupDrawer *this)
{
  if ((*(this + 112) & 1) == 0)
  {
    v13[0] = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v13[1] = _Q0;
    v12[0] = 0uLL;
    v12[1] = _Q0;
    v7 = *(this + 17);
    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(this + 17))
        {
          PCArray_base::badIndex(this);
        }

        v9 = *(*(this + 9) + 8 * i);
        v10 = (*(*v9 + 32))(v9);
        bounds<LiPolygon::PosFacet,double>(v10 + 88, v12);
        PCRect<double>::operator|=(v13, v12);
      }
    }

    LiPolygon::set(this + 120, v13[0].f64);
    *(this + 112) = 1;
    LiGroupDrawer::projectBoundsToPlane(this);
  }

  return this + 120;
}

void bounds<LiPolygon::PosFacet,double>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 8) - **a1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 16) = _Q0;
  if ((v2 >> 5) >= 1)
  {
    v10 = 0;
    v11 = (v2 >> 5) & 0x7FFFFFFF;
    do
    {
      v12 = *(**a1 + v10);
      PCRect<double>::operator|=(a2, &v12);
      v10 += 32;
      --v11;
    }

    while (v11);
  }
}

void LiGroupDrawer::projectBoundsToPlane(float64x2_t *this)
{
  if ((*(*&this->f64[0] + 40))(this))
  {
    if (((*&this[12].f64[0] - *&this[11].f64[1]) & 0x1FFFFFFFE0) != 0)
    {
      v2[0] = 0.0;
      v2[1] = 0.0;
      v2[2] = 1.0;
      LiPolygon::projectToPlane(&this[7].f64[1], this + 5, v2);
    }
  }
}

__n128 LiGroupDrawer::getPlane@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[5];
  v3 = this[6];
  *a2 = result;
  a2[1] = v3;
  return result;
}

void LiGroupDrawer::setPlane(float64x2_t *this, float64x2_t *a2)
{
  v2 = a2[1];
  this[5] = *a2;
  this[6] = v2;
  LiGroupDrawer::projectBoundsToPlane(this);
}

void LiGroupDrawer::intersect(LiGroupDrawer *this, LiIntersection *a2)
{
  v4 = *(this + 30);
  if (v4)
  {
    v5 = *(*v4 + 80);

    v5();
  }

  else
  {
    LiPlaneSplit::LiPlaneSplit(v40);
    v7 = *a2;
    v42 = 0;
    v40[0] = *(a2 + 4);
    v40[1] = v7;
    v8 = *(this + 17);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (v9 >= *(this + 17))
        {
          PCArray_base::badIndex(v6);
        }

        v41 = *(*(this + 9) + 8 * v9);
        (*(*v41 + 56))(v41, this + 80);
        LiPlaneSplit::compute(v40);
        if (!((v43 != 3) | v10 & 1))
        {
          v18 = (*(*this + 128))(this);
          if (PCBlend::isAssociative(v18))
          {
            LiGroupDrawer::makePrecomp(this, v18, *(a2 + 4));
          }

          v10 = 1;
        }

        v6 = LiPlaneSplit::store(v40, v11, v12, v13, v14, v15, v16, v17);
        ++v9;
      }

      while (v8 != v9);
    }

    v19 = 0;
    v20 = 1;
    do
    {
      v21 = v20;
      if (v19 >= *(a2 + 5))
      {
        PCArray_base::badIndex(v6);
      }

      if (v20)
      {
        v22 = 340;
      }

      else
      {
        v22 = 364;
      }

      v23 = *(v40 + v22);
      if (v23)
      {
        v24 = *(*(a2 + 3) + 8 * v19);
        if (v23 != 1)
        {
          operator new();
        }

        v25 = 46;
        if (v21)
        {
          v25 = 43;
        }

        v26 = *v40[v25];
        *(v24 + 8) = v26;
        v6 = (*(*v26 + 56))(v26, this + 80);
      }

      v20 = 0;
      v19 = 1;
    }

    while ((v21 & 1) != 0);
    v52 = &unk_28725F040;
    if (v53 < 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = v53 & ~(v53 >> 31);
    }

    if (v27 == v53)
    {
      v28 = v54;
      if (v54 < 0)
      {
        do
        {
          *(v55 + 8 * v28) = 0;
          v29 = __CFADD__(v28++, 1);
        }

        while (!v29);
      }
    }

    else
    {
      if (v27)
      {
        operator new[]();
      }

      if (v55)
      {
        MEMORY[0x2666E9ED0](v55, 0x1000C8077774924);
      }

      v55 = 0;
    }

    v53 = v27;
    v54 = 0;
    if (v55)
    {
      MEMORY[0x2666E9ED0](v55, 0x1000C8077774924);
    }

    v55 = 0;
    v53 = 0;
    v48 = &unk_28725F040;
    if (v49 < 0)
    {
      v30 = 1;
    }

    else
    {
      v30 = v49 & ~(v49 >> 31);
    }

    if (v30 == v49)
    {
      v31 = v50;
      if (v50 < 0)
      {
        do
        {
          *(v51 + 8 * v31) = 0;
          v29 = __CFADD__(v31++, 1);
        }

        while (!v29);
      }
    }

    else
    {
      if (v30)
      {
        operator new[]();
      }

      if (v51)
      {
        MEMORY[0x2666E9ED0](v51, 0x1000C8077774924);
      }

      v51 = 0;
    }

    v49 = v30;
    v50 = 0;
    if (v51)
    {
      MEMORY[0x2666E9ED0](v51, 0x1000C8077774924);
    }

    v51 = 0;
    v49 = 0;
    v44 = &unk_28725F040;
    if (v45 < 0)
    {
      v32 = 1;
    }

    else
    {
      v32 = v45 & ~(v45 >> 31);
    }

    if (v32 == v45)
    {
      v33 = v46;
      if (v46 < 0)
      {
        do
        {
          *(v47 + 8 * v33) = 0;
          v29 = __CFADD__(v33++, 1);
        }

        while (!v29);
      }
    }

    else
    {
      if (v32)
      {
        operator new[]();
      }

      if (v47)
      {
        MEMORY[0x2666E9ED0](v47, 0x1000C8077774924);
      }

      v47 = 0;
    }

    v45 = v32;
    v46 = 0;
    if (v47)
    {
      MEMORY[0x2666E9ED0](v47, 0x1000C8077774924);
    }

    v47 = 0;
    v45 = 0;
    for (i = 39; i != 11; i -= 14)
    {
      v35 = v40[i - 1];
      if (v35)
      {
        v40[i] = v35;
        operator delete(v35);
      }

      v36 = v40[i - 4];
      if (v36)
      {
        v40[i - 3] = v36;
        operator delete(v36);
      }

      v37 = &v40[i];
      v38 = v40[i - 7];
      if (v38)
      {
        *(v37 - 6) = v38;
        operator delete(v38);
      }

      v39 = *(v37 - 10);
      if (v39)
      {
        v40[i - 9] = v39;
        operator delete(v39);
      }
    }
  }
}

void sub_25FF6A524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LiPlaneSplit::~LiPlaneSplit(va);
  _Unwind_Resume(a1);
}

void LiGroupDrawer::makePrecomp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a3 + 24))(a3);
  v5 = (*(*a3 + 48))(a3);
  v6 = (*(*a3 + 40))(a3);
  LiBlender::makeBlender(v4, v6, v5, v7);
}

void sub_25FF6A800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void LiGroupDrawer::name(LiGroupDrawer *this@<X0>, void *a2@<X8>)
{
  LiString::LiString(&v24, "group");
  v4 = (*(*this + 72))(this);
  v5 = (v4 + 512);
  if (v4)
  {
    v6 = v5 == &v24;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_13;
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    if (v24)
    {
      v7 = v24 - 3;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  v8 = *v5;
  v24 = v8;
  if (v8)
  {
    atomic_fetch_add(v8 - 3, 1u);
LABEL_13:
    v9 = v24;
    if (v24)
    {
      LODWORD(v8) = *(v24 - 2);
    }

    else
    {
      LODWORD(v8) = 0;
    }

    goto LABEL_17;
  }

  v9 = 0;
LABEL_17:
  v10 = v8;
  v11 = malloc_type_malloc(v8 + 15, 0x10000403E1C8BA9uLL);
  v11[1] = v10 + 2;
  v11[2] = v10 + 3;
  atomic_store(1u, v11);
  v12 = v11 + 3;
  atomic_store(0, v11);
  memcpy(v11 + 3, v9, v10);
  *&v12[v10] = 23328;
  v12[v10 + 2] = 0;
  atomic_fetch_add(v11, 1u);
  LiString::format(*(this + 17), &v23);
  v13 = v11[1];
  v14 = v23;
  if (v23)
  {
    v15 = *(v23 - 2);
  }

  else
  {
    v15 = 0;
  }

  v16 = v13 + v15;
  v17 = malloc_type_malloc(v16 + 13, 0x10000403E1C8BA9uLL);
  v17[1] = v16;
  v17[2] = v16 + 1;
  atomic_store(1u, v17);
  atomic_store(0, v17);
  memcpy(v17 + 3, v12, v13);
  memcpy(v17 + v13 + 12, v14, v15);
  *(v17 + v16 + 12) = 0;
  atomic_fetch_add(v17, 1u);
  v18 = v17[1];
  v19 = malloc_type_malloc(v18 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v19);
  v20 = v19 + 3;
  atomic_store(0, v19);
  v19[1] = v18 + 1;
  v19[2] = v18 + 2;
  memcpy(v19 + 3, v17 + 3, v18);
  *(v20 + v18) = 93;
  *(v20 + v18 + 1) = 0;
  *a2 = v19 + 3;
  atomic_fetch_add(v19, 1u);
  if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
  {
    free(v17);
  }

  if (v23 && atomic_fetch_add(v23 - 3, 0xFFFFFFFF) == 1)
  {
    *v23 = 0;
    if (v23)
    {
      v21 = v23 - 12;
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    free(v11);
  }

  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    if (v24)
    {
      v22 = v24 - 3;
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }
}

void sub_25FF6AB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10)
{
  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    free(v11);
  }

  if (a9 && atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
  {
    *a9 = 0;
    free(a9 - 3);
  }

  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
    {
      *a10 = 0;
      free(a10 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void LiGroupDrawer::dump(LiGroupDrawer *this, const char **a2)
{
  LiDrawer::dump(this, a2);
  v4 = *a2;
  if (v4)
  {
    v5 = *(v4 - 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + 2;
  v7 = malloc_type_malloc(v5 + 15, 0x10000403E1C8BA9uLL);
  v7[1] = v6;
  v7[2] = v5 + 3;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  v9 = memcpy(v7 + 3, v4, v5);
  *(v8 + v5) = 8224;
  *(v8 + v6) = 0;
  v14 = (v7 + 3);
  atomic_fetch_add(v7, 1u);
  v10 = *(this + 17);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if (i >= *(this + 17))
      {
        PCArray_base::badIndex(v9);
      }

      v12 = *(*(this + 9) + 8 * i);
      v9 = (*(*v12 + 96))(v12, &v14);
    }
  }

  if (v14 && atomic_fetch_add(v14 - 3, 0xFFFFFFFF) == 1)
  {
    *v14 = 0;
    if (v14)
    {
      v13 = v14 - 3;
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }
}

void sub_25FF6AD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::VertexProgram::VertexProgram(a10, &a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiGroupDrawer::getBlendMode(LiGroupDrawer *this)
{
  v1 = *(this + 17);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = 0;
    v4 = 48;
    while (1)
    {
      if (v3 >= *(v2 + 17))
      {
        PCArray_base::badIndex(this);
      }

      v5 = *(*(v2 + 9) + 8 * v3);
      this = (*(*v5 + 128))(v5);
      if (this == 48)
      {
        v6 = v4;
      }

      else
      {
        v6 = this;
        this = PCBlend::isAssociative(this);
        if (!this)
        {
          return 34;
        }

        if (v4 != 48)
        {
          v7 = v6 == v4;
          v6 = v4;
          if (!v7)
          {
            return 34;
          }
        }
      }

      ++v3;
      v4 = v6;
      if (v1 == v3)
      {
        return v6;
      }
    }
  }

  return 48;
}

uint64_t LiGroupDrawer::defocus(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v2 = *(***(a1 + 72) + 136);

  return v2();
}

void PCPtrArray<LiSeam>::~PCPtrArray(uint64_t a1)
{
  *a1 = &unk_28725F258;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void LiSolidRenderer::LiSolidRenderer(LiSolidRenderer *this)
{
  *(this + 11) = 0x3FF0000000000000;
  *(this + 6) = 0x3FF0000000000000;
  *this = &unk_28725F278;
  *(this + 1) = 0x3FF0000000000000;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 22) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 8) = _Q0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 48) = 0x3FF0000000000000;
  *(this + 43) = 0x3FF0000000000000;
  *(this + 38) = 0x3FF0000000000000;
  *(this + 16) = _Q0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 392) = 1;
  *(this + 396) = 0u;
  *(this + 412) = 0u;
  *(this + 107) = 0;
  *(this + 432) = 1;
  *(this + 109) = 0;
  *(this + 55) = 5;
  *(this + 448) = 0;
  *(this + 460) = 0;
  *(this + 114) = 0;
  LiClipSet::LiClipSet((this + 464));
  *(this + 64) = -1;
  *(this + 520) = 0;
  *(this + 131) = 0;
  *(this + 66) = &unk_28725F308;
  *(this + 536) = 0u;
  PCSharedCount::PCSharedCount(this + 69);
  LiDofInfo::LiDofInfo((this + 560));
  *(this + 636) = 0;
  *(this + 95) = 0x3FF0000000000000;
  *(this + 90) = 0x3FF0000000000000;
  *(this + 85) = 0x3FF0000000000000;
  *(this + 80) = 0x3FF0000000000000;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 192) = 0;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  if (LiSolidRenderer::LiSolidRenderer(void)::sGlobalsOnce != -1)
  {
    LiSolidRenderer::LiSolidRenderer();
  }

  *(this + 458) = gSeamlessCubeMap;
}

void sub_25FF6B184(_Unwind_Exception *a1)
{
  PCArray<PCPtr<LiMaterialFilter>,PCArray_Traits<PCPtr<LiMaterialFilter>>>::~PCArray(v2);
  LiClipSet::~LiClipSet((v1 + 464));
  _Unwind_Resume(a1);
}

void LiSolidDofInfo::LiSolidDofInfo(LiSolidDofInfo *this)
{
  LiDofInfo::LiDofInfo(this);
  *(v1 + 76) = 0;
  *(v1 + 200) = 0x3FF0000000000000;
  *(v1 + 160) = 0x3FF0000000000000;
  *(v1 + 120) = 0x3FF0000000000000;
  *(v1 + 80) = 0x3FF0000000000000;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
}

char *___ZN15LiSolidRendererC2Ev_block_invoke()
{
  v0 = ProGL::GL::GL(v6);
  ProGL::GL_Wrap::getIntegerv(v0, 0x8D57u, &gMaxSamples);
  v1 = log2f(0.0);
  v2 = exp2f(floorf(v1));
  if (v2 >= 1024)
  {
    v2 = 1024;
  }

  if (v2 <= 128)
  {
    v2 = 128;
  }

  gTileSize = v2;
  ProGL::Framebuffer::Framebuffer(v5, v6);
  if (gMaxSamples >= 1)
  {
    LiSolidUtils::createMultisampleColorBuffer(v6, gMaxSamples);
  }

  ProGL::Framebuffer::~Framebuffer(v5);
  ProGL::GL::~GL(v6);
  String = glGetString(0x1F03u);
  result = strstr(String, "ARB_seamless_cube_map");
  gSeamlessCubeMap = result != 0;
  return result;
}

void sub_25FF6B334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  if (a6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a6);
  }

  ProGL::Framebuffer::~Framebuffer(va);
  ProGL::GL::~GL((v6 - 56));
  _Unwind_Resume(a1);
}

void LiSolidRenderer::~LiSolidRenderer(LiSolidRenderer *this)
{
  *this = &unk_28725F278;
  v2 = this + 528;
  *(this + 66) = &unk_28725F308;
  if (*(this + 134) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 134);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(v2, 0, v3);
  v4 = *(this + 68);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(this + 68) = 0;
  *(this + 134) = 0;
  LiClipSet::~LiClipSet((this + 464));
}

{
  LiSolidRenderer::~LiSolidRenderer(this);

  JUMPOUT(0x2666E9F00);
}

void LiSolidRenderer::setupTile(LiSolidRenderer *this, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  ProGL::GL::GL(v39);
  v16 = *(this + 50);
  v17 = *(this + 51);
  v18 = *(this + 52);
  v19 = *(this + 53);
  glClearColor(v16, v17, v18, v19);
  glDepthMask(1u);
  glClear(0x4100u);
  v20 = a8 + a8;
  v21 = v20 + a4;
  v22 = v20 + a5;
  glViewport(0, 0, v21, v22);
  v23 = *(this + 88);
  v35 = *(this + 72);
  v36 = v23;
  v24 = *(this + 120);
  v37 = *(this + 104);
  v38 = v24;
  v25 = *(this + 24);
  v31 = *(this + 8);
  v32 = v25;
  v27 = *(this + 56);
  v33 = *(this + 40);
  v26.f64[1] = v33.f64[1];
  v34 = v27;
  v26.f64[0] = 1.0 - 1.0 / (a6 / a4) - ((a4 * a2) + (a4 * a2)) / a6;
  v29 = a6 / v21;
  v30 = a7 / v22;
  PCMatrix44Tmpl<double>::leftTranslate(&v31, v26, 1.0 - 1.0 / (a7 / a5) - ((a5 * a3) + (a5 * a3)) / a7, 0.0);
  if (v29 != 1.0)
  {
    v31 = vmulq_n_f64(v31, v29);
    v32 = vmulq_n_f64(v32, v29);
  }

  if (v30 != 1.0)
  {
    v33 = vmulq_n_f64(v33, v30);
    v34 = vmulq_n_f64(v34, v30);
  }

  LiSolidUtils::getGLRenderer(v39, v28);
  ProGL::GL::~GL(v39);
}

void LiSolidRenderer::renderTile(LiSolidRenderer *this, LiSceneObject *a2, const LiTextureCoordinator *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v65 = *MEMORY[0x277D85DE8];
  ProGL::GL::GL(v63);
  if (*(this + 432) == 1)
  {
    (*(*this + 40))(this, a6, a7, a8, a9, a10, a11, *(this + 99));
  }

  v17 = *(this + 192);
  if (v17 == 49)
  {
    glEnable(0xBE2u);
    glBlendFunc(1u, 0x303u);
    glBlendEquation(0x8006u);
    goto LABEL_7;
  }

  if (v17 == 8)
  {
    glEnable(0xBE2u);
    glBlendFunc(1u, 1u);
LABEL_7:
    glDisable(0xB71u);
    goto LABEL_9;
  }

  glDisable(0xBE2u);
  glEnable(0xB71u);
  glDepthFunc(0x201u);
LABEL_9:
  LiSceneDrawer::LiSceneDrawer(v55);
  v58 = *(this + 459);
  v18 = (this + 136);
  if (v60 != this + 136)
  {
    for (i = 0; i != 16; i += 4)
    {
      v20 = &v60[i * 8];
      v21 = *&v18[i + 2];
      *v20 = *&v18[i];
      v20[1] = v21;
    }
  }

  v59 = *(this + 460);
  glGetIntegerv(0xBA2u, params);
  v61 = *params;
  v22 = LiSceneDrawer::setIsolatedGroupToRender(v55, *(this + 64));
  LiSolidRenderer::setupClipPlanes(v22, v23, (this + 464));
  LiSolidRenderer::setupFilters(this);
  v24 = 0;
  v25 = *(this + 120);
  v53 = *(this + 104);
  v54 = v25;
  v26 = *(this + 88);
  v52[4] = *(this + 72);
  v52[5] = v26;
  v27 = *(this + 24);
  v52[0] = *(this + 8);
  v52[1] = v27;
  v28 = *(this + 56);
  v52[2] = *(this + 40);
  v52[3] = v28;
  v29 = 1.0 / sqrt(*&v53 * *&v53 + *(&v53 + 1) * *(&v53 + 1) + *&v54 * *&v54 + *(&v54 + 1) * *(&v54 + 1));
  v30 = v52;
  do
  {
    for (j = 0; j != 2; ++j)
    {
      v30[j] = vmulq_n_f64(v30[j], v29);
    }

    ++v24;
    v30 += 2;
  }

  while (v24 != 4);
  v32 = 0;
  v51[0] = 0x3FF0000000000000;
  memset(&v51[1], 0, 24);
  v51[4] = 0x3FF0000000000000;
  memset(&v51[5], 0, 24);
  v33 = v52;
  v51[8] = 0x3FF0000000000000;
  do
  {
    v34 = &v51[v32];
    *v34 = *v33;
    v34[2] = *(v33 + 2);
    v32 += 3;
    v33 += 2;
  }

  while (v32 != 9);
  v35 = 0;
  v44[0] = 1.0;
  memset(&v44[1], 0, 24);
  v44[4] = 1.0;
  memset(&v44[5], 0, 24);
  v44[8] = 1.0;
  do
  {
    v36 = &v44[v35];
    *v36 = *v18;
    v36[2] = v18[2];
    v35 += 3;
    v18 += 4;
  }

  while (v35 != 9);
  PCMatrix33Tmpl<double>::operator*(v51, v44, &v45);
  *&v37.f64[0] = vdupq_laneq_s64(v50, 1).u64[0];
  v37.f64[1] = v49;
  *&v38.f64[0] = vdupq_laneq_s64(v48, 1).u64[0];
  v38.f64[1] = v47;
  if (((v46 * (v47 * *v50.i64 - v49 * *v48.i64) + vaddvq_f64(vmulq_f64(v45, vsubq_f64(vmulq_f64(v48, v37), vmulq_f64(v50, v38)))) > 0.0) ^ *(this + 456)))
  {
    v39 = 2304;
  }

  else
  {
    v39 = 2305;
  }

  glFrontFace(v39);
  if (*(this + 138) > 0)
  {
    if ((*(this + 456) & 1) == 0)
    {
      if ((*(this + 520) & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

LABEL_28:
    glDisable(0x8037u);
    glEnable(0xB44u);
    if (*(this + 457))
    {
      v40 = 1028;
    }

    else
    {
      v40 = 1029;
    }

    goto LABEL_34;
  }

  if (*(this + 456))
  {
    goto LABEL_28;
  }

  if ((*(this + 520) & 1) == 0)
  {
    if (*(this + 192) == 8)
    {
LABEL_36:
      glDisable(0xB44u);
      goto LABEL_37;
    }

    glEnable(0xB44u);
    glDisable(0x8037u);
    goto LABEL_33;
  }

LABEL_32:
  glEnable(0xB44u);
LABEL_33:
  v40 = 1029;
LABEL_34:
  glCullFace(v40);
LABEL_37:
  v41 = (this + 552);
  v62 = a3;
  v56 = *(this + 111);
  if (v56 != 1 || *v41 > 1 || (*(this + 520) & 1) != 0)
  {
    v42 = *(this + 456);
  }

  else
  {
    v42 = 1;
  }

  v57 = v42;
  LiSceneDrawer::beginRender(v55, a2, this + 464, (this + 776), v41, this + 65, this + 528);
  glDisable(0xB71u);
  glDisable(0xB44u);
  LiSolidUtils::getGLRenderer(v63, v43);
  LiSceneDrawer::~LiSceneDrawer(v55);
  ProGL::GL::~GL(v63);
}