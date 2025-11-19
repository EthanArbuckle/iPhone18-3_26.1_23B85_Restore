void *ProShade::ConstVector::getValue(ProShade::ConstVector *this, ProShade::Value *a2)
{
  v5 = *(this + 6);
  v4 = *(this + 7);
  *a2 = v5;
  *(a2 + 1) = v4;
  Size = ProShade::shapeGetSize(v4, a2);
  result = ProShade::copyData(3, this + 6, v5, a2 + 16, Size);
  *(a2 + 1) = -1;
  return result;
}

void *ProShade::ConstVector::computeValue(uint64_t a1, const PCString *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  *a3 = v6;
  *(a3 + 4) = v5;
  Size = ProShade::shapeGetSize(v5, a2);
  result = ProShade::copyData(3, (a1 + 48), v6, (a3 + 16), Size);
  *(a3 + 8) = -1;
  return result;
}

ProShade::ConstMatrix *ProShade::ConstMatrix::ConstMatrix(ProShade::ConstMatrix *this)
{
  *(this + 22) = &unk_2872DEA38;
  *(this + 23) = 0;
  *(this + 192) = 1;
  ProShade::Node::Node(this, &off_287272860);
  *this = &unk_287272730;
  *(this + 21) = 0x3FF0000000000000;
  *(this + 22) = &unk_287272838;
  *(this + 16) = 0x3FF0000000000000;
  *(this + 11) = 0x3FF0000000000000;
  *(this + 6) = 0x3FF0000000000000;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  return this;
}

void sub_26004F9D0(_Unwind_Exception *a1)
{
  *(v1 + 176) = v2;
  *(v1 + 192) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::ConstMatrix::repr(ProShade::ConstMatrix *this@<X0>, void *a2@<X8>)
{
  v4 = 0;
  v25 = 0;
  v5 = this + 48;
LABEL_2:
  v6 = 0;
  while (1)
  {
    LiString::format(*&v5[v6], &__src);
    if (__src)
    {
      v7 = *(__src - 2);
    }

    else
    {
      v7 = 0;
    }

    LiString::append(&v25, __src, v7);
    if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
    {
      *__src = 0;
      if (__src)
      {
        v8 = __src - 12;
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    if (v4 == 3 && v6 == 96)
    {
      break;
    }

    LiString::append(&v25, ", ", 2);
    v6 += 32;
    if (v6 == 128)
    {
      ++v4;
      v5 += 8;
      if (v4 != 4)
      {
        goto LABEL_2;
      }

      break;
    }
  }

  ProShade::shapeString(*(this + 7), *(this + 6), &__src);
  v9 = __src;
  if (__src)
  {
    v10 = *(__src - 2);
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
  v15 = v25;
  if (v25)
  {
    v16 = *(v25 - 2);
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
  *a2 = v20 + 3;
  atomic_fetch_add(v20, 1u);
  if (atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    free(v18);
  }

  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    free(v12);
  }

  if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
  {
    *__src = 0;
    if (__src)
    {
      v22 = __src - 12;
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  if (v25 && atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
  {
    *v25 = 0;
    if (v25)
    {
      v23 = v25 - 12;
    }

    else
    {
      v23 = 0;
    }

    free(v23);
  }
}

void sub_26004FCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10)
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

void ProShade::ConstMatrix::inputs(uint64_t a1, uint64_t a2)
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

__n128 ProShade::ConstMatrix::getMat3@<Q0>(ProShade::ConstMatrix *this@<X0>, const PCString *a2@<X1>, void *a3@<X8>)
{
  if (*(this + 7) != 6)
  {
    ProShade::Error<PCException>::raise<char [27]>("can't cast to mat3", a2);
  }

  v3 = 0;
  v4 = (this + 48);
  *a3 = 0x3FF0000000000000;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0x3FF0000000000000;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0x3FF0000000000000;
  do
  {
    v5 = &a3[v3];
    result = *v4;
    *v5 = *v4;
    v5[1].n128_u64[0] = v4[1].n128_u64[0];
    v3 += 3;
    v4 += 2;
  }

  while (v3 != 9);
  return result;
}

__n128 ProShade::ConstMatrix::getMat4@<Q0>(__n128 *this@<X0>, const PCString *a2@<X1>, __n128 *a3@<X8>)
{
  if (this[1].n128_u32[3] != 7)
  {
    ProShade::Error<PCException>::raise<char [27]>("can't cast to mat4", a2);
  }

  v3 = this[8];
  a3[4] = this[7];
  a3[5] = v3;
  v4 = this[10];
  a3[6] = this[9];
  a3[7] = v4;
  v5 = this[4];
  *a3 = this[3];
  a3[1] = v5;
  result = this[5];
  v7 = this[6];
  a3[2] = result;
  a3[3] = v7;
  return result;
}

void ProShade::ConstMatrix::getData(PCArray_base *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 <= 16)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v4 >= 16)
  {
    v6 = v5;
  }

  else
  {
    v6 = 33;
  }

  if (v6 != v4)
  {
    operator new[]();
  }

  v7 = *(a2 + 12);
  if (v7 <= 15)
  {
    bzero((*(a2 + 16) + v7), (15 - v7) + 1);
  }

  v8 = 0;
  *(a2 + 8) = v6;
  *(a2 + 12) = 16;
  v9 = a1 + 48;
  do
  {
    if (v8 >= *(a2 + 12))
    {
      PCArray_base::badIndex(a1);
    }

    *(*(a2 + 16) + v8) = *&v9[8 * v8] != 0.0;
    ++v8;
  }

  while (v8 != 16);
}

{
  v4 = *(a2 + 8);
  if (v4 <= 16)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v4 >= 16)
  {
    v6 = v5;
  }

  else
  {
    v6 = 33;
  }

  if (v6 != v4)
  {
    operator new[]();
  }

  v7 = *(a2 + 12);
  if (v7 <= 15)
  {
    bzero((*(a2 + 16) + 4 * v7), 4 * (15 - v7) + 4);
  }

  v8 = 0;
  *(a2 + 8) = v6;
  *(a2 + 12) = 16;
  v9 = a1 + 48;
  do
  {
    if (v8 >= *(a2 + 12))
    {
      PCArray_base::badIndex(a1);
    }

    *(*(a2 + 16) + 4 * v8) = *&v9[8 * v8];
    ++v8;
  }

  while (v8 != 16);
}

{
  v4 = *(a2 + 8);
  if (v4 <= 16)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v4 >= 16)
  {
    v6 = v5;
  }

  else
  {
    v6 = 33;
  }

  if (v6 != v4)
  {
    operator new[]();
  }

  v7 = *(a2 + 12);
  if (v7 <= 15)
  {
    bzero((*(a2 + 16) + 8 * v7), 8 * (15 - v7) + 8);
  }

  v8 = 0;
  *(a2 + 8) = v6;
  *(a2 + 12) = 16;
  v9 = a1 + 48;
  do
  {
    if (v8 >= *(a2 + 12))
    {
      PCArray_base::badIndex(a1);
    }

    *(*(a2 + 16) + 8 * v8) = *&v9[8 * v8];
    ++v8;
  }

  while (v8 != 16);
}

double ProShade::ConstMatrix::copyFrom(ProShade::Node *this, const ProShade::Node *a2)
{
  if (a2 != this)
  {
    v2 = 0;
    v3 = a2 + 48;
    v4 = this + 48;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *&v4[i] = *&v3[i];
      }

      ++v2;
      v4 += 32;
      v3 += 32;
    }

    while (v2 != 4);
  }

  return ProShade::Node::copyFrom(this, a2);
}

void *ProShade::ConstMatrix::getValue(ProShade::ConstMatrix *this, ProShade::Value *a2)
{
  v5 = *(this + 6);
  v4 = *(this + 7);
  *a2 = v5;
  *(a2 + 1) = v4;
  Size = ProShade::shapeGetSize(v4, a2);
  result = ProShade::copyData(3, this + 6, v5, a2 + 16, Size);
  *(a2 + 1) = -1;
  return result;
}

void *ProShade::ConstMatrix::computeValue(uint64_t a1, const PCString *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  *a3 = v6;
  *(a3 + 4) = v5;
  Size = ProShade::shapeGetSize(v5, a2);
  result = ProShade::copyData(3, (a1 + 48), v6, (a3 + 16), Size);
  *(a3 + 8) = -1;
  return result;
}

ProShade::Ctor *ProShade::Ctor::Ctor(ProShade::Ctor *this)
{
  *(this + 22) = &unk_2872DEA38;
  *(this + 23) = 0;
  *(this + 192) = 1;
  ProShade::Node::Node(this, &off_287272980);
  v2 = 0;
  *this = &unk_2872728A8;
  *(this + 22) = &unk_287272960;
  do
  {
    v3 = this + v2;
    *(v3 + 6) = &unk_28725E328;
    *(v3 + 8) = 0;
    PCSharedCount::PCSharedCount((this + v2 + 72));
    v2 += 32;
  }

  while (v2 != 128);
  return this;
}

void sub_2600505AC(_Unwind_Exception *a1)
{
  *(v1 + 176) = v2;
  *(v1 + 192) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Ctor::makeWidth(int a1@<W0>, const PCString *a2@<X1>, const PCSharedCount *a3@<X2>, PCSharedCount *a4@<X8>)
{
  v5 = a2;
  var0 = a3[2].var0;
  if (!var0)
  {
    throw_PCNullPointerException(1);
  }

  Width = ProShade::shapeGetWidth(*(var0 + 7), a2);
  if (v5 != 1 || Width != 1)
  {
    goto LABEL_11;
  }

  v10 = a3[2].var0;
  if (!v10)
  {
    throw_PCNullPointerException(1);
  }

  if (*(v10 + 6) != a1)
  {
LABEL_11:
    operator new();
  }

  a4->var0 = &unk_28725E328;
  a4[2].var0 = v10;

  PCSharedCount::PCSharedCount(a4 + 3, a3 + 3);
}

uint64_t ProShade::Ctor::Ctor(uint64_t a1, int a2, unsigned int *a3, unsigned int *a4)
{
  *(a1 + 176) = &unk_2872DEA38;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  ProShade::Node::Node(a1, &off_287272980);
  v8 = 0;
  *a1 = &unk_2872728A8;
  *(a1 + 176) = &unk_287272960;
  do
  {
    v9 = a1 + v8;
    *(v9 + 48) = &unk_28725E328;
    *(v9 + 64) = 0;
    PCSharedCount::PCSharedCount((a1 + v8 + 72));
    v8 += 32;
  }

  while (v8 != 128);
  *(a1 + 24) = a2;
  Width = ProShade::shapeGetWidth(a3[7], v10);
  v14 = ProShade::shapeGetWidth(a4[7], v12) + Width;
  if (v14 <= 1)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("at least vec2", v13);
  }

  if (v14 >= 5)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("at most vec4", v13);
  }

  *(a1 + 28) = v14;
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 64), a3);
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 96), a4);
  ProShade::Node::setFrequency(a1);
  return a1;
}

void sub_260050944(_Unwind_Exception *a1)
{
  *(v1 + 176) = v2;
  *(v1 + 192) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Ctor::Ctor(uint64_t a1, int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  *(a1 + 176) = &unk_2872DEA38;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  ProShade::Node::Node(a1, &off_287272980);
  v10 = 0;
  *a1 = &unk_2872728A8;
  *(a1 + 176) = &unk_287272960;
  do
  {
    v11 = a1 + v10;
    *(v11 + 48) = &unk_28725E328;
    *(v11 + 64) = 0;
    PCSharedCount::PCSharedCount((a1 + v10 + 72));
    v10 += 32;
  }

  while (v10 != 128);
  *(a1 + 24) = a2;
  Width = ProShade::shapeGetWidth(a3[7], v12);
  v15 = ProShade::shapeGetWidth(a4[7], v14);
  v18 = v15 + Width + ProShade::shapeGetWidth(a5[7], v16);
  if (v18 <= 2)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("at least vec3", v17);
  }

  if (v18 >= 5)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("at most vec4", v17);
  }

  *(a1 + 28) = v18;
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 64), a3);
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 96), a4);
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 128), a5);
  ProShade::Node::setFrequency(a1);
  return a1;
}

void sub_260050B34(_Unwind_Exception *a1)
{
  *(v1 + 176) = v2;
  *(v1 + 192) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Ctor::Ctor(uint64_t a1, int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  *(a1 + 176) = &unk_2872DEA38;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  ProShade::Node::Node(a1, &off_287272980);
  v12 = 0;
  *a1 = &unk_2872728A8;
  *(a1 + 176) = &unk_287272960;
  do
  {
    v13 = a1 + v12;
    *(v13 + 48) = &unk_28725E328;
    *(v13 + 64) = 0;
    PCSharedCount::PCSharedCount((a1 + v12 + 72));
    v12 += 32;
  }

  while (v12 != 128);
  *(a1 + 24) = a2;
  Width = ProShade::shapeGetWidth(a3[7], v14);
  v17 = ProShade::shapeGetWidth(a4[7], v16);
  v19 = ProShade::shapeGetWidth(a5[7], v18);
  v22 = v17 + Width + v19 + ProShade::shapeGetWidth(a6[7], v20);
  if (v22 <= 3)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("at least vec4", v21);
  }

  if (v22 != 4)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("at most vec4", v21);
  }

  *(a1 + 28) = 4;
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 64), a3);
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 96), a4);
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 128), a5);
  PCPtr<LiImageSource>::operator=<LiImageSource>((a1 + 160), a6);
  ProShade::Node::setFrequency(a1);
  return a1;
}

void sub_260050D44(_Unwind_Exception *a1)
{
  *(v1 + 176) = v2;
  *(v1 + 192) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Ctor::Ctor(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  *(a1 + 176) = &unk_2872DEA38;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  ProShade::Node::Node(a1, &off_287272980);
  v10 = 0;
  *a1 = &unk_2872728A8;
  *(a1 + 176) = &unk_287272960;
  v11 = a1 + 48;
  do
  {
    v12 = a1 + v10;
    *(v12 + 48) = &unk_28725E328;
    *(v12 + 64) = 0;
    PCSharedCount::PCSharedCount((a1 + v10 + 72));
    v10 += 32;
  }

  while (v10 != 128);
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  *(a1 + 44) = a4;
  if (*(a5 + 12) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(v11, (*(a5 + 16) + v13));
      ++v14;
      v11 += 32;
      v13 += 32;
    }

    while (v14 < *(a5 + 12));
  }

  ProShade::Node::setFrequency(a1);
  return a1;
}

void sub_260050EF4(_Unwind_Exception *a1)
{
  v5 = (v1 + 168);
  v6 = v1 + 144;
  v7 = -128;
  do
  {
    v5[-3].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(v5);
    v5 = (v8 - 32);
    v6 -= 32;
    v7 += 32;
  }

  while (v7);
  ProShade::Node::~Node(v1, &off_287272980);
  *(v1 + 176) = v2;
  *(v1 + 192) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Ctor::repr(ProShade::Ctor *this@<X0>, const PCString *a2@<X1>, void *a3@<X8>)
{
  v27 = 0;
  Size = ProShade::shapeGetSize(*(this + 7), a2);
  if (Size >= 1)
  {
    v6 = 0;
    v7 = this + 48;
    v8 = Size;
    do
    {
      if (!*(v7 + 2))
      {
        break;
      }

      if (v6)
      {
        LiString::append(&v27, ", ", 2);
      }

      ProShade::VarT<ProShade::Node>::repr(v7);
      if (__src)
      {
        v9 = *(__src - 2);
      }

      else
      {
        v9 = 0;
      }

      LiString::append(&v27, __src, v9);
      if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
      {
        *__src = 0;
        if (__src)
        {
          v10 = __src - 12;
        }

        else
        {
          v10 = 0;
        }

        free(v10);
      }

      ++v6;
      v7 += 32;
    }

    while (v8 != v6);
  }

  ProShade::shapeString(*(this + 7), *(this + 6), &__src);
  v11 = __src;
  if (__src)
  {
    v12 = *(__src - 2);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = malloc_type_malloc(v12 + 14, 0x10000403E1C8BA9uLL);
  v14[1] = v13 + 1;
  v14[2] = v13 + 2;
  atomic_store(1u, v14);
  v15 = v14 + 3;
  atomic_store(0, v14);
  memcpy(v14 + 3, v11, v13);
  v15[v13] = 40;
  v15[v13 + 1] = 0;
  atomic_fetch_add(v14, 1u);
  v16 = v14[1];
  v17 = v27;
  if (v27)
  {
    v18 = *(v27 - 2);
  }

  else
  {
    v18 = 0;
  }

  v19 = v16 + v18;
  v20 = malloc_type_malloc(v19 + 13, 0x10000403E1C8BA9uLL);
  v20[1] = v19;
  v20[2] = v19 + 1;
  atomic_store(1u, v20);
  atomic_store(0, v20);
  memcpy(v20 + 3, v15, v16);
  memcpy(v20 + v16 + 12, v17, v18);
  *(v20 + v19 + 12) = 0;
  atomic_fetch_add(v20, 1u);
  v21 = v20[1];
  v22 = malloc_type_malloc(v21 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v22);
  v23 = v22 + 3;
  atomic_store(0, v22);
  v22[1] = v21 + 1;
  v22[2] = v21 + 2;
  memcpy(v22 + 3, v20 + 3, v21);
  *(v23 + v21) = 41;
  *(v23 + v21 + 1) = 0;
  *a3 = v22 + 3;
  atomic_fetch_add(v22, 1u);
  if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    free(v20);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (__src && atomic_fetch_add(__src - 3, 0xFFFFFFFF) == 1)
  {
    *__src = 0;
    if (__src)
    {
      v24 = __src - 12;
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  if (v27 && atomic_fetch_add(v27 - 3, 0xFFFFFFFF) == 1)
  {
    *v27 = 0;
    if (v27)
    {
      v25 = v27 - 12;
    }

    else
    {
      v25 = 0;
    }

    free(v25);
  }
}

void sub_26005126C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10)
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

uint64_t ProShade::Ctor::computeHash(ProShade::Ctor *this, int8x8_t *a2)
{
  PCHashWriteStream::writeValue(a2, "Ctor");
  result = ProShade::shapeGetSize(*(this + 7), v4);
  if (result >= 1)
  {
    v6 = this + 48;
    v7 = result;
    do
    {
      if (!*(v6 + 2))
      {
        break;
      }

      ProShade::VarT<ProShade::Node>::hash(v6, &v8);
      result = PCHashWriteStream::writeValue(a2, &v8);
      v6 += 32;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t ProShade::Ctor::inputs(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 0, v4);
  result = ProShade::shapeGetSize(*(a1 + 28), v5);
  if (result >= 1)
  {
    v7 = (a1 + 48);
    v8 = result;
    do
    {
      if (v7[2].var0)
      {
        v9 = *(a2 + 12);
        if (*(a2 + 8) <= v9)
        {
          v10 = 2 * (v9 + 1) + 1;
        }

        else
        {
          v10 = *(a2 + 8);
        }

        PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v9 + 1, v10);
        result = ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + 32 * *(a2 + 12) - 32, v7);
      }

      v7 += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t ProShade::Ctor::apply@<X0>(PCShared_base *a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, char *)@<X1>, PCSharedCount *a3@<X8>)
{
  v6 = 0;
  v7 = 0;
  v17[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v13 = &unk_28725EA68;
  do
  {
    (**a2)(v16, a2, a1 + v6 + 48);
    var0 = v16[2].var0;
    v9 = *(a1 + v6 + 64);
    if (v14 <= SHIDWORD(v14))
    {
      v10 = 2 * (HIDWORD(v14) + 1) + 1;
    }

    else
    {
      v10 = v14;
    }

    PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v13, HIDWORD(v14) + 1, v10);
    ProShade::VarT<ProShade::Node>::operator=(v15 + 32 * SHIDWORD(v14) - 32, v16);
    v7 |= var0 != v9;
    v16[0].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(v17);
    v6 += 32;
  }

  while (v6 != 128);
  if (v7)
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v13 = &unk_28725EA68;
  if (v14 < 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v14;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v13, 0, v11);
  result = v15;
  if (v15)
  {
    return MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
  }

  return result;
}

void sub_260051660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x2666E9F00](v9, 0x10B1C406391F85BLL);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(&a9);
  _Unwind_Resume(a1);
}

double ProShade::Ctor::copyFrom(ProShade::Ctor *this, const ProShade::Ctor *a2)
{
  for (i = 48; i != 176; i += 32)
  {
    ProShade::VarT<ProShade::Node>::operator=(this + i, (a2 + i));
  }

  return ProShade::Node::copyFrom(this, a2);
}

uint64_t ProShade::Ctor::computeValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ProShade::Value::set(a3, *(a1 + 24), *(a1 + 28));
  Size = ProShade::typeGetSize(*a3, v6);
  result = ProShade::shapeGetWidth(*(a1 + 28), v8);
  v11 = result;
  if (*(a2 + 12) >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a3 + 16);
    do
    {
      v15 = (*(a2 + 16) + v12);
      v16 = ProShade::shapeGetSize(HIDWORD(v15->var0), v10);
      v18 = __OFSUB__(v11, v16);
      v11 -= v16;
      if (v11 < 0 != v18)
      {
        ProShade::Error<PCException>::raise<char [27]>("too much data for constructor", v17);
      }

      v19 = v16;
      result = ProShade::copyData(LODWORD(v15->var0), v15 + 2, *a3, v14, v16);
      v14 += v19 * Size;
      ++v13;
      v12 += 144;
    }

    while (v13 < *(a2 + 12));
  }

  *(a3 + 8) = -1;
  if (v11 > 0)
  {
    ProShade::Error<PCException>::raise<char [27]>("too little data for constructor", v10);
  }

  return result;
}

PCSharedCount *ProShade::Varying::Varying(PCSharedCount *this)
{
  this[10].var0 = &unk_2872DEA38;
  this[11].var0 = 0;
  LOBYTE(this[12].var0) = 1;
  ProShade::Node::Node(this, &off_287272A98);
  this->var0 = &unk_2872729C0;
  this[10].var0 = &unk_287272A78;
  this[6].var0 = &unk_28725E328;
  this[8].var0 = 0;
  PCSharedCount::PCSharedCount(this + 9);
  return this;
}

void sub_260051980(_Unwind_Exception *a1)
{
  ProShade::Node::~Node(v1, &off_287272A98);
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

PCSharedCount *ProShade::Varying::Varying(PCSharedCount *this, PC_Sp_counted_base **a2)
{
  this[10].var0 = &unk_2872DEA38;
  this[11].var0 = 0;
  LOBYTE(this[12].var0) = 1;
  ProShade::Node::Node(this, &off_287272A98);
  this->var0 = &unk_2872729C0;
  this[10].var0 = &unk_287272A78;
  ProShade::VarT<ProShade::Node>::VarT(this + 6, a2);
  this[3].var0 = a2[3];
  LODWORD(this[5].var0) = 3;
  return this;
}

void sub_260051A80(_Unwind_Exception *a1)
{
  ProShade::Node::~Node(v1, &off_287272A98);
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Varying::repr(ProShade::Varying *this@<X0>, void *a2@<X8>)
{
  ProShade::VarT<ProShade::Node>::repr(this + 48);
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = malloc_type_malloc(v3 + 21, 0x10000403E1C8BA9uLL);
  *(v4 + 1) = v3 + 8;
  *(v4 + 2) = v3 + 9;
  atomic_store(1u, v4);
  atomic_store(0, v4);
  *(v4 + 12) = 0x28676E6979726176;
  memcpy(v4 + 20, v8, v3);
  v4[v3 + 20] = 0;
  atomic_fetch_add(v4, 1u);
  v5 = *(v4 + 1);
  v6 = malloc_type_malloc(v5 + 14, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v6);
  v7 = v6 + 3;
  atomic_store(0, v6);
  v6[1] = v5 + 1;
  v6[2] = v5 + 2;
  memcpy(v6 + 3, v4 + 12, v5);
  *(v7 + v5) = 41;
  *(v7 + v5 + 1) = 0;
  *a2 = v6 + 3;
  atomic_fetch_add(v6, 1u);
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    free(v4);
  }

  if (v8)
  {
    if (atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
    {
      *v8 = 0;
      free(v8 - 12);
    }
  }
}

void sub_260051C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
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

int8x8_t *ProShade::Varying::computeHash(ProShade::Varying *this, int8x8_t *a2)
{
  PCHashWriteStream::writeValue(a2, "Varying");
  ProShade::VarT<ProShade::Node>::hash(this + 48, &v5);
  return PCHashWriteStream::writeValue(a2, &v5);
}

uint64_t ProShade::Varying::inputs(const PCSharedCount *a1, uint64_t a2)
{
  if (*(a2 + 8) >= 1)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 3;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 1, v4);
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(v5);
  }

  v6 = *(a2 + 16);

  return ProShade::VarT<ProShade::Node>::operator=(v6, a1 + 6);
}

void ProShade::Varying::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v6[1] = *MEMORY[0x277D85DE8];
  (**a2)(v5, a2, a1 + 48);
  if (v5[2] != *(a1 + 8))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v5[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v6);
}

void sub_260051E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x2666E9F00](v5, 0x10B1C40515157B5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::Selector_base::_select(uint64_t a1, const PCString *a2)
{
  v2 = a2;
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = -8;
  if (a2 >= 0x42)
  {
    v3 = 0;
  }

  v4 = a1 + v3;
  if (a2 > 0x41)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_26084E7B8[a2];
  }

  if (v5 <= ProShade::VarT<ProShade::Node>::width(v4, a2))
  {
    v6 = *(v4 + 16);
    if (v6)
    {
    }

    operator new();
  }

  LiString::LiString(&v9, "selector ");
  v7 = ProShade::selection_repr(v2);
  operator+(&v9, v7, v11);
  operator+(v11, " out of range", &v10);
  ProShade::Error<PCBadIndexException>::raise<LiString>(&v10, v8);
}

void sub_2600521A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10)
{
  if (a10 && atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
  {
    *a10 = 0;
    free(a10 - 3);
  }

  v12 = *(v10 - 104);
  if (v12 && atomic_fetch_add((v12 - 12), 0xFFFFFFFF) == 1)
  {
    **(v10 - 104) = 0;
    v13 = *(v10 - 104);
    if (v13)
    {
      v14 = (v13 - 12);
    }

    else
    {
      v14 = 0;
    }

    free(v14);
    *(v10 - 104) = 0;
  }

  if (a9)
  {
    if (atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
    {
      *a9 = 0;
      free(a9 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Error<PCBadIndexException>::raise<LiString>(OZChannelBase *a1, const PCString *a2)
{
  OZChannelBase::setRangeName(a1, a2);
  exception = __cxa_allocate_exception(0x40uLL);
  if (a1->var0)
  {
    var0 = a1->var0;
  }

  else
  {
    var0 = "";
  }

  PCString::PCString(&v5, var0);
  PCException::PCException(exception, &v5);
  *exception = &unk_2872089F8;
}

const char *ProShade::selection_repr(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "";
  }

  else
  {
    return off_279AA9C68[a1];
  }
}

uint64_t ProShade::Selector::Selector(uint64_t a1, PCShared_base *a2, unsigned int a3)
{
  *(a1 + 88) = &unk_2872DEA38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  ProShade::Node::Node(a1, &off_287272BC8);
  *a1 = &unk_287272AF0;
  *(a1 + 88) = &unk_287272BA8;
  ProShade::VarT<ProShade::Node>::VarT((a1 + 48), a2);
  *(a1 + 80) = a3;
  v6 = *(a1 + 64);
  if (!v6)
  {
    throw_PCNullPointerException(1);
  }

  *(a1 + 24) = *(v6 + 24);
  v7 = ProShade::selection_width(a3);
  if (v7 != 1)
  {
    if ((*(v6 + 28) - 5) > 2)
    {
      if ((v7 - 1) < 4)
      {
        goto LABEL_8;
      }
    }

    else if ((v7 - 2) < 3)
    {
      v7 += 3;
      goto LABEL_8;
    }

    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("invalid size", v8);
  }

LABEL_8:
  *(a1 + 28) = v7;
  *(a1 + 40) = *(a2 + 10);
  return a1;
}

void sub_2600524F4(_Unwind_Exception *a1)
{
  *(v1 + 48) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, &off_287272BC8);
  *(v1 + 88) = v2;
  *(v1 + 104) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

PCSharedCount *ProShade::VarT<ProShade::Selector>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_287273580;
  PCSharedCount::~PCSharedCount(a1 + 3);
  return a1;
}

PCSharedCount *ProShade::Selector::Selector(PCSharedCount *this)
{
  this[11].var0 = &unk_2872DEA38;
  this[12].var0 = 0;
  LOBYTE(this[13].var0) = 1;
  ProShade::Node::Node(this, &off_287272BC8);
  this->var0 = &unk_287272AF0;
  this[11].var0 = &unk_287272BA8;
  this[6].var0 = &unk_28725E328;
  this[8].var0 = 0;
  PCSharedCount::PCSharedCount(this + 9);
  return this;
}

void sub_26005266C(_Unwind_Exception *a1)
{
  ProShade::Node::~Node(v1, &off_287272BC8);
  *(v1 + 88) = v2;
  *(v1 + 104) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::selection_width(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return 0;
  }

  else
  {
    return dword_26084E8C0[a1];
  }
}

void ProShade::Selector::repr(ProShade::Selector *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 8);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v4 + 16))(&v20);
  v5 = v20;
  if (v20)
  {
    v6 = *(v20 - 2);
  }

  else
  {
    v6 = 0;
  }

  v7 = malloc_type_malloc(v6 + 14, 0x10000403E1C8BA9uLL);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  atomic_store(1u, v7);
  atomic_store(0, v7);
  *(v7 + 12) = 40;
  memcpy(v7 + 13, v5, v6);
  *(v7 + v6 + 13) = 0;
  atomic_fetch_add(v7, 1u);
  v8 = v7[1];
  v9 = malloc_type_malloc(v8 + 15, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v9);
  v10 = v9 + 3;
  atomic_store(0, v9);
  v9[1] = v8 + 2;
  v9[2] = v8 + 3;
  memcpy(v9 + 3, v7 + 3, v8);
  *&v10[v8] = 11817;
  v10[v8 + 2] = 0;
  atomic_fetch_add(v9, 1u);
  v11 = ProShade::selection_repr(*(this + 20));
  v12 = v11;
  v13 = v9[1];
  if (*v11)
  {
    v14 = 0;
      ;
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  v19 = a2;
  v16 = v13 + v14;
  v17 = malloc_type_malloc(v16 + 13, 0x10000403E1C8BA9uLL);
  v17[1] = v16;
  v17[2] = v16 + 1;
  atomic_store(1u, v17);
  atomic_store(0, v17);
  memcpy(v17 + 3, v10, v13);
  memcpy(v17 + v13 + 12, v12, v14);
  *(v17 + v16 + 12) = 0;
  *v19 = v17 + 3;
  atomic_fetch_add(v17, 1u);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    free(v9);
  }

  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    free(v7);
  }

  if (v20 && atomic_fetch_add(v20 - 3, 0xFFFFFFFF) == 1)
  {
    *v20 = 0;
    if (v20)
    {
      v18 = v20 - 12;
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }
}

void sub_260052914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
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

void ProShade::Selector::description(ProShade::Selector *this@<X0>, void *a2@<X8>)
{
  LiString::LiString(&v13, ".");
  v4 = ProShade::selection_repr(*(this + 20));
  v5 = v4;
  v6 = v13;
  if (v13)
  {
    v7 = *(v13 - 2);
  }

  else
  {
    v7 = 0;
  }

  if (*v4)
  {
    v8 = 0;
      ;
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v10 = v8 + v7;
  v11 = malloc_type_malloc(v10 + 13, 0x10000403E1C8BA9uLL);
  v11[1] = v10;
  v11[2] = v10 + 1;
  atomic_store(1u, v11);
  atomic_store(0, v11);
  memcpy(v11 + 3, v6, v7);
  memcpy(v11 + v7 + 12, v5, v8);
  *(v11 + v10 + 12) = 0;
  *a2 = v11 + 3;
  atomic_fetch_add(v11, 1u);
  if (v13 && atomic_fetch_add(v13 - 3, 0xFFFFFFFF) == 1)
  {
    *v13 = 0;
    if (v13)
    {
      v12 = v13 - 12;
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }
}

void sub_260052ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::VertexProgram::VertexProgram(a10, &a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::Selector::computeHash(ProShade::Selector *this, int8x8_t *a2)
{
  PCHashWriteStream::writeValue(a2, "Selector");
  v4 = *(this + 8);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  v5 = (*(*v4 + 48))(v4, 0);
  PCHashWriteStream::writeValue(a2, v5);
  v6 = *(this + 20);
  v7 = *(*a2 + 48);

  return v7(a2, v6);
}

uint64_t ProShade::Selector::inputs(const PCSharedCount *a1, uint64_t a2)
{
  if (*(a2 + 8) >= 1)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 3;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 1, v4);
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(v5);
  }

  v6 = *(a2 + 16);

  return ProShade::VarT<ProShade::Node>::operator=(v6, a1 + 6);
}

void ProShade::Selector::apply(PCShared_base *a1@<X0>, void (***a2)(void *__return_ptr, void, uint64_t)@<X1>, PCSharedCount *a3@<X8>)
{
  v6[1] = *MEMORY[0x277D85DE8];
  (**a2)(v5, a2, a1 + 48);
  if (v5[2] != *(a1 + 8))
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v5[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v6);
}

void sub_260052D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x2666E9F00](v5, 0x10B1C403008ACEELL);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Selector::computeValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 80);
  if (v6 > 0x41)
  {
    v7 = "";
  }

  else
  {
    v7 = off_279AA9E78[v6];
  }

  ProShade::Value::set(a3, *(a1 + 24), *(a1 + 28));
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(v8);
  }

  v10 = (a3 + 16);
  v11 = *(a2 + 16);
  v12 = v11[1];
  v37 = *v11;
  v13 = *v11;
  Size = ProShade::typeGetSize(*v11, v9);
  v16 = ProShade::shapeGetSize(v12, v15);
  memcpy(v38, v11 + 4, v16 * Size);
  v18 = ProShade::typeGetSize(*a3, v17);
  v21 = ProShade::typeGetSize(v13, v19);
  v22 = *(a1 + 64);
  if (!v22)
  {
    throw_PCNullPointerException(1);
  }

  v23 = *(a1 + 28);
  if ((*(v22 + 28) - 5) >= 3)
  {
    result = ProShade::shapeGetSize(v23, v20);
    if (result >= 1)
    {
      v32 = v18;
      v33 = result;
      do
      {
        v34 = *v7++;
        result = ProShade::copyData(v13, &v38[(v34 - 48) * v21], *a3, v10, 1);
        v10 += v32;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    LODWORD(v25) = ProShade::shapeGetWidth(v23, v20);
    v26 = *(a1 + 64);
    if (!v26)
    {
      throw_PCNullPointerException(1);
    }

    result = ProShade::shapeGetWidth(*(v26 + 28), v24);
    v36 = result;
    if (v25 >= 1)
    {
      v28 = 0;
      v25 = v25;
      v35 = v7;
      do
      {
        v29 = (v7[v28] - 48) * v36 - 48;
        v30 = v25;
        do
        {
          v31 = *v7++;
          result = ProShade::copyData(v37, &v38[(v29 + v31) * v21], *a3, v10, 1);
          v10 += v18;
          --v25;
        }

        while (v25);
        ++v28;
        v25 = v30;
        v7 = v35;
      }

      while (v28 != v30);
    }
  }

  *(a3 + 8) = -1;
  return result;
}

void ProShade::cast(uint64_t a1@<X0>, const PCString *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v9 = ProShade::VarT<ProShade::Node>::width(a1, a2);
  v10 = *(a1 + 16);
  if (v9 == a2)
  {
    if (!v10)
    {
      throw_PCNullPointerException(1);
    }

    if (v10[6] == a3)
    {
      *a4 = &unk_28725E328;
      *(a4 + 8) = *(a1 + 8);
      *(a4 + 16) = v10;

      PCSharedCount::PCSharedCount((a4 + 24), (a1 + 24));
      return;
    }

    goto LABEL_9;
  }

  if (v10)
  {
LABEL_9:
    if (v11)
    {
      var3 = v11->var3;
      if (var3 != 3)
      {
        if (var3 != 2)
        {
          if (var3 == 1)
          {
            v32 = 0;
            v33 = 0;
            v31.var0 = &unk_287264320;
            v13 = (*(v11->var0 + 25))(v11, &v31);
            v15 = HIDWORD(v32);
            if (HIDWORD(v32) == 1 && a2 >= 2)
            {
              v15 = 1;
              do
              {
                if (v15 <= 0)
                {
                  PCArray_base::badIndex(v13);
                }

                v16 = v33;
                if (v32 <= v15)
                {
                  v17 = 2 * (v15 + 1) + 1;
                }

                else
                {
                  v17 = v32;
                }

                PCArray<BOOL,PCArray_Traits<BOOL>>::resize(&v31, v15 + 1, v17);
                v15 = HIDWORD(v32);
                v33[SHIDWORD(v32) - 1] = *v16;
              }

              while (v15 < a2);
            }

            if (v15 == a2)
            {
              ProShade::Const::create();
            }

            ProShade::Error<PCException>::raise<char [27]>("argument mismatch", v14);
          }

          ProShade::Error<PCIllegalArgumentException>::raise(v11, v8);
        }

        v32 = 0;
        v33 = 0;
        v31.var0 = &unk_2871F25E0;
        v21 = (*(v11->var0 + 26))(v11, &v31);
        v23 = HIDWORD(v32);
        if (HIDWORD(v32) == 1 && a2 >= 2)
        {
          v23 = 1;
          do
          {
            if (v23 <= 0)
            {
              PCArray_base::badIndex(v21);
            }

            v24 = v33;
            if (v32 <= v23)
            {
              v25 = 2 * (v23 + 1) + 1;
            }

            else
            {
              v25 = v32;
            }

            PCArray<int,PCArray_Traits<int>>::resize(&v31, v23 + 1, v25);
            *&v33[4 * SHIDWORD(v32) - 4] = *v24;
            v23 = HIDWORD(v32);
          }

          while (SHIDWORD(v32) < a2);
        }

        if (v23 == a2)
        {
          ProShade::Const::create();
        }

        ProShade::Error<PCException>::raise<char [27]>("argument mismatch", v22);
      }

      v32 = 0;
      v33 = 0;
      v31.var0 = &unk_2872642E8;
      v26 = (*(v11->var0 + 27))(v11, &v31);
      v28 = HIDWORD(v32);
      if (HIDWORD(v32) == 1 && a2 >= 2)
      {
        v28 = 1;
        do
        {
          if (v28 <= 0)
          {
            PCArray_base::badIndex(v26);
          }

          v29 = v33;
          if (v32 <= v28)
          {
            v30 = 2 * (v28 + 1) + 1;
          }

          else
          {
            v30 = v32;
          }

          PCArray<double,PCArray_Traits<double>>::resize(&v31, v28 + 1, v30);
          v28 = HIDWORD(v32);
          *&v33[8 * SHIDWORD(v32) - 8] = *v29;
        }

        while (v28 < a2);
      }

      if (v28 == a2)
      {
        ProShade::Const::create();
      }

      ProShade::Error<PCException>::raise<char [27]>("argument mismatch", v27);
    }
  }

  if (ProShade::VarT<ProShade::Node>::width(a1, v8) != 1 && ProShade::VarT<ProShade::Node>::width(a1, v18) != a2)
  {
    ProShade::Error<PCException>::raise<char [27]>("argument mismatch", v19);
  }

  v20 = *(a1 + 16);
  v31.var0 = &unk_28725E328;
  v33 = v20;
  PCSharedCount::PCSharedCount(v34, (a1 + 24));
  ProShade::Ctor::makeWidth(a3, a2, &v31, a4);
  v31.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v34);
}

void sub_2600536E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Vec2::Vec2(PCSharedCount *a1, uint64_t a2, uint64_t a3)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = 0;
  PCSharedCount::PCSharedCount(a1 + 3);
  a1->var0 = &unk_28726ABF0;
  ProShade::Vec2::initVec2(a1, a2, a3);
}

void sub_2600537E8(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Vec2::initVec2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 16);
  if (v6)
  {
    if (v5)
    {
      v8 = v7;
      if (v7)
      {
        v12 = 0;
        v13 = 0;
        v10[2] = 0;
        v11 = &unk_2872642E8;
        v10[0] = &unk_2872642E8;
        v10[1] = 0;
        (*(*v5 + 216))(v5, &v11);
        (*(*v8 + 216))(v8, v10);
        PCArray<double,PCArray_Traits<double>>::append(&v11, v10);
        if (SHIDWORD(v12) > 1)
        {
          if (HIDWORD(v12) == 2)
          {
            ProShade::Const::create();
          }

          ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two many arguments for vec2", v9);
        }

        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two few arguments for vec2", v9);
      }
    }
  }

  operator new();
}

double PCArray<double,PCArray_Traits<double>>::append(uint64_t a1, uint64_t a2)
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

  PCArray<double,PCArray_Traits<double>>::resize(a1, v5, v6);
  v8 = *(a2 + 12);
  if (v8 >= 1)
  {
    v9 = *(a2 + 16);
    v10 = (*(a1 + 16) + 8 * v4);
    do
    {
      v11 = *v9++;
      result = v11;
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

void ProShade::Vec2::checkType(ProShade::Vec2 *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  ProShade::cast(this, 2, 3, v3);
  *(this + 2) = v3[2];
  PCSharedCount::PCSharedCount(&v2, v4);
  PCSharedCount::operator=(this + 3, &v2);
  PCSharedCount::~PCSharedCount(&v2);
  v3[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v4);
}

void sub_260053D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  PCSharedCount::~PCSharedCount(&a9);
  a10 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v10 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Vec3::Vec3(PCSharedCount *a1, const PCString *a2, uint64_t a3)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = 0;
  PCSharedCount::PCSharedCount(a1 + 3);
  a1->var0 = &unk_287268E10;
  ProShade::Vec3::initVec3(a1, a2, a3);
}

void sub_260053DD8(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Vec3::initVec3(uint64_t a1, const PCString *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  var0 = a2[2].var0;
  if (!var0)
  {
    throw_PCNullPointerException(1);
  }

  Width = ProShade::shapeGetWidth(HIDWORD(var0->length), a2);
  v8 = *(a3 + 16);
  if (!v8)
  {
    throw_PCNullPointerException(1);
  }

  if ((ProShade::shapeGetWidth(*(v8 + 28), v6) + Width) <= 2)
  {
    v16 = &unk_28725E328;
    operator new();
  }

  v9 = a2[2].var0;
  if (v9)
  {
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a3 + 16);
  if (v11)
  {
    if (v10)
    {
      v13 = v12;
      if (v12)
      {
        v17 = 0;
        v18 = 0;
        v15[2] = 0;
        v16 = &unk_2872642E8;
        v15[0] = &unk_2872642E8;
        v15[1] = 0;
        (*(*v10 + 216))(v10, &v16);
        (*(*v13 + 216))(v13, v15);
        PCArray<double,PCArray_Traits<double>>::append(&v16, v15);
        if (SHIDWORD(v17) > 2)
        {
          if (HIDWORD(v17) == 3)
          {
            ProShade::Const::create();
          }

          ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two many arguments for vec3", v14);
        }

        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two few arguments for vec3", v14);
      }
    }
  }

  operator new();
}

void sub_2600542AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Vec3::Vec3(PCSharedCount *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = 0;
  PCSharedCount::PCSharedCount(a1 + 3);
  a1->var0 = &unk_287268E10;
  ProShade::Vec3::initVec3(a1, a2, a3, a4);
}

void sub_2600543BC(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Vec3::initVec3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 16);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 16);
  if (v10)
  {
    if (v7)
    {
      if (v9)
      {
        v12 = v11;
        if (v11)
        {
          v18 = 0;
          v19 = 0;
          v16[2] = 0;
          v17 = &unk_2872642E8;
          v16[0] = &unk_2872642E8;
          v16[1] = 0;
          v15[1] = 0;
          v15[2] = 0;
          v15[0] = &unk_2872642E8;
          (*(*v7 + 216))(v7, &v17);
          (*(*v9 + 216))(v9, v16);
          v13 = PCArray<double,PCArray_Traits<double>>::append(&v17, v16);
          (*(*v12 + 216))(v12, v15, v13);
          PCArray<double,PCArray_Traits<double>>::append(&v17, v15);
          if (SHIDWORD(v18) > 2)
          {
            if (HIDWORD(v18) == 3)
            {
              ProShade::Const::create();
            }

            ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two many arguments for vec3", v14);
          }

          ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two few arguments for vec3", v14);
        }
      }
    }
  }

  operator new();
}

void ProShade::Vec3::checkType(ProShade::Vec3 *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  ProShade::cast(this, 3, 3, v3);
  *(this + 2) = v3[2];
  PCSharedCount::PCSharedCount(&v2, v4);
  PCSharedCount::operator=(this + 3, &v2);
  PCSharedCount::~PCSharedCount(&v2);
  v3[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v4);
}

void sub_2600549D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  PCSharedCount::~PCSharedCount(&a9);
  a10 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v10 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Vec4::Vec4(PCSharedCount *a1, const PCString *a2, uint64_t a3)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = 0;
  PCSharedCount::PCSharedCount(a1 + 3);
  a1->var0 = &unk_2872688E0;
  ProShade::Vec4::initVec4(a1, a2, a3);
}

void sub_260054AAC(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Vec4::initVec4(uint64_t a1, const PCString *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  var0 = a2[2].var0;
  if (!var0)
  {
    throw_PCNullPointerException(1);
  }

  Width = ProShade::shapeGetWidth(HIDWORD(var0->length), a2);
  v8 = *(a3 + 16);
  if (!v8)
  {
    throw_PCNullPointerException(1);
  }

  if ((ProShade::shapeGetWidth(*(v8 + 28), v6) + Width) <= 3)
  {
    v16 = &unk_28725E328;
    operator new();
  }

  v9 = a2[2].var0;
  if (v9)
  {
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a3 + 16);
  if (v11)
  {
    if (v10)
    {
      v13 = v12;
      if (v12)
      {
        v17 = 0;
        v18 = 0;
        v15[2] = 0;
        v16 = &unk_2872642E8;
        v15[0] = &unk_2872642E8;
        v15[1] = 0;
        (*(*v10 + 216))(v10, &v16);
        (*(*v13 + 216))(v13, v15);
        PCArray<double,PCArray_Traits<double>>::append(&v16, v15);
        if (SHIDWORD(v17) > 3)
        {
          if (HIDWORD(v17) == 4)
          {
            ProShade::Const::create();
          }

          ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two many arguments for vec4", v14);
        }

        ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two few arguments for vec4", v14);
      }
    }
  }

  operator new();
}

void sub_260054F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Vec4::Vec4(PCSharedCount *a1, const PCString *a2, uint64_t a3, uint64_t a4)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = 0;
  PCSharedCount::PCSharedCount(a1 + 3);
  a1->var0 = &unk_2872688E0;
  ProShade::Vec4::initVec4(a1, a2, a3, a4);
}

void sub_260055090(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Vec4::initVec4(uint64_t a1, const PCString *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  var0 = a2[2].var0;
  if (!var0)
  {
    throw_PCNullPointerException(1);
  }

  Width = ProShade::shapeGetWidth(HIDWORD(var0->length), a2);
  v10 = *(a3 + 16);
  if (!v10)
  {
    throw_PCNullPointerException(1);
  }

  v12 = ProShade::shapeGetWidth(*(v10 + 28), v8) + Width;
  v13 = *(a4 + 16);
  if (!v13)
  {
    throw_PCNullPointerException(1);
  }

  if ((v12 + ProShade::shapeGetWidth(*(v13 + 28), v11)) <= 3)
  {
    v25 = &unk_28725E328;
    operator new();
  }

  v14 = a2[2].var0;
  if (v14)
  {
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a3 + 16);
  if (v16)
  {
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a4 + 16);
  if (v18)
  {
    if (v15)
    {
      if (v17)
      {
        v20 = v19;
        if (v19)
        {
          v26 = 0;
          v27 = 0;
          v24[2] = 0;
          v25 = &unk_2872642E8;
          v24[0] = &unk_2872642E8;
          v24[1] = 0;
          v23[1] = 0;
          v23[2] = 0;
          v23[0] = &unk_2872642E8;
          (*(*v15 + 216))(v15, &v25);
          (*(*v17 + 216))(v17, v24);
          v21 = PCArray<double,PCArray_Traits<double>>::append(&v25, v24);
          (*(*v20 + 216))(v20, v23, v21);
          PCArray<double,PCArray_Traits<double>>::append(&v25, v23);
          if (SHIDWORD(v26) > 3)
          {
            if (HIDWORD(v26) == 4)
            {
              ProShade::Const::create();
            }

            ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two many arguments for vec4", v22);
          }

          ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two few arguments for vec4", v22);
        }
      }
    }
  }

  operator new();
}

void sub_2600556F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Vec4::Vec4(PCSharedCount *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = 0;
  PCSharedCount::PCSharedCount(a1 + 3);
  a1->var0 = &unk_2872688E0;
  ProShade::Vec4::initVec4(a1, a2, a3, a4, a5);
}

void sub_260055814(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Vec4::initVec4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 16);
  if (v10)
  {
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a4 + 16);
  if (v12)
  {
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a5 + 16);
  if (v14)
  {
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  if (v11 && v13 && v15)
  {
    v23 = 0;
    v24 = 0;
    v21[2] = 0;
    v22 = &unk_2872642E8;
    v21[0] = &unk_2872642E8;
    v21[1] = 0;
    v20[1] = 0;
    v20[2] = 0;
    v19[2] = 0;
    v20[0] = &unk_2872642E8;
    v19[0] = &unk_2872642E8;
    v19[1] = 0;
    (*(*v9 + 216))(v9, &v22);
    (*(*v11 + 216))(v11, v21);
    v16 = PCArray<double,PCArray_Traits<double>>::append(&v22, v21);
    (*(*v13 + 216))(v13, v20, v16);
    v17 = PCArray<double,PCArray_Traits<double>>::append(&v22, v20);
    (*(*v15 + 216))(v15, v19, v17);
    PCArray<double,PCArray_Traits<double>>::append(&v22, v19);
    if (SHIDWORD(v23) > 3)
    {
      if (HIDWORD(v23) == 4)
      {
        ProShade::Const::create();
      }

      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two many arguments for vec4", v18);
    }

    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("two few arguments for vec4", v18);
  }

LABEL_20:
  operator new();
}

void ProShade::Vec4::checkType(ProShade::Vec4 *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  ProShade::cast(this, 4, 3, v3);
  *(this + 2) = v3[2];
  PCSharedCount::PCSharedCount(&v2, v4);
  PCSharedCount::operator=(this + 3, &v2);
  PCSharedCount::~PCSharedCount(&v2);
  v3[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v4);
}

void sub_260055FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  PCSharedCount::~PCSharedCount(&a9);
  a10 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v10 + 3);
  _Unwind_Resume(a1);
}

void ProShade::ConstVector::~ConstVector(ProShade::ConstVector *this)
{
  *this = off_287272D40;
  *(this + 10) = off_287272DF8;
  LiString::dec((this + 32));
  *(this + 10) = &unk_2872DEA38;
  *(this + 96) = 0;
  PCWeakCount::~PCWeakCount(this + 11);
}

{
  *this = off_287272D40;
  *(this + 10) = off_287272DF8;
  LiString::dec((this + 32));
  *(this + 10) = &unk_2872DEA38;
  *(this + 96) = 0;
  PCWeakCount::~PCWeakCount(this + 11);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::ConstVector::~ConstVector(ProShade::ConstVector *this)
{
  v1 = this + *(*this - 24);
  *v1 = off_287272D40;
  *(v1 + 10) = off_287272DF8;
  LiString::dec((v1 + 32));
  *(v1 + 10) = &unk_2872DEA38;
  v1[96] = 0;

  PCWeakCount::~PCWeakCount(v1 + 11);
}

{
  v1 = this + *(*this - 24);
  *v1 = off_287272D40;
  *(v1 + 10) = off_287272DF8;
  LiString::dec((v1 + 32));
  *(v1 + 10) = &unk_2872DEA38;
  v1[96] = 0;
  PCWeakCount::~PCWeakCount(v1 + 11);

  JUMPOUT(0x2666E9F00);
}

void ProShade::ConstMatrix::~ConstMatrix(ProShade::ConstMatrix *this)
{
  *this = off_287273008;
  *(this + 22) = off_2872730C0;
  LiString::dec((this + 32));
  *(this + 22) = &unk_2872DEA38;
  *(this + 192) = 0;
  PCWeakCount::~PCWeakCount(this + 23);
}

{
  *this = off_287273008;
  *(this + 22) = off_2872730C0;
  LiString::dec((this + 32));
  *(this + 22) = &unk_2872DEA38;
  *(this + 192) = 0;
  PCWeakCount::~PCWeakCount(this + 23);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::ConstMatrix::~ConstMatrix(ProShade::ConstMatrix *this)
{
  v1 = this + *(*this - 24);
  *v1 = off_287273008;
  *(v1 + 22) = off_2872730C0;
  LiString::dec((v1 + 32));
  *(v1 + 22) = &unk_2872DEA38;
  v1[192] = 0;

  PCWeakCount::~PCWeakCount(v1 + 23);
}

{
  v1 = this + *(*this - 24);
  *v1 = off_287273008;
  *(v1 + 22) = off_2872730C0;
  LiString::dec((v1 + 32));
  *(v1 + 22) = &unk_2872DEA38;
  v1[192] = 0;
  PCWeakCount::~PCWeakCount(v1 + 23);

  JUMPOUT(0x2666E9F00);
}

void ProShade::Ctor::~Ctor(ProShade::Ctor *this)
{
  v2 = 0;
  *this = &unk_2872728A8;
  *(this + 22) = &unk_287272960;
  do
  {
    *(this + v2 + 144) = &unk_28725E328;
    PCSharedCount::~PCSharedCount((this + v2 + 168));
    v2 -= 32;
  }

  while (v2 != -128);
  *this = off_287273168;
  *(this + 22) = off_287273220;
  LiString::dec((this + 32));
  *(this + 22) = &unk_2872DEA38;
  *(this + 192) = 0;
  PCWeakCount::~PCWeakCount(this + 23);
}

{
  v2 = 0;
  *this = &unk_2872728A8;
  *(this + 22) = &unk_287272960;
  do
  {
    *(this + v2 + 144) = &unk_28725E328;
    PCSharedCount::~PCSharedCount((this + v2 + 168));
    v2 -= 32;
  }

  while (v2 != -128);
  *this = off_287273168;
  *(this + 22) = off_287273220;
  LiString::dec((this + 32));
  *(this + 22) = &unk_2872DEA38;
  *(this + 192) = 0;
  PCWeakCount::~PCWeakCount(this + 23);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::Ctor::~Ctor(ProShade::Ctor *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872728A8;
  v1[22].var0 = &unk_287272960;
  v2 = v1 + 21;
  v3 = &v1[18];
  v4 = -128;
  do
  {
    v2[-3].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(v2);
    v2 = (v5 - 32);
    v3 -= 32;
    v4 += 32;
  }

  while (v4);
  v1->var0 = off_287273168;
  v1[22].var0 = off_287273220;
  LiString::dec(&v1[4]);
  v1[22].var0 = &unk_2872DEA38;
  LOBYTE(v1[24].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[23].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872728A8;
  v1[22].var0 = &unk_287272960;
  v2 = v1 + 21;
  v3 = &v1[18];
  v4 = -128;
  do
  {
    v2[-3].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(v2);
    v2 = (v5 - 32);
    v3 -= 32;
    v4 += 32;
  }

  while (v4);
  v1->var0 = off_287273168;
  v1[22].var0 = off_287273220;
  LiString::dec(&v1[4]);
  v1[22].var0 = &unk_2872DEA38;
  LOBYTE(v1[24].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[23].var0);

  JUMPOUT(0x2666E9F00);
}

void ProShade::Varying::~Varying(PCSharedCount *this)
{
  this->var0 = &unk_2872729C0;
  this[10].var0 = &unk_287272A78;
  this[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 9);
  this->var0 = off_2872732C8;
  this[10].var0 = off_287273380;
  LiString::dec(&this[4]);
  this[10].var0 = &unk_2872DEA38;
  LOBYTE(this[12].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[11].var0);
}

{
  this->var0 = &unk_2872729C0;
  this[10].var0 = &unk_287272A78;
  this[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 9);
  this->var0 = off_2872732C8;
  this[10].var0 = off_287273380;
  LiString::dec(&this[4]);
  this[10].var0 = &unk_2872DEA38;
  LOBYTE(this[12].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[11].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::Varying::~Varying(ProShade::Varying *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872729C0;
  v1[10].var0 = &unk_287272A78;
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_2872732C8;
  v1[10].var0 = off_287273380;
  LiString::dec(&v1[4]);
  v1[10].var0 = &unk_2872DEA38;
  LOBYTE(v1[12].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[11].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872729C0;
  v1[10].var0 = &unk_287272A78;
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_2872732C8;
  v1[10].var0 = off_287273380;
  LiString::dec(&v1[4]);
  v1[10].var0 = &unk_2872DEA38;
  LOBYTE(v1[12].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[11].var0);

  JUMPOUT(0x2666E9F00);
}

void ProShade::Selector::~Selector(PCSharedCount *this)
{
  this->var0 = &unk_287272AF0;
  this[11].var0 = &unk_287272BA8;
  this[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 9);
  this->var0 = off_287273428;
  this[11].var0 = off_2872734E0;
  LiString::dec(&this[4]);
  this[11].var0 = &unk_2872DEA38;
  LOBYTE(this[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[12].var0);
}

{
  this->var0 = &unk_287272AF0;
  this[11].var0 = &unk_287272BA8;
  this[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 9);
  this->var0 = off_287273428;
  this[11].var0 = off_2872734E0;
  LiString::dec(&this[4]);
  this[11].var0 = &unk_2872DEA38;
  LOBYTE(this[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[12].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::Selector::~Selector(ProShade::Selector *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287272AF0;
  v1[11].var0 = &unk_287272BA8;
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287273428;
  v1[11].var0 = off_2872734E0;
  LiString::dec(&v1[4]);
  v1[11].var0 = &unk_2872DEA38;
  LOBYTE(v1[13].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[12].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287272AF0;
  v1[11].var0 = &unk_287272BA8;
  v1[6].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 9);
  v1->var0 = off_287273428;
  v1[11].var0 = off_2872734E0;
  LiString::dec(&v1[4]);
  v1[11].var0 = &unk_2872DEA38;
  LOBYTE(v1[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[12].var0);

  JUMPOUT(0x2666E9F00);
}

void ProShade::VarT<ProShade::Selector>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_287273580;
  PCSharedCount::~PCSharedCount(a1 + 3);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::vector<std::pair<ProShade::Node const*,ProShade::Value>>::__construct_one_at_end[abi:ne200100]<std::pair<ProShade::Node const*,ProShade::Value>>(uint64_t a1, const PCString *a2)
{
  v3 = *(a1 + 8);
  *v3 = a2->var0;
  *(v3 + 12) = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = -1;
  result = ProShade::Value::operator=(v3 + 8, a2 + 1);
  *(a1 + 8) = v3 + 152;
  return result;
}

uint64_t std::vector<std::pair<ProShade::Node const*,ProShade::Value>>::__emplace_back_slow_path<std::pair<ProShade::Node const*,ProShade::Value>>(uint64_t a1, const PCString *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 16) - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ProShade::Node const*,ProShade::Value>>>(a1, v6);
  }

  v7 = 152 * v2;
  __p = 0;
  v11 = v7;
  v12 = 152 * v2;
  v13 = 0;
  *v7 = a2->var0;
  *(v7 + 12) = 0;
  *(v7 + 16) = -1;
  *(152 * v2 + 8) = 0;
  ProShade::Value::operator=(152 * v2 + 8, a2 + 1);
  v12 += 152;
  std::vector<std::pair<ProShade::Node const*,ProShade::Value>>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 152) % 0x98uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_2600574C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const PCString **std::vector<std::pair<ProShade::Node const*,ProShade::Value>>::__swap_out_circular_buffer(const PCString **result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = (v4 - (v6 - *result));
  if (v6 != *result)
  {
    result = (v4 - 8 * (v6 - *result) + 8);
    v8 = v5;
    do
    {
      v9.var0 = v8->var0;
      v8 += 19;
      *(result - 1) = v9.var0;
      *result = 0;
      result[1] = -1;
      result = (ProShade::Value::operator=(result, v5 + 1) + 152);
      v5 = v8;
    }

    while (v8 != v6);
    v5 = *v3;
  }

  a2[1] = v7;
  *v3 = v7;
  v3[1] = v5;
  a2[1] = v5;
  v10 = v3[1];
  v3[1] = a2[2];
  a2[2] = v10;
  v11 = v3[2];
  v3[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ProShade::Node const*,ProShade::Value>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::__emplace_unique_key_args<ProShade::Node const*,std::piecewise_construct_t const&,std::tuple<ProShade::Node const*&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<ProShade::Node const*&&>,std::tuple<>>();
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

void sub_2600577AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,void *>>>::operator()[abi:ne200100](uint64_t a1, PCSharedCount *a2)
{
  if (*(a1 + 8) == 1)
  {
    a2[5].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(a2 + 8);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

PCSharedCount *ProShade::VarT<ProShade::Selector>::VarT(PCSharedCount *a1, PCShared_base *a2)
{
  a1->var0 = &unk_287273580;
  a1[2].var0 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(a1 + 3, a2);
  return a1;
}

void OUTLINED_FUNCTION_0_14(PCSharedCount *a1)
{
  a1[-3].var0 = &unk_28725E328;

  PCSharedCount::~PCSharedCount(a1);
}

void OUTLINED_FUNCTION_1_5(PCSharedCount *a1)
{
  a1[-3].var0 = &unk_28725E328;

  PCSharedCount::~PCSharedCount(a1);
}

PCSharedCount *ProShade::Ctor::Ctor(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_2_2(a1, a2);
  do
  {
    OUTLINED_FUNCTION_0_14(result);
    result = OUTLINED_FUNCTION_4(v4);
  }

  while (v2);
  return result;
}

PCSharedCount *ProShade::Ctor::Ctor(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  do
  {
    OUTLINED_FUNCTION_1_5(result);
    result = OUTLINED_FUNCTION_6(v3);
  }

  while (v1);
  return result;
}

unint64_t HSolidRendererBumpMap::GetROI(HSolidRendererBumpMap *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4.var0 - 1;
  }

  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4.var1 - 1;
  }

  return v4 | (v5 << 32);
}

void HSolidRendererBumpMap::~HSolidRendererBumpMap(HGNode *this)
{
  HgcSolidRendererBumpMap::~HgcSolidRendererBumpMap(this);

  HGObject::operator delete(v1);
}

const char *HgcLean1::GetProgram(HgcLean1 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000264\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r1.xy = r0.xy/r0.zz;\n    r0.w = r1.x*r1.y;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=e3420226:c15e4c44:ebec1dde:00b3eef2\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000256\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r1.xy = r0.xy/r0.zz;\n    r0.w = r1.x*r1.y;\n    output.color0 = r0;\n    return output;\n}\n//MD5=57ca4b61:59eafe46:cd037ff1:40d4f80f\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001f7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1;\n\n    r0.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    r1.xy = r0.xy/r0.zz;\n    r0.w = r1.x*r1.y;\n    gl_FragColor = r0;\n}\n//MD5=99695ba1:a411b454:d9266e11:1bc3da9a\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_260057C24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344AF0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260057D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260057D64()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260057D5CLL);
}

uint64_t HgcLean1::BindTexture(HgcLean1 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcLean1::RenderTile(HgcLean1 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 22);
    v8 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v12 = *(v6 + v10 - 32);
          v13 = *(v6 + v10 - 16);
          v14 = *(v6 + v10);
          v15 = *(v6 + v10 + 16);
          v16 = vdupq_laneq_s32(v12, 2);
          v17 = vdupq_laneq_s32(v13, 2);
          v18 = vdupq_laneq_s32(v14, 2);
          v19 = vdupq_laneq_s32(v15, 2);
          v20 = *(this + 51);
          v21 = *(v20 + 16);
          v22 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v16), *v20), v21);
          v23 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v17), *v20), v21);
          v24 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v18), *v20), v21);
          v25 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v19), *v20), v21);
          v26 = *(v20 + 32);
          v27 = *(v20 + 48);
          v28 = vminq_f32(v22, v26);
          v29 = vminq_f32(v23, v26);
          v30 = vminq_f32(v24, v26);
          v31 = vminq_f32(v25, v26);
          v32 = vmulq_f32(v12, vmulq_f32(v28, vrecpsq_f32(v16, v28)));
          v33 = vmulq_f32(v13, vmulq_f32(v29, vrecpsq_f32(v17, v29)));
          v34 = vmulq_f32(v14, vmulq_f32(v30, vrecpsq_f32(v18, v30)));
          v35 = vmulq_f32(v15, vmulq_f32(v31, vrecpsq_f32(v19, v31)));
          v36 = (v5 + v10);
          v36[-2] = vbslq_s8(v27, vmulq_n_f32(vextq_s8(v32, v32, 8uLL), *v32.i32), v12);
          v36[-1] = vbslq_s8(v27, vmulq_n_f32(vextq_s8(v33, v33, 8uLL), *v33.i32), v13);
          *v36 = vbslq_s8(v27, vmulq_n_f32(vextq_s8(v34, v34, 8uLL), *v34.i32), v14);
          v36[1] = vbslq_s8(v27, vmulq_n_f32(vextq_s8(v35, v35, 8uLL), *v35.i32), v15);
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v37 = *(v6 + 16 * v9);
          v38 = vdupq_laneq_s32(v37, 2);
          v39 = *(this + 51);
          v40 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v38), *v39), *(v39 + 16)), *(v39 + 32));
          v41 = vmulq_f32(v37, vmulq_f32(v40, vrecpsq_f32(v38, v40)));
          *(v5 + 16 * v9++) = vbslq_s8(*(v39 + 48), vmulq_n_f32(vextq_s8(v41, v41, 8uLL), *v41.i32), v37);
        }

        while (v9 < v4);
      }

      ++v3;
      v6 += v7;
      v5 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcLean1::GetDOD(HgcLean1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcLean1::GetROI(HgcLean1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcLean1::HgcLean1(HgcLean1 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287273828;
  operator new();
}

void HgcLean1::~HgcLean1(HGNode *this)
{
  *this = &unk_287273828;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcLean1::~HgcLean1(this);

  HGObject::operator delete(v1);
}

const char *LiHeBackgroundGeneratorShader::GetProgram(LiHeBackgroundGeneratorShader *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000177\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Params[0];\n    return output;\n}\n//MD5=7872d295:7b2c1273:7805b654:83c6a562\n//SIG=00400000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000177\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Params[0];\n    return output;\n}\n//MD5=7872d295:7b2c1273:7805b654:83c6a562\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000162\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp vec4 hg_ProgramLocal0;\nvoid main()\n{\n\n    gl_FragColor = hg_ProgramLocal0;\n}\n//MD5=3516c664:47c72e5c:14a395a6:40522bd5\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
  }
}

void sub_260058324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v31 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v31 - 56), "FragmentOut");
  *(v31 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v30, v31 - 64);
  if (*(v31 - 33) < 0)
  {
    operator delete(*(v31 - 56));
  }

  memset(v36, 0, 24);
  LODWORD(v32) = 2;
  std::string::basic_string[abi:ne200100]<0>(&v33, "float4");
  v35 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v36, &v32);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  HGProgramDescriptor::SetArgumentBindings(v30, v36);
  v32 = v36;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_2600583E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  a10 = &a19;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_260058418()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260058410);
}

uint64_t LiHeBackgroundGeneratorShader::Bind(LiHeBackgroundGeneratorShader *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeBackgroundGeneratorShader::RenderTile(LiHeBackgroundGeneratorShader *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = (v5 + 32);
    v7 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = v6;
        for (i = v4; i > 3; i -= 4)
        {
          v11 = *(this + 51);
          v12 = *v11;
          *(v9 - 2) = *v11;
          *(v9 - 1) = v12;
          *v9 = v12;
          v9[1] = v12;
          v9 += 4;
          v8 += 4;
        }
      }

      if (v8 < v4)
      {
        do
        {
          *(v5 + 16 * v8++) = **(this + 51);
        }

        while (v8 < v4);
      }

      ++v3;
      v6 = (v6 + v7);
      v5 += v7;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeBackgroundGeneratorShader::GetDOD(LiHeBackgroundGeneratorShader *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

void LiHeBackgroundGeneratorShader::LiHeBackgroundGeneratorShader(LiHeBackgroundGeneratorShader *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287273A90;
  operator new();
}

void LiHeBackgroundGeneratorShader::~LiHeBackgroundGeneratorShader(HGNode *this)
{
  *this = &unk_287273A90;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  LiHeBackgroundGeneratorShader::~LiHeBackgroundGeneratorShader(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeBackgroundGeneratorShader::SetParameter(LiHeBackgroundGeneratorShader *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float LiHeBackgroundGeneratorShader::GetParameter(LiHeBackgroundGeneratorShader *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *LiHeDepthCompareProgram::GetProgram(LiHeDepthCompareProgram *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000889\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2, s3, s4;\n    FragmentOut output;\n\n    s0 = frag._texCoord1.yyyy*hg_Params[1];\n    s0 = frag._texCoord1.xxxx*hg_Params[0] + s0;\n    s0 = frag._texCoord1.zzzz*hg_Params[2] + s0;\n    s0 = hg_Params[3] + s0;\n    s1.x = hg_Params[8].z - s0.z;\n    s1.y = -s0.z/s1.x;\n    s1 = mix(s0, hg_Params[8], s1.yyyy);\n    s2.y = s0.z/-hg_Params[6].z;\n    s2.x = float(hg_Params[9].x >= float(c0.x));\n    r0.x = half(hg_Params[4].z);\n    r0.y = half(hg_Params[5].z);\n    r0.w = c0.x;\n    r0.z = half(hg_Params[6].z);\n    s3 = s2.yyyy*float4(r0) + s0;\n    s1 = select(s3, s1, -s2.xxxx < 0.00000h);\n    s3 = s1.yyyy*hg_Params[5];\n    s3 = s1.xxxx*hg_Params[4] + s3;\n    s4 = s1.wwww*hg_Params[7];\n    s3 = s1.zzzz*hg_Params[6] + s3;\n    s1 = s3 + s4;\n    s4.x = float(s3.w < -s4.w);\n    s3 = s0.yyyy*hg_Params[5];\n    s2.w = float(-s4.x >= float(c0.x));\n    s3 = s0.xxxx*hg_Params[4] + s3;\n    s4 = s0.wwww*hg_Params[7];\n    s0 = s0.zzzz*hg_Params[6] + s3;\n    s3 = s0 + s4;\n    s0.x = float(s0.w < -s4.w);\n    s0.y = fmax(s3.w, float(c0.y));\n    s0.z = fmin(s3.w, -float(c0.y));\n    s0.x = select(s0.y, s0.z, -s0.x < 0.00000h);\n    s2.y = fmax(s1.w, float(c0.y));\n    s2.z = fmin(s1.w, -float(c0.y));\n    s0.y = select(s2.z, s2.y, -s2.w < 0.00000h);\n    s0.xw = 1.00000f / s0.xy;\n    s0.xyz = s3.xyz*s0.xxx;\n    s0.x = dot(s0.xyz, s0.xyz);\n    s1.xyz = s1.xyz*s0.www;\n    s0.y = dot(s1.xyz, s1.xyz);\n    s0.xy = sqrt(s0.xy);\n    s0.x = s0.y - s0.x;\n    s0.y = s0.z - s1.z;\n    s0.w = (float) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    s2.x = select(s0.y, s0.x, -s2.x < 0.00000h);\n    s0.x = float(s2.x < float(c0.x));\n    output.color0 = s0.xxxx*s0.wwww;\n    return output;\n}\n//MD5=61436a97:dd5f363d:7650be05:ee56534e\n//SIG=00400000:00000001:00000001:00000001:0001:000a:0006:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000082b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = frag._texCoord1.yyyy*hg_Params[1];\n    r0 = frag._texCoord1.xxxx*hg_Params[0] + r0;\n    r0 = frag._texCoord1.zzzz*hg_Params[2] + r0;\n    r0 = hg_Params[3] + r0;\n    r1.x = hg_Params[8].z - r0.z;\n    r1.y = -r0.z/r1.x;\n    r1 = mix(r0, hg_Params[8], r1.yyyy);\n    r2.y = r0.z/-hg_Params[6].z;\n    r2.x = float(hg_Params[9].x >= c0.x);\n    r3.x = hg_Params[4].z;\n    r3.y = hg_Params[5].z;\n    r3.w = c0.x;\n    r3.z = hg_Params[6].z;\n    r3 = r2.yyyy*r3 + r0;\n    r1 = select(r3, r1, -r2.xxxx < 0.00000f);\n    r3 = r1.yyyy*hg_Params[5];\n    r3 = r1.xxxx*hg_Params[4] + r3;\n    r4 = r1.wwww*hg_Params[7];\n    r3 = r1.zzzz*hg_Params[6] + r3;\n    r1 = r3 + r4;\n    r4.x = float(r3.w < -r4.w);\n    r3 = r0.yyyy*hg_Params[5];\n    r2.w = float(-r4.x >= c0.x);\n    r3 = r0.xxxx*hg_Params[4] + r3;\n    r4 = r0.wwww*hg_Params[7];\n    r0 = r0.zzzz*hg_Params[6] + r3;\n    r3 = r0 + r4;\n    r0.x = float(r0.w < -r4.w);\n    r0.y = fmax(r3.w, c0.y);\n    r0.z = fmin(r3.w, -c0.y);\n    r0.x = select(r0.y, r0.z, -r0.x < 0.00000f);\n    r2.y = fmax(r1.w, c0.y);\n    r2.z = fmin(r1.w, -c0.y);\n    r0.y = select(r2.z, r2.y, -r2.w < 0.00000f);\n    r0.xw = 1.00000f / r0.xy;\n    r0.xyz = r3.xyz*r0.xxx;\n    r0.x = dot(r0.xyz, r0.xyz);\n    r1.xyz = r1.xyz*r0.www;\n    r0.y = dot(r1.xyz, r1.xyz);\n    r0.xy = sqrt(r0.xy);\n    r0.x = r0.y - r0.x;\n    r0.y = r0.z - r1.z;\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r2.x = select(r0.y, r0.x, -r2.x < 0.00000f);\n    r0.x = float(r2.x < c0.x);\n    output.color0 = r0.xxxx*r0.wwww;\n    return output;\n}\n//MD5=5e302bb5:af3fc56a:1861dd64:979ffb4f\n//SIG=00000000:00000001:00000001:00000000:0001:000a:0005:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000009eb\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0 = hg_TexCoord1.yyyy*hg_ProgramLocal1;\n    r0 = hg_TexCoord1.xxxx*hg_ProgramLocal0 + r0;\n    r0 = hg_TexCoord1.zzzz*hg_ProgramLocal2 + r0;\n    r0 = hg_ProgramLocal3 + r0;\n    r1.x = hg_ProgramLocal8.z - r0.z;\n    r1.y = -r0.z/r1.x;\n    r1 = mix(r0, hg_ProgramLocal8, r1.yyyy);\n    r2.y = r0.z/-hg_ProgramLocal6.z;\n    r2.x = float(hg_ProgramLocal9.x >= c0.x);\n    r3.x = hg_ProgramLocal4.z;\n    r3.y = hg_ProgramLocal5.z;\n    r3.w = c0.x;\n    r3.z = hg_ProgramLocal6.z;\n    r3 = r2.yyyy*r3 + r0;\n    r1 = vec4(-r2.x < 0.00000 ? r1.x : r3.x, -r2.x < 0.00000 ? r1.y : r3.y, -r2.x < 0.00000 ? r1.z : r3.z, -r2.x < 0.00000 ? r1.w : r3.w);\n    r3 = r1.yyyy*hg_ProgramLocal5;\n    r3 = r1.xxxx*hg_ProgramLocal4 + r3;\n    r4 = r1.wwww*hg_ProgramLocal7;\n    r3 = r1.zzzz*hg_ProgramLocal6 + r3;\n    r1 = r3 + r4;\n    r4.x = float(r3.w < -r4.w);\n    r3 = r0.yyyy*hg_ProgramLocal5;\n    r2.w = float(-r4.x >= c0.x);\n    r3 = r0.xxxx*hg_ProgramLocal4 + r3;\n    r4 = r0.wwww*hg_ProgramLocal7;\n    r0 = r0.zzzz*hg_ProgramLocal6 + r3;\n    r3 = r0 + r4;\n    r0.x = float(r0.w < -r4.w);\n    r0.y = max(r3.w, c0.y);\n    r0.z = min(r3.w, -c0.y);\n    r0.x = -r0.x < 0.00000 ? r0.z : r0.y;\n    r2.y = max(r1.w, c0.y);\n    r2.z = min(r1.w, -c0.y);\n    r0.y = -r2.w < 0.00000 ? r2.y : r2.z;\n    r0.xw = vec2(1.00000) / r0.xy;\n    r0.xyz = r3.xyz*r0.xxx;\n    r0.x = dot(r0.xyz, r0.xyz);\n    r1.xyz = r1.xyz*r0.www;\n    r0.y = dot(r1.xyz, r1.xyz);\n    r0.xy = sqrt(r0.xy);\n    r0.x = r0.y - r0.x;\n    r0.y = r0.z - r1.z;\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r2.x = -r2.x < 0.00000 ? r0.x : r0.y;\n    r0.x = float(r2.x < c0.x);\n    gl_FragColor = r0.xxxx*r0.wwww;\n}\n//MD5=17eb52d4:3d49dffd:b5262582:72830b80\n//SIG=00000000:00000001:00000001:00000000:0001:000a:0005:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_26005889C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260345090;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_2600589DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260058A24()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260058A1CLL);
}

uint64_t LiHeDepthCompareProgram::BindTexture(LiHeDepthCompareProgram *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t LiHeDepthCompareProgram::Bind(LiHeDepthCompareProgram *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeDepthCompareProgram::RenderTile(LiHeDepthCompareProgram *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = a2[2];
    *v7.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v7.i64[1] = 0x3F80000000000000;
    v8 = a2[10];
    v9 = 16 * a2[3].i32[0];
    v10 = 16 * a2[11].i32[0];
    do
    {
      if (v5 < 2)
      {
        v11 = 0;
        v14 = v7;
      }

      else
      {
        v11 = 0;
        v12 = 16;
        v13 = v5;
        v14 = v7;
        do
        {
          v15 = vaddq_f32(v14, xmmword_2603429B0);
          v16 = *(this + 51);
          v17 = *(v16 + 16);
          v18 = *(v16 + 32);
          v19 = *(v16 + 48);
          v20 = vaddq_f32(v19, vaddq_f32(vaddq_f32(vmulq_lane_f32(v17, *v14.f32, 1), vmulq_n_f32(*v16, v14.f32[0])), vmulq_laneq_f32(v18, v14, 2)));
          v21 = vaddq_f32(v19, vaddq_f32(vaddq_f32(vmulq_lane_f32(v17, *v15.f32, 1), vmulq_n_f32(*v16, v15.f32[0])), vmulq_laneq_f32(v18, v15, 2)));
          v22 = *(v16 + 128);
          v23 = vsubq_f32(v22, v20);
          v24 = vsubq_f32(v22, v21);
          v25 = vrev64q_s32(v23);
          v26 = vextq_s8(v25, v25, 8uLL);
          v27 = vrev64q_s32(v24);
          v28 = vextq_s8(v27, v27, 8uLL);
          v30 = *(v16 + 160);
          v29 = *(v16 + 176);
          v31 = vminq_f32(vmaxq_f32(vrecpeq_f32(v26), v30), v29);
          v32 = vminq_f32(vmaxq_f32(vrecpeq_f32(v28), v30), v29);
          v33 = vminq_f32(vmaxq_f32(vmulq_f32(v31, vrecpsq_f32(v26, v31)), v30), v29);
          v34 = vminq_f32(vmaxq_f32(vmulq_f32(v32, vrecpsq_f32(v28, v32)), v30), v29);
          v35 = *(v16 + 96);
          v36 = *(v16 + 112);
          v37 = vnegq_f32(vextq_s8(v35, v35, 4uLL));
          v38 = vminq_f32(vmaxq_f32(vrecpeq_f32(v37), v30), v29);
          v39 = vminq_f32(vmaxq_f32(vmulq_f32(v38, vrecpsq_f32(v37, v38)), v30), v29);
          v40 = vmulq_f32(v33, vrecpsq_f32(v26, v33));
          v41 = vmulq_f32(v39, vrecpsq_f32(v37, v39));
          v42 = vmulq_laneq_f32(v41, v20, 2);
          v43 = vmulq_laneq_f32(v41, v21, 2);
          v44 = *(v16 + 192);
          v45 = *(v16 + 208);
          v46 = vmulq_f32(v34, vrecpsq_f32(v28, v34));
          v47 = vandq_s8(v44, vcgeq_f32(*(v16 + 144), v30));
          v34.i64[0] = vbslq_s8(v45, v47, v42).u64[0];
          v48 = *(v16 + 64);
          v49 = *(v16 + 80);
          v50 = vmulq_f32(v40, vnegq_f32(vdupq_laneq_s32(v20, 2))).u64[0];
          v51 = vbslq_s8(v45, vextq_s8(v48, v48, 8uLL), vextq_s8(v49, v7, 4uLL));
          v51.i32[3] = 0;
          v52 = vmulq_f32(v46, vnegq_f32(vdupq_laneq_s32(v21, 2))).u64[0];
          v40.i64[0] = vbslq_s8(v45, v47, v43).u64[0];
          v54 = *(v16 + 224);
          v53 = *(v16 + 240);
          v55 = vbslq_s8(v54, v35, v51);
          v56 = vmulq_lane_f32(v24, v52, 1);
          v57 = vaddq_f32(v20, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v34.f32, 0), v53), vmulq_lane_f32(v23, v50, 1), vmulq_lane_f32(v55, *v34.f32, 1)));
          v58 = vaddq_f32(v21, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v40.f32, 0), v53), v56, vmulq_lane_f32(v55, *v40.f32, 1)));
          v59 = vmulq_laneq_f32(v36, v57, 3);
          v60 = vmulq_laneq_f32(v36, v58, 3);
          v61 = vaddq_f32(vmulq_laneq_f32(v35, v57, 2), vaddq_f32(vmulq_lane_f32(v49, *v57.f32, 1), vmulq_n_f32(v48, v57.f32[0])));
          v62 = vaddq_f32(vmulq_laneq_f32(v35, v58, 2), vaddq_f32(vmulq_lane_f32(v49, *v58.f32, 1), vmulq_n_f32(v48, v58.f32[0])));
          v63 = vaddq_f32(vmulq_n_f32(v48, v20.f32[0]), vmulq_lane_f32(v49, *v20.f32, 1));
          v64 = vandq_s8(v44, vcgtq_f32(vnegq_f32(v59), v61));
          v65 = vandq_s8(v44, vcgtq_f32(vnegq_f32(v60), v62));
          v66 = vaddq_f32(vmulq_n_f32(v48, v21.f32[0]), vmulq_lane_f32(v49, *v21.f32, 1));
          v67 = vmulq_laneq_f32(v36, v20, 3);
          v68 = vmulq_laneq_f32(v36, v21, 3);
          v69 = vaddq_f32(vmulq_laneq_f32(v35, v20, 2), v63);
          v70 = vaddq_f32(vmulq_laneq_f32(v35, v21, 2), v66);
          v71 = vaddq_f32(v69, v67);
          v72 = vcgeq_f32(vnegq_f32(vextq_s8(v64, v64, 0xCuLL)), v53);
          v73 = vaddq_f32(v70, v68);
          v74 = vcgtq_f32(vnegq_f32(v68), v70);
          v75 = vcgeq_f32(vnegq_f32(vextq_s8(v65, v65, 0xCuLL)), v53);
          v76 = vandq_s8(v44, vcgtq_f32(vnegq_f32(v67), v69));
          v77 = vandq_s8(v44, v74);
          v78 = vbslq_s8(v45, vextq_s8(v76, v76, 0xCuLL), vmaxq_f32(vextq_s8(v71, v71, 8uLL), v44));
          v79 = vbslq_s8(v45, vextq_s8(v77, v77, 0xCuLL), vmaxq_f32(vextq_s8(v73, v73, 8uLL), v44));
          v80 = vrev64q_s32(v78);
          v78.i64[1] = vminq_f32(vrev64q_s32(*&v71), v44).i64[1];
          v81 = vaddq_f32(v59, v61);
          v82 = vrev64q_s32(v79);
          v79.i64[1] = vminq_f32(vrev64q_s32(*&v73), v44).i64[1];
          v83 = vandq_s8(v44, v72);
          v84 = vandq_s8(v44, v75);
          v85 = vaddq_f32(v60, v62);
          v86 = vbslq_s8(vcgtq_f32(v78, v53), vdupq_laneq_s64(v78, 1), v80);
          v87 = vbslq_s8(vcgtq_f32(v79, v53), vdupq_laneq_s64(v79, 1), v82);
          v88 = vextq_s8(v83, v83, 4uLL);
          v88.i64[0] = v34.i64[0];
          v89 = *(v16 + 256);
          v90 = *(v16 + 272);
          v91 = vbslq_s8(v89, vmaxq_f32(vextq_s8(v81, v81, 8uLL), v44), v88);
          v92 = vextq_s8(v84, v84, 4uLL);
          v92.i64[0] = v40.i64[0];
          v93 = vbslq_s8(v54, vminq_f32(vrev64q_s32(v81), v44), v91);
          v94 = vbslq_s8(v54, vminq_f32(vrev64q_s32(v85), v44), vbslq_s8(v89, vmaxq_f32(vextq_s8(v85, v85, 8uLL), v44), v92));
          v95 = vdupq_lane_s64(vbslq_s8(v45, v86, vbslq_s8(vcgtq_f32(vextq_s8(v93, v93, 8uLL), v53), v93, vextq_s8(v93, v7, 4uLL))).i64[0], 0);
          v96 = vdupq_lane_s64(vbslq_s8(v45, v87, vbslq_s8(vcgtq_f32(vextq_s8(v94, v94, 8uLL), v53), v94, vextq_s8(v94, v7, 4uLL))).i64[0], 0);
          v97 = vminq_f32(vmaxq_f32(vrecpeq_f32(v95), v90), v29);
          v98 = vminq_f32(vmaxq_f32(vrecpeq_f32(v96), v90), v29);
          v99 = vminq_f32(vmaxq_f32(vmulq_f32(v97, vrecpsq_f32(v95, v97)), v90), v29);
          v100 = vminq_f32(vmaxq_f32(vmulq_f32(v98, vrecpsq_f32(v96, v98)), v90), v29);
          v101 = vmulq_f32(v99, vrecpsq_f32(v95, v99));
          v102 = vmulq_f32(v100, vrecpsq_f32(v96, v100));
          v103 = *(v16 + 288);
          v104 = vbslq_s8(v103, v101, vmulq_n_f32(v71, *v101.i32));
          v105 = vbslq_s8(v103, v102, vmulq_n_f32(v73, *v102.i32));
          v106 = vmulq_f32(v104, v104);
          v107 = vmulq_f32(v105, v105);
          v106.i64[0] = vaddq_f32(vdupq_laneq_s64(v106, 1), vaddq_f32(v106, vrev64q_s32(v106))).u64[0];
          v107.i64[0] = vaddq_f32(vdupq_laneq_s64(v107, 1), vaddq_f32(v107, vrev64q_s32(v107))).u64[0];
          v108 = vmulq_laneq_f32(v81, v104, 3);
          v109 = vmulq_laneq_f32(v85, v105, 3);
          v110 = vmulq_f32(v108, v108);
          v111 = vmulq_f32(v109, v109);
          v106.i64[1] = v104.i64[1];
          v112 = vbslq_s8(v89, vaddq_f32(vextq_s8(v110, v110, 4uLL), vaddq_f32(v110, vrev64q_s32(v110))), v106);
          v107.i64[1] = v105.i64[1];
          v113 = vbslq_s8(v89, vaddq_f32(vextq_s8(v111, v111, 4uLL), vaddq_f32(v111, vrev64q_s32(v111))), v107);
          v114 = vminq_f32(vrsqrteq_f32(v112), v29);
          v115 = vminq_f32(vrsqrteq_f32(v113), v29);
          v116 = vminq_f32(vmulq_f32(v114, vrsqrtsq_f32(vmulq_f32(v114, v112), v114)), v29);
          v117 = vminq_f32(vmulq_f32(v115, vrsqrtsq_f32(vmulq_f32(v115, v113), v115)), v29);
          v118 = vmulq_f32(vminq_f32(vmulq_f32(v116, vrsqrtsq_f32(vmulq_f32(v116, v112), v116)), v29), v112);
          v119 = vmulq_f32(vminq_f32(vmulq_f32(v117, vrsqrtsq_f32(vmulq_f32(v117, v113), v117)), v29), v113);
          v118.i64[0] = vsubq_f32(vrev64q_s32(v118), v118).u64[0];
          v119.i64[0] = vsubq_f32(vrev64q_s32(v119), v119).u64[0];
          v118.i64[1] = v112.i64[1];
          v119.i64[1] = v113.i64[1];
          v112.i64[0] = vbslq_s8(v45, v118, vextq_s8(vsubq_f32(v118, v108), v7, 4uLL)).u64[0];
          v119.i64[0] = vbslq_s8(v45, v119, vextq_s8(vsubq_f32(v119, v109), v7, 4uLL)).u64[0];
          v120 = *(*&v8 + v12 - 16);
          v121 = *(*&v8 + v12);
          v118.i64[0] = v112.i64[0];
          v117.i64[0] = v119.i64[0];
          v112.i64[1] = vdupq_laneq_s64(v120, 1).u64[0];
          v118.i64[1] = *(*&v8 + v12 - 8);
          v119.i64[1] = vdupq_laneq_s64(v121, 1).u64[0];
          v117.i64[1] = *(*&v8 + v12 + 8);
          v122 = (*&v6 + v12);
          v122[-1] = vmulq_n_f32(vdupq_laneq_s32(v120, 3), *vandq_s8(v44, vcgtq_f32(v53, vbslq_s8(vcgtq_f32(v93, v53), v118, vrev64q_s32(v112)))).i32);
          *v122 = vmulq_n_f32(vdupq_laneq_s32(v121, 3), *vandq_s8(v44, vcgtq_f32(v53, vbslq_s8(vcgtq_f32(v94, v53), v117, vrev64q_s32(v119)))).i32);
          v14 = vaddq_f32(v15, xmmword_2603429B0);
          v13 -= 2;
          v11 += 2;
          v12 += 32;
        }

        while (v13 > 1);
      }

      if (v11 < v5)
      {
        v123 = *(this + 51);
        v124 = vaddq_f32(*(v123 + 48), vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v123 + 16), *v14.f32, 1), vmulq_n_f32(*v123, v14.f32[0])), vmulq_laneq_f32(*(v123 + 32), v14, 2)));
        v125 = vsubq_f32(*(v123 + 128), v124);
        v126 = vrev64q_s32(v125);
        v127 = vextq_s8(v126, v126, 8uLL);
        v129 = *(v123 + 160);
        v128 = *(v123 + 176);
        v130 = vminq_f32(vmaxq_f32(vrecpeq_f32(v127), v129), v128);
        v131 = vminq_f32(vmaxq_f32(vmulq_f32(v130, vrecpsq_f32(v127, v130)), v129), v128);
        v132 = vmulq_lane_f32(v125, *&vmulq_f32(vmulq_f32(v131, vrecpsq_f32(v127, v131)), vnegq_f32(vdupq_laneq_s32(v124, 2))), 1);
        v133 = *(v123 + 96);
        v134 = *(v123 + 112);
        v135 = vnegq_f32(vextq_s8(v133, v133, 4uLL));
        v136 = vminq_f32(vmaxq_f32(vrecpeq_f32(v135), v129), v128);
        v137 = vminq_f32(vmaxq_f32(vmulq_f32(v136, vrecpsq_f32(v135, v136)), v129), v128);
        v138 = vmulq_laneq_f32(vmulq_f32(v137, vrecpsq_f32(v135, v137)), v124, 2);
        v139 = *(v123 + 192);
        v140 = *(v123 + 208);
        v141 = vbslq_s8(v140, vandq_s8(v139, vcgeq_f32(*(v123 + 144), v129)), v138).u64[0];
        v142 = *(v123 + 64);
        v143 = *(v123 + 80);
        v144 = vbslq_s8(v140, vextq_s8(v142, v142, 8uLL), vextq_s8(v143, v7, 4uLL));
        v144.i32[3] = 0;
        v146 = *(v123 + 224);
        v145 = *(v123 + 240);
        v147 = vaddq_f32(v124, vbslq_s8(vcgtq_f32(vdupq_lane_s32(v141, 0), v145), v132, vmulq_lane_f32(vbslq_s8(v146, v133, v144), v141, 1)));
        v148 = vmulq_laneq_f32(v134, v147, 3);
        v149 = vaddq_f32(vmulq_laneq_f32(v133, v147, 2), vaddq_f32(vmulq_lane_f32(v143, *v147.f32, 1), vmulq_n_f32(v142, v147.f32[0])));
        v150 = vaddq_f32(v148, v149);
        v151 = vandq_s8(v139, vcgtq_f32(vnegq_f32(v148), v149));
        v152 = vandq_s8(v139, vcgeq_f32(vnegq_f32(vextq_s8(v151, v151, 0xCuLL)), v145));
        v153 = vmulq_laneq_f32(v134, v124, 3);
        v154 = vaddq_f32(vmulq_laneq_f32(v133, v124, 2), vaddq_f32(vmulq_n_f32(v142, v124.f32[0]), vmulq_lane_f32(v143, *v124.f32, 1)));
        v155 = vaddq_f32(v154, v153);
        v156 = vandq_s8(v139, vcgtq_f32(vnegq_f32(v153), v154));
        v157 = vbslq_s8(v140, vextq_s8(v156, v156, 0xCuLL), vmaxq_f32(vextq_s8(v155, v155, 8uLL), v139));
        v158 = vrev64q_s32(v157);
        v157.i64[1] = vminq_f32(vrev64q_s32(*&v155), v139).i64[1];
        v159 = vbslq_s8(vcgtq_f32(v157, v145), vdupq_laneq_s64(v157, 1), v158);
        v160 = vextq_s8(v152, v152, 4uLL);
        *v160.i8 = v141;
        v161 = *(v123 + 272);
        v162 = vbslq_s8(v146, vminq_f32(vrev64q_s32(v150), v139), vbslq_s8(*(v123 + 256), vmaxq_f32(vextq_s8(v150, v150, 8uLL), v139), v160));
        v163 = vdupq_lane_s64(vbslq_s8(v140, v159, vbslq_s8(vcgtq_f32(vextq_s8(v162, v162, 8uLL), v145), v162, vextq_s8(v162, v7, 4uLL))).i64[0], 0);
        v164 = vminq_f32(vmaxq_f32(vrecpeq_f32(v163), v161), v128);
        v165 = vminq_f32(vmaxq_f32(vmulq_f32(v164, vrecpsq_f32(v163, v164)), v161), v128);
        v166 = vmulq_f32(v165, vrecpsq_f32(v163, v165));
        v167 = vbslq_s8(*(v123 + 288), v166, vmulq_n_f32(v155, *v166.i32));
        v168 = vmulq_f32(v167, v167);
        v168.i64[0] = vaddq_f32(vdupq_laneq_s64(v168, 1), vaddq_f32(v168, vrev64q_s32(v168))).u64[0];
        v169 = vmulq_laneq_f32(v150, v167, 3);
        v170 = vmulq_f32(v169, v169);
        v168.i64[1] = v167.i64[1];
        v171 = vbslq_s8(*(v123 + 256), vaddq_f32(vextq_s8(v170, v170, 4uLL), vaddq_f32(v170, vrev64q_s32(v170))), v168);
        v172 = vminq_f32(vrsqrteq_f32(v171), v128);
        v173 = vminq_f32(vmulq_f32(v172, vrsqrtsq_f32(vmulq_f32(v172, v171), v172)), v128);
        v174 = vmulq_f32(vminq_f32(vmulq_f32(v173, vrsqrtsq_f32(vmulq_f32(v173, v171), v173)), v128), v171);
        v174.i64[0] = vsubq_f32(vrev64q_s32(v174), v174).u64[0];
        v174.i64[1] = v171.i64[1];
        v175 = vextq_s8(vsubq_f32(v174, v169), v7, 4uLL);
        v176 = *(*&v8 + 16 * v11);
        v174.i64[0] = vbslq_s8(v140, v174, v175).u64[0];
        v140.i64[0] = v174.i64[0];
        v140.i64[1] = *(*&v8 + 16 * v11 + 8);
        v174.i64[1] = vdupq_laneq_s64(v176, 1).u64[0];
        *(*&v6 + 16 * v11) = vmulq_n_f32(vdupq_laneq_s32(v176, 3), *vandq_s8(v139, vcgtq_f32(v145, vbslq_s8(vcgtq_f32(v162, v145), v140, vrev64q_s32(v174)))).i32);
      }

      v7 = vaddq_f32(v7, xmmword_2603429C0);
      *&v8 += v10;
      *&v6 += v9;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeDepthCompareProgram::GetDOD(LiHeDepthCompareProgram *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeDepthCompareProgram::GetROI(LiHeDepthCompareProgram *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeDepthCompareProgram::LiHeDepthCompareProgram(LiHeDepthCompareProgram *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287273CF8;
  operator new();
}

void LiHeDepthCompareProgram::~LiHeDepthCompareProgram(HGNode *this)
{
  *this = &unk_287273CF8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B2834900);
  }

  HGNode::~HGNode(this);
}

{
  LiHeDepthCompareProgram::~LiHeDepthCompareProgram(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeDepthCompareProgram::SetParameter(LiHeDepthCompareProgram *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v14 = *(this + 51);
        if (*(v14 + 80) != a3.n128_f32[0] || *(v14 + 84) != a4 || *(v14 + 88) != a5 || *(v14 + 92) != a6)
        {
          *(v14 + 80) = a3.n128_u32[0];
          *(v14 + 84) = a4;
          *(v14 + 88) = a5;
          *(v14 + 92) = a6;
          goto LABEL_62;
        }
      }

      else
      {
        v12 = *(this + 51);
        if (*(v12 + 96) != a3.n128_f32[0] || *(v12 + 100) != a4 || *(v12 + 104) != a5 || *(v12 + 108) != a6)
        {
          *(v12 + 96) = a3.n128_u32[0];
          *(v12 + 100) = a4;
          *(v12 + 104) = a5;
          *(v12 + 108) = a6;
          goto LABEL_62;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 7:
        v16 = *(this + 51);
        if (*(v16 + 112) != a3.n128_f32[0] || *(v16 + 116) != a4 || *(v16 + 120) != a5 || *(v16 + 124) != a6)
        {
          *(v16 + 112) = a3.n128_u32[0];
          *(v16 + 116) = a4;
          *(v16 + 120) = a5;
          *(v16 + 124) = a6;
          goto LABEL_62;
        }

        return 0;
      case 8:
        v18 = *(this + 51);
        if (*(v18 + 128) != a3.n128_f32[0] || *(v18 + 132) != a4 || *(v18 + 136) != a5 || *(v18 + 140) != a6)
        {
          *(v18 + 128) = a3.n128_u32[0];
          *(v18 + 132) = a4;
          *(v18 + 136) = a5;
          *(v18 + 140) = a6;
          goto LABEL_62;
        }

        return 0;
      case 9:
        v9 = -fabsf(a3.n128_f32[0]);
        v10 = *(this + 51);
        if (v10[9].n128_f32[0] != v9 || v10[9].n128_f32[1] != 0.0 || v10[9].n128_f32[2] != 0.0 || v10[9].n128_f32[3] != 0.0)
        {
          v10[9].n128_f32[0] = v9;
          v10[9].n128_u64[1] = 0;
          v10[9].n128_u32[1] = 0;
          a3.n128_f32[1] = a4;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v10[19] = a3;
          goto LABEL_62;
        }

        return 0;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v15 = *(this + 51);
        if (*(v15 + 32) != a3.n128_f32[0] || *(v15 + 36) != a4 || *(v15 + 40) != a5 || *(v15 + 44) != a6)
        {
          *(v15 + 32) = a3.n128_u32[0];
          *(v15 + 36) = a4;
          *(v15 + 40) = a5;
          *(v15 + 44) = a6;
          goto LABEL_62;
        }
      }

      else if (a2 == 3)
      {
        v17 = *(this + 51);
        if (*(v17 + 48) != a3.n128_f32[0] || *(v17 + 52) != a4 || *(v17 + 56) != a5 || *(v17 + 60) != a6)
        {
          *(v17 + 48) = a3.n128_u32[0];
          *(v17 + 52) = a4;
          *(v17 + 56) = a5;
          *(v17 + 60) = a6;
          goto LABEL_62;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a4 || *(v8 + 72) != a5 || *(v8 + 76) != a6)
        {
          *(v8 + 64) = a3.n128_u32[0];
          *(v8 + 68) = a4;
          *(v8 + 72) = a5;
          *(v8 + 76) = a6;
LABEL_62:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (!a2)
    {
      v13 = *(this + 51);
      if (*v13 != a3.n128_f32[0] || *(v13 + 4) != a4 || *(v13 + 8) != a5 || *(v13 + 12) != a6)
      {
        *v13 = a3.n128_u32[0];
        *(v13 + 4) = a4;
        *(v13 + 8) = a5;
        *(v13 + 12) = a6;
        goto LABEL_62;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v11 = *(this + 51);
      if (*(v11 + 16) != a3.n128_f32[0] || *(v11 + 20) != a4 || *(v11 + 24) != a5 || *(v11 + 28) != a6)
      {
        *(v11 + 16) = a3.n128_u32[0];
        *(v11 + 20) = a4;
        *(v11 + 24) = a5;
        *(v11 + 28) = a6;
        goto LABEL_62;
      }

      return 0;
    }
  }

  return v7;
}

uint64_t LiHeDepthCompareProgram::GetParameter(LiHeDepthCompareProgram *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      v8 = *(this + 51);
      if (a2 == 5)
      {
        *a3 = v8[20];
        a3[1] = v8[21];
        a3[2] = v8[22];
        v5 = v8 + 23;
      }

      else
      {
        *a3 = v8[24];
        a3[1] = v8[25];
        a3[2] = v8[26];
        v5 = v8 + 27;
      }

      goto LABEL_22;
    }

    switch(a2)
    {
      case 7:
        v11 = *(this + 51);
        *a3 = v11[28];
        a3[1] = v11[29];
        a3[2] = v11[30];
        v5 = v11 + 31;
        goto LABEL_22;
      case 8:
        v12 = *(this + 51);
        *a3 = v12[32];
        a3[1] = v12[33];
        a3[2] = v12[34];
        v5 = v12 + 35;
        goto LABEL_22;
      case 9:
        v6 = *(this + 51);
        *a3 = v6[76];
        a3[1] = v6[77];
        a3[2] = v6[78];
        v5 = v6 + 79;
LABEL_22:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v10 = *(this + 51);
        *a3 = v10[8];
        a3[1] = v10[9];
        a3[2] = v10[10];
        v5 = v10 + 11;
      }

      else
      {
        v4 = *(this + 51);
        if (a2 == 3)
        {
          *a3 = v4[12];
          a3[1] = v4[13];
          a3[2] = v4[14];
          v5 = v4 + 15;
        }

        else
        {
          *a3 = v4[16];
          a3[1] = v4[17];
          a3[2] = v4[18];
          v5 = v4 + 19;
        }
      }

      goto LABEL_22;
    }

    if (!a2)
    {
      v9 = *(this + 51);
      *a3 = *v9;
      a3[1] = v9[1];
      a3[2] = v9[2];
      v5 = v9 + 3;
      goto LABEL_22;
    }

    if (a2 == 1)
    {
      v7 = *(this + 51);
      *a3 = v7[4];
      a3[1] = v7[5];
      a3[2] = v7[6];
      v5 = v7 + 7;
      goto LABEL_22;
    }
  }

  return v3;
}

const char *LiHeEdgeMixShader::GetProgram(LiHeEdgeMixShader *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    r2.x = r2.x*half(hg_Params[0].x);\n    output.color0 = mix(float4(r1), float4(r0), float4(r2.xxxx));\n    return output;\n}\n//MD5=329baea9:37f28717:51b4f96f:2eddef1b\n//SIG=02400000:00000000:00000000:00000000:0000:0001:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000397\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    r2.x = r2.x*hg_Params[0].x;\n    output.color0 = mix(r1, r0, r2.xxxx);\n    return output;\n}\n//MD5=021e87ba:b3c6fb4e:61b74d33:8fb9409f\n//SIG=02000000:00000000:00000000:00000000:0000:0001:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000031d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    r2.x = r2.x*hg_ProgramLocal0.x;\n    gl_FragColor = mix(r1, r0, r2.xxxx);\n}\n//MD5=289a3fa8:8db04128:043b615d:e96483b9\n//SIG=02000000:00000000:00000000:00000000:0000:0001:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_260059DE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26005A0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26005A160()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005A158);
}

uint64_t LiHeEdgeMixShader::BindTexture(LiHeEdgeMixShader *this, HGHandler *a2, int a3)
{
  if (a3 == 2)
  {
    v4 = a2;
    v5 = 2;
  }

  else if (a3 == 1)
  {
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeEdgeMixShader::Bind(LiHeEdgeMixShader *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeEdgeMixShader::RenderFragment(uint64_t a1, float32x4_t *a2, int32x2_t *a3)
{
  *v3.f32 = vadd_f32(vcvt_f32_s32(*a3), 0x3F0000003F000000);
  v3.i64[1] = 0x3F80000000000000;
  v4 = a3[11].i32[0];
  v5 = vsubq_f32(a2[1], v3);
  v6 = vaddq_s32(vcvtq_s32_f32(v5), vcltzq_f32(v5));
  v5.i64[0] = vsubq_f32(v5, vcvtq_f32_s32(v6)).u64[0];
  v7 = (*&a3[10] + 16 * (v6.i32[0] + v6.i32[1] * v4));
  v8 = vaddq_f32(*v7, vmulq_n_f32(vsubq_f32(v7[1], *v7), v5.f32[0]));
  v9 = vaddq_f32(v8, vmulq_lane_f32(vsubq_f32(vaddq_f32(v7[v4], vmulq_n_f32(vsubq_f32(v7[v4 + 1], v7[v4]), v5.f32[0])), v8), *v5.f32, 1));
  v10 = a3[13].i32[0];
  v11 = vsubq_f32(a2[2], v3);
  v12 = vaddq_s32(vcvtq_s32_f32(v11), vcltzq_f32(v11));
  v11.i64[0] = vsubq_f32(v11, vcvtq_f32_s32(v12)).u64[0];
  v13 = (*&a3[12] + 16 * (v12.i32[0] + v12.i32[1] * v10));
  v14 = vaddq_f32(*v13, vmulq_n_f32(vsubq_f32(v13[1], *v13), v11.f32[0]));
  v15 = vaddq_f32(v14, vmulq_lane_f32(vsubq_f32(vaddq_f32(v13[v10], vmulq_n_f32(vsubq_f32(v13[v10 + 1], v13[v10]), v11.f32[0])), v14), *v11.f32, 1));
  v16 = a3[15].i32[0];
  v17 = vsubq_f32(a2[3], v3);
  v18 = vaddq_s32(vcvtq_s32_f32(v17), vcltzq_f32(v17));
  v17.i64[0] = vsubq_f32(v17, vcvtq_f32_s32(v18)).u64[0];
  v19 = (*&a3[14] + 16 * (v18.i32[0] + v18.i32[1] * v16));
  v20 = vaddq_f32(*v19, vmulq_n_f32(vsubq_f32(v19[1], *v19), v17.f32[0]));
  **&a3[2] = vaddq_f32(v15, vmulq_n_f32(vsubq_f32(v9, v15), vmulq_f32(**(a1 + 408), vaddq_f32(v20, vmulq_lane_f32(vsubq_f32(vaddq_f32(v19[v16], vmulq_n_f32(vsubq_f32(v19[v16 + 1], v19[v16]), v17.f32[0])), v20), *v17.f32, 1))).f32[0]));
  return 0;
}

uint64_t LiHeEdgeMixShader::RenderTile(LiHeEdgeMixShader *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = 16 * a2[3].i32[0];
    v9 = v5;
    v10 = v5;
    v11 = v5;
    do
    {
      if (v6 >= 1)
      {
        v12 = 0;
        v13 = v9;
        v14 = v10;
        v15 = v11;
        do
        {
          v16 = a2[11].i32[0];
          v17 = vsubq_f32(v13, v5);
          v18 = vaddq_s32(vcvtq_s32_f32(v17), vcltzq_f32(v17));
          v17.i64[0] = vsubq_f32(v17, vcvtq_f32_s32(v18)).u64[0];
          v19 = (*&a2[10] + 16 * (v18.i32[0] + v18.i32[1] * v16));
          v20 = &v19[v16];
          v21 = *v20;
          v22 = vsubq_f32(v20[1], *v20);
          v23 = a2[13].i32[0];
          v24 = vsubq_f32(v14, v5);
          v25 = vaddq_s32(vcvtq_s32_f32(v24), vcltzq_f32(v24));
          v24.i64[0] = vsubq_f32(v24, vcvtq_f32_s32(v25)).u64[0];
          v26 = vaddq_f32(*v19, vmulq_n_f32(vsubq_f32(v19[1], *v19), v17.f32[0]));
          v27 = vmulq_n_f32(v22, v17.f32[0]);
          v28 = (*&a2[12] + 16 * (v25.i32[0] + v25.i32[1] * v23));
          v29 = vaddq_f32(*v28, vmulq_n_f32(vsubq_f32(v28[1], *v28), v24.f32[0]));
          v30 = vaddq_f32(v21, v27);
          v31 = vsubq_f32(v15, v5);
          v32 = vaddq_s32(vcvtq_s32_f32(v31), vcltzq_f32(v31));
          v31.i64[0] = vsubq_f32(v31, vcvtq_f32_s32(v32)).u64[0];
          v33 = vsubq_f32(vaddq_f32(v28[v23], vmulq_n_f32(vsubq_f32(v28[v23 + 1], v28[v23]), v24.f32[0])), v29);
          v34 = a2[15].i32[0];
          v35 = vmulq_lane_f32(vsubq_f32(v30, v26), *v17.f32, 1);
          v36 = (*&a2[14] + 16 * (v32.i32[0] + v32.i32[1] * v34));
          v37 = vmulq_lane_f32(v33, *v24.f32, 1);
          v38 = vaddq_f32(*v36, vmulq_n_f32(vsubq_f32(v36[1], *v36), v31.f32[0]));
          v39 = vaddq_f32(v29, v37);
          *(*&v7 + v12) = vaddq_f32(v39, vmulq_n_f32(vsubq_f32(vaddq_f32(v26, v35), v39), vmulq_f32(**(this + 51), vaddq_f32(v38, vmulq_lane_f32(vsubq_f32(vaddq_f32(v36[v34], vmulq_n_f32(vsubq_f32(v36[v34 + 1], v36[v34]), v31.f32[0])), v38), *v31.f32, 1))).f32[0]));
          v13 = vaddq_f32(v13, xmmword_2603429B0);
          v14 = vaddq_f32(v14, xmmword_2603429B0);
          v15 = vaddq_f32(v15, xmmword_2603429B0);
          v12 += 16;
        }

        while (16 * v6 != v12);
      }

      v9 = vaddq_f32(v9, xmmword_2603429C0);
      v10 = vaddq_f32(v10, xmmword_2603429C0);
      v11 = vaddq_f32(v11, xmmword_2603429C0);
      ++v4;
      *&v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeEdgeMixShader::GetDOD(LiHeEdgeMixShader *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 > 2)
  {
    return 0;
  }

  v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v5, v4, v6);
}

uint64_t LiHeEdgeMixShader::GetROI(LiHeEdgeMixShader *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 > 2)
  {
    return 0;
  }

  v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v5, v4, v6);
}

void LiHeEdgeMixShader::LiHeEdgeMixShader(LiHeEdgeMixShader *this)
{
  HGNode3D::HGNode3D(this);
  *v1 = &unk_287273F60;
  operator new();
}

void LiHeEdgeMixShader::~LiHeEdgeMixShader(LiHeEdgeMixShader *this)
{
  *this = &unk_287273F60;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  LiHeEdgeMixShader::~LiHeEdgeMixShader(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeEdgeMixShader::SetParameter(LiHeEdgeMixShader *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float LiHeEdgeMixShader::GetParameter(LiHeEdgeMixShader *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *LiHeEdgeNodeFragment::GetProgram(LiHeEdgeNodeFragment *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002f8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r0 = r0*r1.xxxx;\n    output.color0 = float4(r0)*hg_Params[0];\n    return output;\n}\n//MD5=776258c9:0558b71d:d6edd159:1890a0b9\n//SIG=02400000:00000000:00000000:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002e4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r0 = r0*r1.xxxx;\n    output.color0 = r0*hg_Params[0];\n    return output;\n}\n//MD5=91caf8fd:f4bf4ef2:0c5f5a68:5aaf2328\n//SIG=02000000:00000000:00000000:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000028e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = texture2D(hg_Texture1, hg_TexCoord1.xy).x;\n    r0 = r0*r1.xxxx;\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=7f424e0c:12bea71a:1686b0ce:a712a6c3\n//SIG=02000000:00000000:00000000:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_26005AA14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26005AC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26005ACBC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005ACB4);
}

uint64_t LiHeEdgeNodeFragment::BindTexture(LiHeEdgeNodeFragment *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeEdgeNodeFragment::Bind(LiHeEdgeNodeFragment *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeEdgeNodeFragment::RenderFragment(uint64_t a1, float32x4_t *a2, int32x2_t *a3)
{
  *v3.f32 = vadd_f32(vcvt_f32_s32(*a3), 0x3F0000003F000000);
  v3.i64[1] = 0x3F80000000000000;
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5 = vaddq_f32(vsubq_f32(a2[1], v3), v4);
  v6 = vcvtq_s32_f32(v5);
  v5.i64[0] = vaddq_s32(v6, vcgtq_f32(vcvtq_f32_s32(v6), v5)).u64[0];
  v7 = a3[13].i32[0];
  v8 = vsubq_f32(a2[2], v3);
  v9 = vaddq_s32(vcvtq_s32_f32(v8), vcltzq_f32(v8));
  v8.i64[0] = vsubq_f32(v8, vcvtq_f32_s32(v9)).u64[0];
  v10 = (*&a3[12] + 16 * (v9.i32[0] + v9.i32[1] * v7));
  v11 = vaddq_f32(*v10, vmulq_n_f32(vsubq_f32(v10[1], *v10), v8.f32[0]));
  **&a3[2] = vmulq_f32(**(a1 + 408), vmulq_n_f32(*(*&a3[10] + 16 * (v5.i32[0] + v5.i32[1] * a3[11].i32[0])), vaddq_f32(v11, vmulq_lane_f32(vsubq_f32(vaddq_f32(v10[v7], vmulq_n_f32(vsubq_f32(v10[v7 + 1], v10[v7]), v8.f32[0])), v11), *v8.f32, 1)).f32[0]));
  return 0;
}

uint64_t LiHeEdgeNodeFragment::RenderTile(LiHeEdgeNodeFragment *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = a2[10];
    v9 = 16 * a2[3].i32[0];
    v10 = 16 * a2[11].i32[0];
    v11 = v5;
    do
    {
      if (v6 >= 1)
      {
        v12 = 0;
        v13 = v11;
        do
        {
          v14 = vsubq_f32(v13, v5);
          v15 = a2[13].i32[0];
          v16 = vaddq_s32(vcvtq_s32_f32(v14), vcltzq_f32(v14));
          v14.i64[0] = vsubq_f32(v14, vcvtq_f32_s32(v16)).u64[0];
          v17 = (*&a2[12] + 16 * (v16.i32[0] + v16.i32[1] * v15));
          v18 = vaddq_f32(*v17, vmulq_n_f32(vsubq_f32(v17[1], *v17), v14.f32[0]));
          *(*&v7 + v12) = vmulq_f32(**(this + 51), vmulq_n_f32(*(*&v8 + v12), vaddq_f32(v18, vmulq_lane_f32(vsubq_f32(vaddq_f32(v17[v15], vmulq_n_f32(vsubq_f32(v17[v15 + 1], v17[v15]), v14.f32[0])), v18), *v14.f32, 1)).f32[0]));
          v13 = vaddq_f32(v13, xmmword_2603429B0);
          v12 += 16;
        }

        while (16 * v6 != v12);
      }

      v11 = vaddq_f32(v11, xmmword_2603429C0);
      ++v4;
      *&v7 += v9;
      *&v8 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeEdgeNodeFragment::GetDOD(LiHeEdgeNodeFragment *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v5, v4, v6);
  }

  else if (a3)
  {
    return 0;
  }

  return v5;
}

uint64_t LiHeEdgeNodeFragment::GetROI(LiHeEdgeNodeFragment *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v5, v4, v6);
  }

  else if (a3)
  {
    return 0;
  }

  return v5;
}

void LiHeEdgeNodeFragment::LiHeEdgeNodeFragment(LiHeEdgeNodeFragment *this)
{
  HGNode3D::HGNode3D(this);
  *v1 = &unk_2872741D8;
  operator new();
}

void LiHeEdgeNodeFragment::~LiHeEdgeNodeFragment(LiHeEdgeNodeFragment *this)
{
  *this = &unk_2872741D8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  LiHeEdgeNodeFragment::~LiHeEdgeNodeFragment(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeEdgeNodeFragment::SetParameter(LiHeEdgeNodeFragment *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (v8->n128_f32[0] == a3.n128_f32[0] && v8->n128_f32[1] == a3.n128_f32[0] && v8->n128_f32[2] == a3.n128_f32[0] && v8->n128_f32[3] == a3.n128_f32[0])
  {
    return 0;
  }

  v9 = vdupq_lane_s32(a3.n128_u64[0], 0);
  a3.n128_f32[1] = a4;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  *v8 = v9;
  v8[1] = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float LiHeEdgeNodeFragment::GetParameter(LiHeEdgeNodeFragment *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = v3[4];
    a3[1] = v3[5];
    a3[2] = v3[6];
    result = v3[7];
    a3[3] = result;
  }

  return result;
}

const char *LiHeEdgeNodeWithXFormFragment::GetProgram(LiHeEdgeNodeWithXFormFragment *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000038a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = half2(frag._texCoord0.xy)/half2(frag._texCoord0.ww);\n    r0.xy = r0.xy + half2(hg_Params[5].xy);\n    r0.xy = r0.xy*half2(hg_Params[5].zw);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, float2(r0.xy));\n    r1.x = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r0 = r0*r1.xxxx;\n    output.color0 = float4(r0)*hg_Params[0];\n    return output;\n}\n//MD5=9186d44e:abc67012:5c761aab:4f124505\n//SIG=02400000:00000000:00000000:00000000:0000:0006:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000352\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy/frag._texCoord0.ww;\n    r0.xy = r0.xy + hg_Params[5].xy;\n    r0.xy = r0.xy*hg_Params[5].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r1.x = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r0 = r0*r1.xxxx;\n    output.color0 = r0*hg_Params[0];\n    return output;\n}\n//MD5=dd607e12:c1554aa4:ccd85c6f:4b9ff255\n//SIG=02000000:00000000:00000000:00000000:0000:0006:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003b4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    highp vec4 r0, r1;\n\n    r0.xy = hg_TexCoord0.xy/hg_TexCoord0.ww;\n    r0.xy = r0.xy + hg_ProgramLocal5.xy;\n    r0.xy = r0.xy*hg_ProgramLocal5.zw;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r1.x = texture2D(hg_Texture1, hg_TexCoord1.xy).x;\n    r0 = r0*r1.xxxx;\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=015bd0f0:5cc8b24a:3ee1c36b:8556a0be\n//SIG=02000000:00000000:00000000:00000000:0000:0006:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_26005B44C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260346000;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26005B68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26005B6F4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005B6ECLL);
}

uint64_t LiHeEdgeNodeWithXFormFragment::BindTexture(LiHeEdgeNodeWithXFormFragment *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    HGHandler::TexCoord(a2, 1, 0, 0, 0);
    v8 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (v8)
    {
      return result;
    }

    (*(*a2 + 168))(a2);
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v6.n128_u32[0] = 1.0;
      v7.n128_u32[0] = 1.0;
    }

    else
    {
      v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v4.n128_f32[0] = *(a2 + 60);
    v5.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 5, v4, v5, v6, v7);
  }

  return 0;
}

uint64_t LiHeEdgeNodeWithXFormFragment::Bind(LiHeEdgeNodeWithXFormFragment *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 120))(a2, *(this + 51) + 16);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeEdgeNodeWithXFormFragment::RenderFragment(uint64_t a1, float32x4_t *a2, int32x2_t *a3)
{
  *v3.f32 = vadd_f32(vcvt_f32_s32(*a3), 0x3F0000003F000000);
  v3.i64[1] = 0x3F80000000000000;
  v4 = a2[1];
  v5 = vdupq_laneq_s32(v4, 3);
  v6 = *(a1 + 408);
  v7 = v6[9];
  v8 = v6[10];
  v9 = vminq_f32(vmaxq_f32(vrecpeq_f32(v5), v7), v8);
  v10 = vminq_f32(vmaxq_f32(vmulq_f32(v9, vrecpsq_f32(v5, v9)), v7), v8);
  v11 = a3[11].i32[0];
  v12 = vsubq_f32(vmulq_f32(v4, vmulq_f32(v10, vrecpsq_f32(v5, v10))), v3);
  v13 = vaddq_s32(vcvtq_s32_f32(v12), vcltzq_f32(v12));
  v12.i64[0] = vsubq_f32(v12, vcvtq_f32_s32(v13)).u64[0];
  v14 = (*&a3[10] + 16 * (v13.i32[0] + v13.i32[1] * v11));
  v15 = vaddq_f32(*v14, vmulq_n_f32(vsubq_f32(v14[1], *v14), v12.f32[0]));
  v16 = vaddq_f32(v15, vmulq_lane_f32(vsubq_f32(vaddq_f32(v14[v11], vmulq_n_f32(vsubq_f32(v14[v11 + 1], v14[v11]), v12.f32[0])), v15), *v12.f32, 1));
  v17 = a3[13].i32[0];
  v18 = vsubq_f32(a2[2], v3);
  v19 = vaddq_s32(vcvtq_s32_f32(v18), vcltzq_f32(v18));
  v18.i64[0] = vsubq_f32(v18, vcvtq_f32_s32(v19)).u64[0];
  v20 = (*&a3[12] + 16 * (v19.i32[0] + v19.i32[1] * v17));
  v21 = vaddq_f32(*v20, vmulq_n_f32(vsubq_f32(v20[1], *v20), v18.f32[0]));
  **&a3[2] = vmulq_f32(*v6, vmulq_n_f32(v16, vaddq_f32(v21, vmulq_lane_f32(vsubq_f32(vaddq_f32(v20[v17], vmulq_n_f32(vsubq_f32(v20[v17 + 1], v20[v17]), v18.f32[0])), v21), *v18.f32, 1)).f32[0]));
  return 0;
}

uint64_t LiHeEdgeNodeWithXFormFragment::RenderTile(LiHeEdgeNodeWithXFormFragment *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = 16 * a2[3].i32[0];
    v9 = v5;
    v10 = v5;
    do
    {
      if (v6 >= 1)
      {
        v11 = 0;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = vdupq_laneq_s32(v12, 3);
          v15 = *(this + 51);
          v16 = v15[9];
          v17 = v15[10];
          v18 = vminq_f32(vmaxq_f32(vrecpeq_f32(v14), v16), v17);
          v19 = vminq_f32(vmaxq_f32(vmulq_f32(v18, vrecpsq_f32(v14, v18)), v16), v17);
          v20 = a2[11].i32[0];
          v21 = vsubq_f32(vmulq_f32(v12, vmulq_f32(v19, vrecpsq_f32(v14, v19))), v5);
          v22 = vaddq_s32(vcvtq_s32_f32(v21), vcltzq_f32(v21));
          v21.i64[0] = vsubq_f32(v21, vcvtq_f32_s32(v22)).u64[0];
          v23 = (*&a2[10] + 16 * (v22.i32[0] + v22.i32[1] * v20));
          v24 = vaddq_f32(*v23, vmulq_n_f32(vsubq_f32(v23[1], *v23), v21.f32[0]));
          v25 = vaddq_f32(v24, vmulq_lane_f32(vsubq_f32(vaddq_f32(v23[v20], vmulq_n_f32(vsubq_f32(v23[v20 + 1], v23[v20]), v21.f32[0])), v24), *v21.f32, 1));
          v26 = a2[13].i32[0];
          v27 = vsubq_f32(v13, v5);
          v28 = vaddq_s32(vcvtq_s32_f32(v27), vcltzq_f32(v27));
          v27.i64[0] = vsubq_f32(v27, vcvtq_f32_s32(v28)).u64[0];
          v29 = (*&a2[12] + 16 * (v28.i32[0] + v28.i32[1] * v26));
          v30 = vaddq_f32(*v29, vmulq_n_f32(vsubq_f32(v29[1], *v29), v27.f32[0]));
          *(*&v7 + v11) = vmulq_f32(*v15, vmulq_n_f32(v25, vaddq_f32(v30, vmulq_lane_f32(vsubq_f32(vaddq_f32(v29[v26], vmulq_n_f32(vsubq_f32(v29[v26 + 1], v29[v26]), v27.f32[0])), v30), *v27.f32, 1)).f32[0]));
          v12 = vaddq_f32(v12, xmmword_2603429B0);
          v13 = vaddq_f32(v13, xmmword_2603429B0);
          v11 += 16;
        }

        while (16 * v6 != v11);
      }

      v9 = vaddq_f32(v9, xmmword_2603429C0);
      v10 = vaddq_f32(v10, xmmword_2603429C0);
      ++v4;
      *&v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeEdgeNodeWithXFormFragment::GetDOD(LiHeEdgeNodeWithXFormFragment *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    v16 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v5, v4, v16);
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v8 = HGRectGrow(v5, v4, v7);
    v10 = v9;
    HGTransform::HGTransform(v18);
    HGTransform::LoadMatrixf(v18, (*(this + 51) + 16));
    HGTransform::Invert2D(v18);
    v12 = HGTransformUtils::MinW(v11);
    *&v19.var0 = v10;
    DOD = HGTransformUtils::GetDOD(v18, v8, v19, 0.5, v12);
    v15 = HGRectUnion(0, 0, DOD, v14);
    HGTransform::~HGTransform(v18);
  }

  return v15;
}

uint64_t LiHeEdgeNodeWithXFormFragment::GetROI(LiHeEdgeNodeWithXFormFragment *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v15 = v5;
    v16 = v4;
    return HGRectGrow(v15, v16, v14);
  }

  if (!a3)
  {
    HGTransform::HGTransform(v18);
    HGTransform::LoadMatrixf(v18, (*(this + 51) + 16));
    v8 = HGTransformUtils::MinW(v7);
    *&v19.var0 = v4;
    ROI = HGTransformUtils::GetROI(v18, v5, v19, 0.5, v8);
    v11 = HGRectUnion(0, 0, ROI, v10);
    v13 = v12;
    HGTransform::~HGTransform(v18);
    v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v15 = v11;
    v16 = v13;
    return HGRectGrow(v15, v16, v14);
  }

  return 0;
}

void LiHeEdgeNodeWithXFormFragment::LiHeEdgeNodeWithXFormFragment(LiHeEdgeNodeWithXFormFragment *this)
{
  HGNode3D::HGNode3D(this);
  *v1 = &unk_287274450;
  *(v1 + 416) = 1;
  operator new();
}

void LiHeEdgeNodeWithXFormFragment::~LiHeEdgeNodeWithXFormFragment(LiHeEdgeNodeWithXFormFragment *this)
{
  *this = &unk_287274450;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  LiHeEdgeNodeWithXFormFragment::~LiHeEdgeNodeWithXFormFragment(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeEdgeNodeWithXFormFragment::SetParameter(LiHeEdgeNodeWithXFormFragment *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (v8->n128_f32[0] == a3.n128_f32[0] && v8->n128_f32[1] == a3.n128_f32[0] && v8->n128_f32[2] == a3.n128_f32[0] && v8->n128_f32[3] == a3.n128_f32[0])
  {
    return 0;
  }

  v9 = vdupq_lane_s32(a3.n128_u64[0], 0);
  a3.n128_f32[1] = a4;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  *v8 = v9;
  v8[11] = a3;
  v7 = 1;
  *(this + 104) = 1;
  HGNode::ClearBits(this, a2, a7);
  return v7;
}

float LiHeEdgeNodeWithXFormFragment::GetParameter(LiHeEdgeNodeWithXFormFragment *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = v3[44];
    a3[1] = v3[45];
    a3[2] = v3[46];
    result = v3[47];
    a3[3] = result;
  }

  return result;
}

double LiHeEdgeNodeWithXFormFragment::GetOutput(LiHeEdgeNodeWithXFormFragment *this, HGRenderer *a2)
{
  if (*(this + 104))
  {
    v2 = *(this + 51);
    v3 = *(v2 + 96);
    *(v2 + 16) = *(v2 + 80);
    *(*(this + 51) + 32) = v3;
    *(*(this + 51) + 48) = xmmword_2603429D0;
    result = 0.0;
    *(*(this + 51) + 64) = xmmword_2603427D0;
    *(this + 104) = 0;
  }

  return result;
}

const char *LiHeGridShader::GetProgram(LiHeGridShader *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000bf3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 2.000000000, 1.000000000, -0.2500000000);\n    const half4 c1 = half4(1.333333373, 0.1500000060, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2, s3;\n    FragmentOut output;\n\n    s0.x = dot(frag._texCoord0, hg_Params[8]);\n    s1.x = 1.00000f / s0.x;\n    r0.x = 1.00000h / half(hg_Params[1].x);\n    s2.zw = s1.xx*hg_Params[8].xy;\n    s2.y = dot(frag._texCoord0, hg_Params[7]);\n    s1.zw = s2.zw*-s2.yy + hg_Params[7].xy;\n    s1.zw = s1.xx*s1.zw;\n    s2.x = dot(frag._texCoord0, hg_Params[6]);\n    s2.zw = -s2.xx*s2.zw + hg_Params[6].xy;\n    s2.zw = s2.zw*s1.xx;\n    s1.yz = abs(s1.wz);\n    r0.z = dot(half2(s1.yz), 1.00000h);\n    s1.xy = s1.xx*s2.xy;\n    s2.xy = s1.xy*float2(r0.xx);\n    s0.y = 1.00000f / hg_Params[0].x;\n    s2.xy = fract(s2.xy);\n    s2.xy = s2.xy - float2(c0.xx);\n    s2 = abs(s2);\n    s2.xy = -s2.xy + float2(c0.xx);\n    s1.xy = s0.yy*s1.xy;\n    s2.z = dot(s2.zw, 1.00000f);\n    s2.w = float(r0.z);\n    s1.zw = s2.zw*float2(r0.xx);\n    s1.zw = s1.zw*float2(c0.yy) + float2(c0.zz);\n    s1.zw = s2.zw*s1.zw;\n    s2.xy = s2.xy*-hg_Params[1].xx;\n    s1.zw = 1.00000f / s1.zw;\n    s1.zw = clamp(s2.xy*s1.zw + hg_Params[9].xx, 0.00000f, 1.00000f);\n    s2.xy = s2.zw*float2(r0.xx) + float2(c0.ww);\n    s2.xy = clamp(s2.xy*float2(c1.xx), 0.00000f, 1.00000f);\n    r0.xy = mix(half2(s1.zw), c0.zz, half2(s2.xy));\n    s2.x = 1.00000f / s2.z;\n    s2.y = 1.00000f / float(r0.z);\n    s2.zw = s2.zw*s0.yy + float2(c0.ww);\n    s1.zw = fract(s1.xy);\n    r0.zw = half2(s2.xy)*half2(hg_Params[1].xx);\n    r0.zw = clamp(r0.zw*c1.yy, 0.00000h, 1.00000h);\n    r0.xy = r0.xy*r0.zw;\n    r0.zw = half2(s2.xy)*half2(hg_Params[0].xx);\n    s1.zw = s1.zw - float2(c0.xx);\n    s1.zw = -fabs(s1.zw) + float2(c0.xx);\n    s1.zw = s1.zw*-hg_Params[0].xx;\n    s2.xy = clamp(s1.zw*s2.xy + hg_Params[9].xx, 0.00000f, 1.00000f);\n    s2.zw = clamp(s2.zw*float2(c1.xx), 0.00000f, 1.00000f);\n    s2.xy = mix(s2.xy, float2(c0.zz), s2.zw);\n    r0.zw = clamp(r0.zw*c1.yy, 0.00000h, 1.00000h);\n    s2.xy = s2.xy*float2(r0.zw);\n    s2.z = fmax(float(r0.x), float(r0.y));\n    s3.xy = fmax(s2.xy, float2(c1.zz));\n    s3.zw = fabs(s1.xy) + float2(c0.ww);\n    s2.x = fmax(s2.z, float(c1.z));\n    s0.y = fmax(s3.x, s3.y);\n    s2.z = -s0.y*float(c0.y) + s2.x;\n    s0.z = fmax(s2.z, float(c1.z));\n    s3.zw = clamp(s3.zw + s3.zw, 0.00000f, 1.00000f);\n    s1 = mix(hg_Params[4], hg_Params[2], s3.wwww);\n    s2 = mix(hg_Params[5], hg_Params[2], s3.zzzz);\n    s2 = s3.xxxx*s2;\n    s1 = s3.yyyy*s1;\n    s2 = fmax(s2, s1);\n    s3 = s0.zzzz*hg_Params[3];\n    s1.x = float(c0.z) - s0.y;\n    s2 = s3*s1.xxxx + s2;\n    s2.xyz = pow(s2.xyz, hg_Params[10].xyz);\n    s0.x = float(s0.x >= float(c1.z));\n    output.color0 = s2*s0.xxxx;\n    return output;\n}\n//MD5=ed8ec89c:8d8bad1c:31b22599:a4072085\n//SIG=00400000:00000000:00000000:00000000:0002:000b:0005:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000aeb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 2.000000000, 1.000000000, -0.2500000000);\n    const float4 c1 = float4(1.333333373, 0.1500000060, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.x = dot(frag._texCoord0, hg_Params[8]);\n    r1.x = 1.00000f / r0.x;\n    r2.x = 1.00000f / hg_Params[1].x;\n    r3.zw = r1.xx*hg_Params[8].xy;\n    r3.y = dot(frag._texCoord0, hg_Params[7]);\n    r1.zw = r3.zw*-r3.yy + hg_Params[7].xy;\n    r1.zw = r1.xx*r1.zw;\n    r3.x = dot(frag._texCoord0, hg_Params[6]);\n    r3.zw = -r3.xx*r3.zw + hg_Params[6].xy;\n    r3.zw = r3.zw*r1.xx;\n    r1.yz = abs(r1.wz);\n    r2.z = dot(r1.yz, 1.00000f);\n    r1.xy = r1.xx*r3.xy;\n    r3.xy = r1.xy*r2.xx;\n    r0.y = 1.00000f / hg_Params[0].x;\n    r3.xy = fract(r3.xy);\n    r3.xy = r3.xy - c0.xx;\n    r3 = abs(r3);\n    r3.xy = -r3.xy + c0.xx;\n    r1.xy = r0.yy*r1.xy;\n    r3.z = dot(r3.zw, 1.00000f);\n    r3.w = r2.z;\n    r1.zw = r3.zw*r2.xx;\n    r1.zw = r1.zw*c0.yy + c0.zz;\n    r1.zw = r3.zw*r1.zw;\n    r3.xy = r3.xy*-hg_Params[1].xx;\n    r1.zw = 1.00000f / r1.zw;\n    r1.zw = clamp(r3.xy*r1.zw + hg_Params[9].xx, 0.00000f, 1.00000f);\n    r3.xy = r3.zw*r2.xx + c0.ww;\n    r3.xy = clamp(r3.xy*c1.xx, 0.00000f, 1.00000f);\n    r2.xy = mix(r1.zw, c0.zz, r3.xy);\n    r3.x = 1.00000f / r3.z;\n    r3.y = 1.00000f / r2.z;\n    r3.zw = r3.zw*r0.yy + c0.ww;\n    r1.zw = fract(r1.xy);\n    r2.zw = r3.xy*hg_Params[1].xx;\n    r2.zw = clamp(r2.zw*c1.yy, 0.00000f, 1.00000f);\n    r2.xy = r2.xy*r2.zw;\n    r2.zw = r3.xy*hg_Params[0].xx;\n    r1.zw = r1.zw - c0.xx;\n    r1.zw = -fabs(r1.zw) + c0.xx;\n    r1.zw = r1.zw*-hg_Params[0].xx;\n    r3.xy = clamp(r1.zw*r3.xy + hg_Params[9].xx, 0.00000f, 1.00000f);\n    r3.zw = clamp(r3.zw*c1.xx, 0.00000f, 1.00000f);\n    r3.xy = mix(r3.xy, c0.zz, r3.zw);\n    r2.zw = clamp(r2.zw*c1.yy, 0.00000f, 1.00000f);\n    r3.xy = r3.xy*r2.zw;\n    r3.z = fmax(r2.x, r2.y);\n    r2.xy = fmax(r3.xy, c1.zz);\n    r2.zw = fabs(r1.xy) + c0.ww;\n    r3.x = fmax(r3.z, c1.z);\n    r0.y = fmax(r2.x, r2.y);\n    r3.z = -r0.y*c0.y + r3.x;\n    r0.z = fmax(r3.z, c1.z);\n    r2.zw = clamp(r2.zw + r2.zw, 0.00000f, 1.00000f);\n    r1 = mix(hg_Params[4], hg_Params[2], r2.wwww);\n    r3 = mix(hg_Params[5], hg_Params[2], r2.zzzz);\n    r3 = r2.xxxx*r3;\n    r1 = r2.yyyy*r1;\n    r3 = fmax(r3, r1);\n    r2 = r0.zzzz*hg_Params[3];\n    r1.x = c0.z - r0.y;\n    r3 = r2*r1.xxxx + r3;\n    r3.xyz = pow(r3.xyz, hg_Params[10].xyz);\n    r0.x = float(r0.x >= c1.z);\n    output.color0 = r3*r0.xxxx;\n    return output;\n}\n//MD5=686d35cb:f7c64bbf:a273928a:e418b585\n//SIG=00000000:00000000:00000000:00000000:0002:000b:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000cfa\n"
           "#ifndef GL_ES\n"
           "#define lowp\n"
           "#define mediump\n"
           "#define highp\n"
           "#endif\n"
           "#define defaultp mediump\n"
           "uniform highp vec4 hg_ProgramLocal0;\n"
           "uniform highp vec4 hg_ProgramLocal1;\n"
           "uniform highp vec4 hg_ProgramLocal2;\n"
           "uniform highp vec4 hg_ProgramLocal3;\n"
           "uniform highp vec4 hg_ProgramLocal4;\n"
           "uniform highp vec4 hg_ProgramLocal5;\n"
           "uniform highp vec4 hg_ProgramLocal6;\n"
           "uniform highp vec4 hg_ProgramLocal7;\n"
           "uniform highp vec4 hg_ProgramLocal8;\n"
           "uniform highp vec4 hg_ProgramLocal9;\n"
           "uniform highp vec4 hg_ProgramLocal10;\n"
           "varying highp vec4 hg_TexCoord0;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(0.5000000000, 2.000000000, 1.000000000, -0.2500000000);\n"
           "    const highp vec4 c1 = vec4(1.333333373, 0.1500000060, 0.000000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2, r3;\n"
           "\n"
           "    r0.x = dot(hg_TexCoord0, hg_ProgramLocal8);\n"
           "    r1.x = 1.00000 / r0.x;\n"
           "    r2.x = 1.00000 / hg_ProgramLocal1.x;\n"
           "    r3.zw = r1.xx*hg_ProgramLocal8.xy;\n"
           "    r3.y = dot(hg_TexCoord0, hg_ProgramLocal7);\n"
           "    r1.zw = r3.zw*-r3.yy + hg_ProgramLocal7.xy;\n"
           "    r1.zw = r1.xx*r1.zw;\n"
           "    r3.x = dot(hg_TexCoord0, hg_ProgramLocal6);\n"
           "    r3.zw = -r3.xx*r3.zw + hg_ProgramLocal6.xy;\n"
           "    r3.zw = r3.zw*r1.xx;\n"
           "    r1.yz = abs(r1.wz);\n"
           "    r2.z = dot(r1.yz, vec2(1.00000));\n"
           "    r1.xy = r1.xx*r3.xy;\n"
           "    r3.xy = r1.xy*r2.xx;\n"
           "    r0.y = 1.00000 / hg_ProgramLocal0.x;\n"
           "    r3.xy = fract(r3.xy);\n"
           "    r3.xy = r3.xy - c0.xx;\n"
           "    r3 = abs(r3);\n"
           "    r3.xy = -r3.xy + c0.xx;\n"
           "    r1.xy = r0.yy*r1.xy;\n"
           "    r3.z = dot(r3.zw, vec2(1.00000));\n"
           "    r3.w = r2.z;\n"
           "    r1.zw = r3.zw*r2.xx;\n"
           "    r1.zw = r1.zw*c0.yy + c0.zz;\n"
           "    r1.zw = r3.zw*r1.zw;\n"
           "    r3.xy = r3.xy*-hg_ProgramLocal1.xx;\n"
           "    r1.zw = vec2(1.00000) / r1.zw;\n"
           "    r1.zw = clamp(r3.xy*r1.zw + hg_ProgramLocal9.xx, vec2(0.00000), vec2(1.00000));\n"
           "    r3.xy = r3.zw*r2.xx + c0.ww;\n"
           "    r3.xy = clamp(r3.xy*c1.xx, vec2(0.00000), vec2(1.00000));\n"
           "    r2.xy = mix(r1.zw, c0.zz, r3.xy);\n"
           "    r3.x = 1.00000 / r3.z;\n"
           "    r3.y = 1.00000 / r2.z;\n"
           "    r3.zw = r3.zw*r0.yy + c0.ww;\n"
           "    r1.zw = fract(r1.xy);\n"
           "    r2.zw = r3.xy*hg_ProgramLocal1.xx;\n"
           "    r2.zw = clamp(r2.zw*c1.yy, vec2(0.00000), vec2(1.00000));\n"
           "    r2.xy = r2.xy*r2.zw;\n"
           "    r2.zw = r3.xy*hg_ProgramLocal0.xx;\n"
           "    r1.zw = r1.zw - c0.xx;\n"
           "    r1.zw = -abs(r1.zw) + c0.xx;\n"
           "    r1.zw = r1.zw*-hg_ProgramLocal0.xx;\n"
           "    r3.xy = clamp(r1.zw*r3.xy + hg_ProgramLocal9.xx, vec2(0.00000), vec2(1.00000));\n"
           "    r3.zw = clamp(r3.zw*c1.xx, vec2(0.00000), vec2(1.00000));\n"
           "    r3.xy = mix(r3.xy, c0.zz, r3.zw);\n"
           "    r2.zw = clamp(r2.zw*c1.yy, vec2(0.00000), vec2(1.00000));\n"
           "    r3.xy = r3.xy*r2.zw;\n"
           "    r3.z = max(r2.x, r2.y);\n"
           "    r2.xy = max(r3.xy, c1.zz);\n"
           "    r2.zw = abs(r1.xy) + c0.ww;\n"
           "    r3.x = max(r3.z, c1.z);\n"
           "    r0.y = max(r2.x, r2.y);\n"
           "    r3.z = -r0.y*c0.y + r3.x;\n"
           "    r0.z = max(r3.z, c1.z);\n"
           "    r2.zw = clamp(r2.zw + r2.zw, vec2(0.00000), vec2(1.00000));\n"
           "    r1 = mix(hg_ProgramLocal4, hg_ProgramLocal2, r2.wwww);\n"
           "    r3 = mix(hg_ProgramLocal5, hg_ProgramLocal2, r2.zzzz);\n"
           "    r3 = r2.xxxx*r3;\n"
           "    r1 = r2.yyyy*r1;\n"
           "    r3 = max(r3, r1);\n"
           "    r2 = r0.zzzz*hg_ProgramLocal3;\n"
           "    r1.x = c0.z - r0.y;\n"
           "    r3 = r2*r1.xxxx + r3;\n"
           "    r3.xyz = pow(r3.xyz, hg_ProgramLocal10.xyz);\n"
           "    r0.x = float(r0.x >= c1.z);\n"
           "    gl_FragColor = r3*r0.xxxx;\n"
           "}\n"
           "//MD5=545c6776:d003218f:e4cdaa44:c07590d0\n"
           "//SIG=00000000:00000000:00000000:00000000:0002:000b:0004:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_26005C344(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344B10;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26005C444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26005C484()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005C47CLL);
}

uint64_t LiHeGridShader::Bind(LiHeGridShader *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeGridShader::RenderTile(LiHeGridShader *this, HGTile *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 3) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 2) - *a2;
    v6 = *(a2 + 2);
    v7.f32[0] = *a2 + 0.5;
    v7.f32[1] = v2 + 0.5;
    v7.i32[2] = 0;
    v7.i32[3] = 1.0;
    v8 = 16 * *(a2 + 6);
    do
    {
      if (v5 >= 1)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = *(this + 51);
          v13 = *(v11 + 8);
          v12 = *(v11 + 9);
          v14 = vmulq_f32(v10, v13);
          v15 = vaddq_f32(v14, vextq_s8(v14, v14, 4uLL));
          v16 = vaddq_f32(v15, vextq_s8(v15, v15, 8uLL));
          v17 = *(v11 + 10);
          v18 = *(v11 + 11);
          v20 = *(v11 + 12);
          v19 = *(v11 + 13);
          v21 = vminq_f32(vmaxq_f32(vrecpeq_f32(v16), v18), v20);
          v22 = vminq_f32(vmaxq_f32(vmulq_f32(v21, vrecpsq_f32(v16, v21)), v18), v20);
          v23 = *(v11 + 1);
          v24 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v23), v19), v18), v20);
          v22.i64[0] = vmulq_f32(v22, vrecpsq_f32(v16, v22)).u64[0];
          v26 = *(v11 + 6);
          v25 = *(v11 + 7);
          v27 = vmulq_f32(v10, v25);
          v28 = vdupq_lane_s32(*v22.f32, 0);
          v29 = vaddq_f32(v27, vextq_s8(v27, v27, 4uLL));
          v30.i64[0] = vaddq_f32(v29, vdupq_laneq_s64(v29, 1)).u64[0];
          v30.i64[1] = vmulq_n_f32(vdupq_lane_s64(*&v13, 0), *&v22).i64[1];
          v31 = vmulq_f32(v10, v26);
          v32 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
          v33 = vaddq_f32(v32, vextq_s8(v32, v32, 8uLL));
          *v13.f32 = vsub_f32(*v25.f32, vmul_lane_f32(*&vextq_s8(v30, v30, 8uLL), *v30.i8, 1));
          v34 = *(v11 + 14);
          v35 = *(v11 + 15);
          v36 = vbslq_s8(v34, v33, v30);
          v37 = vmulq_n_f32(vsubq_f32(vdupq_lane_s64(v26.i64[0], 0), vmulq_n_f32(v36, v36.f32[0])), v22.f32[0]);
          *&v22.u32[2] = vmul_f32(*&vextq_s8(v28, v28, 8uLL), *v13.f32);
          v36.i64[1] = v37.i64[1];
          *v28.i8 = vqtbl1_s8(v22, *v35.i8);
          v28.u64[1] = vqtbl1_s8(v22, *&vextq_s8(v35, v35, 8uLL));
          v35.i64[0] = vmulq_f32(v24, vrecpsq_f32(v23, v24)).u64[0];
          v38 = *(v11 + 17);
          v39 = vandq_s8(*(v11 + 16), v28);
          v40 = vmulq_n_f32(v36, v39.f32[0]);
          v41 = vmulq_n_f32(v40, *v35.i32);
          v36.i64[0] = v41.i64[0];
          v36.i64[1] = v37.i64[1];
          v42 = vrev64q_s32(*v11);
          v43 = vminq_f32(vmaxq_f32(vmulq_f32(v19, vrecpeq_f32(v42)), v18), v20);
          v44 = vmulq_f32(v43, vrecpsq_f32(v42, v43));
          v45 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
          v46 = vsubq_f32(v41, vsubq_f32(v45, vbslq_s8(vcgtq_f32(v45, v36), v38, 0)));
          v47 = vaddq_f32(vextq_s8(v7, v39, 0xCuLL), v39);
          v48 = *(v11 + 18);
          v46.i64[0] = vsubq_f32(v46, v48).u64[0];
          v46.i64[1] = v37.i64[1];
          v49 = vabsq_f32(v46);
          v50.i64[0] = vsubq_f32(v48, v49).u64[0];
          v50.i64[1] = vaddq_f32(v49, vrev64q_s32(*&v49)).i64[1];
          v37.i64[0] = vbslq_s8(v34, v16, v44).u64[0];
          v49.i64[0] = v35.i64[0];
          v49.i64[1] = vdupq_laneq_s64(v47, 1).u64[0];
          v51 = vmulq_lane_f32(v40, *v37.f32, 1);
          v52 = vbslq_s8(*(v11 + 19), vrev64q_s32(v49), v50);
          v50.i64[0] = v51.i64[0];
          v50.i64[1] = vmulq_f32(vaddq_f32(v38, vmulq_f32(v19, vmulq_n_f32(v52, *&v35))), v52).i64[1];
          v53 = vminq_f32(vmaxq_f32(vrecpeq_f32(v50), v18), v20);
          v54 = vminq_f32(vmaxq_f32(vmulq_f32(v53, vrecpsq_f32(v50, v53)), v18), v20);
          v55 = vmulq_f32(v54, vrecpsq_f32(v50, v54));
          v54.i64[0] = v51.i64[0];
          v54.i64[1] = v55.i64[1];
          v56 = vextq_s8(v52, vmulq_f32(vnegq_f32(vdupq_lane_s32(*v23.f32, 0)), v52), 8uLL);
          v57 = vmulq_n_f32(v56, *v35.i32);
          v58 = vaddq_f32(vdupq_lane_s32(*v12.i8, 0), vmulq_f32(v54, v56));
          v59 = *(v11 + 20);
          v60 = *(v11 + 21);
          v54.i64[0] = vaddq_f32(v59, v57).u64[0];
          v54.i64[1] = v52.i64[1];
          v61 = vminq_f32(vmaxq_f32(v58, v48), v38);
          v62 = vmulq_f32(v60, v54);
          v63 = *(v11 + 22);
          v64 = vminq_f32(vmaxq_f32(v62, v63), v38);
          v65 = vextq_s8(v61, v51, 8uLL);
          v66 = vaddq_f32(vdupq_laneq_s64(v61, 1), vmulq_f32(vsubq_f32(v38, v65), v64));
          v67 = vextq_s8(v52, v64, 8uLL);
          v68 = vminq_f32(vmaxq_f32(vrecpeq_f32(v67), v18), v20);
          v69 = vminq_f32(vmaxq_f32(vmulq_f32(v68, vrecpsq_f32(v67, v68)), v18), v20);
          *v70.f32 = vext_s8(*v66.f32, *&vextq_s8(v47, v47, 8uLL), 4uLL);
          v70.i64[1] = vextq_s8(v47, v66, 0xCuLL).u64[0];
          v71 = vminq_f32(vmaxq_f32(vrecpeq_f32(v70), v18), v20);
          v67.i64[0] = vmulq_f32(v69, vrecpsq_f32(v67, v69)).u64[0];
          v72 = vminq_f32(vmaxq_f32(vmulq_f32(v71, vrecpsq_f32(v70, v71)), v18), v20);
          v67.i64[1] = v52.i64[1];
          v73 = vbslq_s8(*(v11 + 23), vmulq_f32(v72, vrecpsq_f32(v70, v72)), v67);
          v74 = vaddq_f32(v63, vmulq_lane_f32(v73, *v37.f32, 1));
          v75 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
          v76 = vextq_s8(v74, v73, 8uLL);
          v73.i64[1] = v74.i64[1];
          v52.i64[0] = v66.i64[0];
          v52.i64[1] = vmulq_n_f32(v76, *&v23).i64[1];
          v77 = *(v11 + 24);
          v78 = *(v11 + 25);
          v79 = vmulq_n_f32(v76, COERCE_FLOAT(*v11));
          v80 = vsubq_f32(vsubq_f32(v65, vsubq_f32(v75, vbslq_s8(vcgtq_f32(v75, v65), v60, 0))), v78);
          v81 = *(v11 + 27);
          v82 = vmulq_f32(v66, vdupq_laneq_s64(vminq_f32(vmaxq_f32(vmulq_f32(v77, v52), v59), v60), 1));
          v83 = vmaxq_f32(vaddq_f32(vzip1q_s32(v12, v12), vmulq_f32(v73, vextq_s8(vmulq_f32(vaddq_f32(v78, vorrq_s8(*(v11 + 26), v80)), vnegq_f32(vdupq_lane_s32(*v11, 0))), v51, 8uLL))), v78);
          v73.i64[0] = v82.i64[0];
          v84 = vminq_f32(v83, v77);
          v80.i64[0] = v84.i64[0];
          v80.i64[1] = v74.i64[1];
          v73.i64[1] = v79.i64[1];
          v85 = vminq_f32(vmaxq_f32(vmulq_f32(v77, v73), v59), v60);
          v73.i64[0] = vextq_s8(v85, v82, 0xCuLL).u64[0];
          *&v73.u32[2] = vext_s8(*v82.i8, *&vextq_s8(v85, v85, 8uLL), 4uLL);
          v86 = vextq_s8(v85, v82, 8uLL);
          v85.i64[0] = vmulq_f32(v86, vaddq_f32(v84, vmulq_f32(vdupq_laneq_s64(vminq_f32(vmaxq_f32(vmulq_f32(v81, v80), v59), v60), 1), vsubq_f32(v81, v84)))).u64[0];
          v85.i64[1] = vmaxq_f32(v86, v73).i64[1];
          v88 = *(v11 + 28);
          v87 = *(v11 + 29);
          v89 = vsubq_f32(vabsq_f32(vdupq_lane_s64(v51.i64[0], 0)), v88);
          v51.i64[0] = vmaxq_f32(v85, v78).u64[0];
          v80.i64[0] = v51.i64[0];
          v80.i64[1] = v89.i64[1];
          v90 = vminq_f32(vmaxq_f32(vaddq_f32(v80, v80), v59), v60);
          v51.i64[1] = vdupq_laneq_s64(v89, 1).u64[0];
          v16.i64[0] = vbslq_s8(v34, v16, vmaxq_f32(vrev64q_s32(v51), v80)).u64[0];
          v91 = vmaxq_f32(vsubq_f32(vmaxq_f32(v85, vextq_s8(v88, v88, 8uLL)), vmulq_lane_f32(v19, *v16.f32, 1)), v59);
          v92 = vaddq_f32(vmaxq_f32(vmulq_n_f32(vaddq_f32(*(v11 + 5), vmulq_laneq_f32(vsubq_f32(*(v11 + 2), *(v11 + 5)), v90, 2)), *v51.i32), vmulq_lane_f32(vaddq_f32(*(v11 + 4), vmulq_laneq_f32(vsubq_f32(*(v11 + 2), *(v11 + 4)), v90, 3)), *v51.i8, 1)), vmulq_n_f32(vmulq_laneq_f32(*(v11 + 3), v91, 2), vsubq_f32(v81, vdupq_lane_s32(*v16.f32, 1)).f32[0]));
          v93 = vbslq_s8(vcgtq_f32(vandq_s8(v38, vceqq_f32(v17, v87)), v87), v38, v92);
          v94 = vorrq_s8(vandq_s8(*(v11 + 30), v93), v38);
          v95 = vandq_s8(v38, vcgtq_f32(v94, *(v11 + 34)));
          v96 = vsubq_f32(vsubq_f32(v94, v38), vmulq_f32(vmulq_f32(*(v11 + 35), v95), v94));
          v97 = vmulq_f32(v96, v96);
          v98 = vmaxq_f32(vmulq_f32(v17, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v93, 0x17uLL)), vandq_s8(*(v11 + 32), vcgtq_f32(*(v11 + 31), v93))), *(v11 + 33)), v95), vmulq_f32(v96, vaddq_f32(*(v11 + 42), vmulq_f32(v96, vaddq_f32(vaddq_f32(*(v11 + 40), vmulq_f32(*(v11 + 41), v96)), vmulq_f32(v97, vaddq_f32(vaddq_f32(*(v11 + 36), vmulq_f32(*(v11 + 37), v96)), vmulq_f32(v97, vaddq_f32(*(v11 + 38), vmulq_f32(*(v11 + 39), v96))))))))))), *(v11 + 43));
          v16.i64[1] = v91.i64[1];
          v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
          v100 = vsubq_f32(v99, vandq_s8(v38, vcgtq_f32(v99, v98)));
          v101 = vsubq_f32(v98, v100);
          *(v6 + v9) = vmulq_n_f32(vbslq_s8(*(v11 + 19), v92, vmulq_f32(vaddq_f32(v38, vmulq_f32(v101, vaddq_f32(*(v11 + 48), vmulq_f32(v101, vaddq_f32(vaddq_f32(*(v11 + 46), vmulq_f32(*(v11 + 47), v101)), vmulq_f32(vmulq_f32(v101, v101), vaddq_f32(*(v11 + 44), vmulq_f32(*(v11 + 45), v101)))))))), vshlq_n_s32(vaddq_s32(*(v11 + 49), vcvtq_s32_f32(v100)), 0x17uLL))), *vandq_s8(v81, vcgeq_f32(v16, v87)).i32);
          v10 = vaddq_f32(v10, xmmword_2603429B0);
          v9 += 16;
        }

        while (16 * v5 != v9);
      }

      v7 = vaddq_f32(v7, xmmword_2603429C0);
      ++v4;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeGridShader::GetDOD(LiHeGridShader *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

void LiHeGridShader::LiHeGridShader(LiHeGridShader *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872746C8;
  operator new();
}

void LiHeGridShader::~LiHeGridShader(HGNode *this)
{
  *this = &unk_2872746C8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C9D4F132);
  }

  HGNode::~HGNode(this);
}

{
  LiHeGridShader::~LiHeGridShader(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeGridShader::SetParameter(LiHeGridShader *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v17 = *(this + 51);
        if (*(v17 + 32) != a3.n128_f32[0] || *(v17 + 36) != a4 || *(v17 + 40) != a5 || *(v17 + 44) != a6)
        {
          *(v17 + 32) = a3.n128_u32[0];
          *(v17 + 36) = a4;
          *(v17 + 40) = a5;
          *(v17 + 44) = a6;
          goto LABEL_68;
        }
      }

      else if (a2 == 3)
      {
        v14 = *(this + 51);
        if (*(v14 + 48) != a3.n128_f32[0] || *(v14 + 52) != a4 || *(v14 + 56) != a5 || *(v14 + 60) != a6)
        {
          *(v14 + 48) = a3.n128_u32[0];
          *(v14 + 52) = a4;
          *(v14 + 56) = a5;
          *(v14 + 60) = a6;
          goto LABEL_68;
        }
      }

      else
      {
        v9 = *(this + 51);
        if (*(v9 + 64) != a3.n128_f32[0] || *(v9 + 68) != a4 || *(v9 + 72) != a5 || *(v9 + 76) != a6)
        {
          *(v9 + 64) = a3.n128_u32[0];
          *(v9 + 68) = a4;
          *(v9 + 72) = a5;
          *(v9 + 76) = a6;
          goto LABEL_68;
        }
      }

      return 0;
    }

    if (!a2)
    {
      v13 = *(this + 51);
      if (*v13 != a3.n128_f32[0] || *(v13 + 4) != a4 || *(v13 + 8) != a5 || *(v13 + 12) != a6)
      {
        *v13 = a3.n128_u32[0];
        *(v13 + 4) = a4;
        *(v13 + 8) = a5;
        *(v13 + 12) = a6;
        goto LABEL_68;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v12 = *(this + 51);
      if (*(v12 + 16) != a3.n128_f32[0] || *(v12 + 20) != a4 || *(v12 + 24) != a5 || *(v12 + 28) != a6)
      {
        *(v12 + 16) = a3.n128_u32[0];
        *(v12 + 20) = a4;
        *(v12 + 24) = a5;
        *(v12 + 28) = a6;
        goto LABEL_68;
      }

      return 0;
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        v18 = *(this + 51);
        if (*(v18 + 80) != a3.n128_f32[0] || *(v18 + 84) != a4 || *(v18 + 88) != a5 || *(v18 + 92) != a6)
        {
          *(v18 + 80) = a3.n128_u32[0];
          *(v18 + 84) = a4;
          *(v18 + 88) = a5;
          *(v18 + 92) = a6;
          goto LABEL_68;
        }
      }

      else if (a2 == 6)
      {
        v15 = *(this + 51);
        if (*(v15 + 96) != a3.n128_f32[0] || *(v15 + 100) != a4 || *(v15 + 104) != a5 || *(v15 + 108) != a6)
        {
          *(v15 + 96) = a3.n128_u32[0];
          *(v15 + 100) = a4;
          *(v15 + 104) = a5;
          *(v15 + 108) = a6;
          goto LABEL_68;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (*(v8 + 112) != a3.n128_f32[0] || *(v8 + 116) != a4 || *(v8 + 120) != a5 || *(v8 + 124) != a6)
        {
          *(v8 + 112) = a3.n128_u32[0];
          *(v8 + 116) = a4;
          *(v8 + 120) = a5;
          *(v8 + 124) = a6;
LABEL_68:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 8:
        v19 = *(this + 51);
        if (*(v19 + 128) != a3.n128_f32[0] || *(v19 + 132) != a4 || *(v19 + 136) != a5 || *(v19 + 140) != a6)
        {
          *(v19 + 128) = a3.n128_u32[0];
          *(v19 + 132) = a4;
          *(v19 + 136) = a5;
          *(v19 + 140) = a6;
          goto LABEL_68;
        }

        return 0;
      case 9:
        v16 = *(this + 51);
        if (*(v16 + 144) != a3.n128_f32[0] || *(v16 + 148) != a4 || *(v16 + 152) != a5 || *(v16 + 156) != a6)
        {
          *(v16 + 144) = a3.n128_u32[0];
          *(v16 + 148) = a4;
          *(v16 + 152) = a5;
          *(v16 + 156) = a6;
          goto LABEL_68;
        }

        return 0;
      case 0xA:
        v10 = *(this + 51);
        if (*(v10 + 160) != a3.n128_f32[0] || *(v10 + 164) != a3.n128_f32[0] || *(v10 + 168) != a3.n128_f32[0] || *(v10 + 172) != 0.0)
        {
          v11 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
          v11.i32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          *(v10 + 160) = v11;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v10 + 800) = a3;
          goto LABEL_68;
        }

        return 0;
    }
  }

  return v7;
}

uint64_t LiHeGridShader::GetParameter(LiHeGridShader *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v11 = *(this + 51);
        *a3 = v11[8];
        a3[1] = v11[9];
        a3[2] = v11[10];
        v5 = v11 + 11;
      }

      else
      {
        v6 = *(this + 51);
        if (a2 == 3)
        {
          *a3 = v6[12];
          a3[1] = v6[13];
          a3[2] = v6[14];
          v5 = v6 + 15;
        }

        else
        {
          *a3 = v6[16];
          a3[1] = v6[17];
          a3[2] = v6[18];
          v5 = v6 + 19;
        }
      }

      goto LABEL_24;
    }

    if (!a2)
    {
      v9 = *(this + 51);
      *a3 = *v9;
      a3[1] = v9[1];
      a3[2] = v9[2];
      v5 = v9 + 3;
      goto LABEL_24;
    }

    if (a2 == 1)
    {
      v8 = *(this + 51);
      *a3 = v8[4];
      a3[1] = v8[5];
      a3[2] = v8[6];
      v5 = v8 + 7;
      goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        v12 = *(this + 51);
        *a3 = v12[20];
        a3[1] = v12[21];
        a3[2] = v12[22];
        v5 = v12 + 23;
      }

      else
      {
        v4 = *(this + 51);
        if (a2 == 6)
        {
          *a3 = v4[24];
          a3[1] = v4[25];
          a3[2] = v4[26];
          v5 = v4 + 27;
        }

        else
        {
          *a3 = v4[28];
          a3[1] = v4[29];
          a3[2] = v4[30];
          v5 = v4 + 31;
        }
      }

      goto LABEL_24;
    }

    switch(a2)
    {
      case 8:
        v13 = *(this + 51);
        *a3 = v13[32];
        a3[1] = v13[33];
        a3[2] = v13[34];
        v5 = v13 + 35;
        goto LABEL_24;
      case 9:
        v10 = *(this + 51);
        *a3 = v10[36];
        a3[1] = v10[37];
        a3[2] = v10[38];
        v5 = v10 + 39;
        goto LABEL_24;
      case 10:
        v7 = *(this + 51);
        *a3 = v7[200];
        a3[1] = v7[201];
        a3[2] = v7[202];
        v5 = v7 + 203;
LABEL_24:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  return v3;
}

double LiHeGridShader::State::State(LiHeGridShader::State *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 10) = 0u;
  *(this + 11) = v2;
  *(this + 12) = vnegq_f32(v2);
  *(this + 13) = xmmword_26084EAA0;
  *(this + 14) = xmmword_2603444B0;
  *(this + 15) = xmmword_26084EAB0;
  __asm { FMOV            V2.4S, #1.0 }

  *(this + 16) = xmmword_26084EAC0;
  *(this + 17) = _Q2;
  *(this + 18) = xmmword_260345860;
  *(this + 19) = xmmword_260344600;
  *(this + 20) = xmmword_260347140;
  *(this + 21) = xmmword_26084EAD0;
  *(this + 22) = xmmword_260346850;
  *(this + 23) = xmmword_260344670;
  *(this + 24) = xmmword_26084EAE0;
  *(this + 25) = xmmword_260346BA0;
  *(this + 26) = xmmword_26084EAF0;
  *(this + 27) = xmmword_26084EB00;
  *(this + 28) = xmmword_26084EB10;
  *(this + 29) = 0u;
  *(this + 30) = xmmword_260344C10;
  *(this + 31) = xmmword_260344C20;
  *(this + 32) = xmmword_260344C30;
  *(this + 33) = xmmword_260344C40;
  *(this + 34) = xmmword_260344C50;
  *(this + 35) = xmmword_260344B50;
  *(this + 36) = xmmword_2608185D0;
  *(this + 37) = xmmword_2608185E0;
  *(this + 38) = xmmword_2608185F0;
  *(this + 39) = xmmword_260818600;
  *(this + 40) = xmmword_260818610;
  *(this + 41) = xmmword_260818620;
  *(this + 42) = xmmword_260818630;
  *(this + 43) = xmmword_260344CA0;
  *(this + 44) = xmmword_260818640;
  *(this + 45) = xmmword_260818650;
  *(this + 46) = xmmword_260818660;
  *(this + 47) = xmmword_260818670;
  *(this + 48) = xmmword_260818680;
  *(this + 49) = xmmword_260344CE0;
  *(this + 50) = 0u;
  return result;
}

const char *LiHeLightProgramAmbient::GetProgram(LiHeLightProgramAmbient *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000267\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = float3(r0.xyz) + hg_Params[0].xyz;\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=b89aac8d:61c96031:2b460eab:336a21ef\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000252\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = r0.xyz + hg_Params[0].xyz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=5fc1f2fa:c2f1042b:e82d9a29:6e503f59\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000021f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor.xyz = r0.xyz + hg_ProgramLocal0.xyz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=ca07385b:b29db72b:73d91743:b9f38991\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_26005D6E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26005D7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26005D820()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005D818);
}

uint64_t LiHeLightProgramAmbient::BindTexture(LiHeLightProgramAmbient *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t LiHeLightProgramAmbient::Bind(LiHeLightProgramAmbient *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeLightProgramAmbient::RenderTile(LiHeLightProgramAmbient *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 22);
    v8 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v12 = *(this + 51);
          v13 = *(v12 + 16);
          v14 = vbslq_s8(v13, *(v6 + v10 - 32), vaddq_f32(*(v6 + v10 - 32), *v12));
          v15 = vbslq_s8(v13, *(v6 + v10 - 16), vaddq_f32(*(v6 + v10 - 16), *v12));
          v16 = vbslq_s8(v13, *(v6 + v10), vaddq_f32(*(v6 + v10), *v12));
          v17 = vbslq_s8(v13, *(v6 + v10 + 16), vaddq_f32(*(v6 + v10 + 16), *v12));
          v18 = (v5 + v10);
          v18[-2] = v14;
          v18[-1] = v15;
          *v18 = v16;
          v18[1] = v17;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          *(v5 + 16 * v9) = vbslq_s8(*(*(this + 51) + 16), *(v6 + 16 * v9), vaddq_f32(*(v6 + 16 * v9), **(this + 51)));
          ++v9;
        }

        while (v9 < v4);
      }

      ++v3;
      v6 += v7;
      v5 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeLightProgramAmbient::GetDOD(LiHeLightProgramAmbient *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeLightProgramAmbient::GetROI(LiHeLightProgramAmbient *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeLightProgramAmbient::LiHeLightProgramAmbient(LiHeLightProgramAmbient *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287274930;
  operator new();
}

void LiHeLightProgramAmbient::~LiHeLightProgramAmbient(HGNode *this)
{
  *this = &unk_287274930;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  LiHeLightProgramAmbient::~LiHeLightProgramAmbient(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightProgramAmbient::SetParameter(LiHeLightProgramAmbient *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float LiHeLightProgramAmbient::GetParameter(LiHeLightProgramAmbient *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *HgcLean2::GetProgram(HgcLean2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000263\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r0.xy = r0.xy/r0.zz;\n    r0.zw = r0.xy*r0.xy;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ff028c11:1a11c41a:50106970:e6af15c9\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000255\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r0.xy = r0.xy/r0.zz;\n    r0.zw = r0.xy*r0.xy;\n    output.color0 = r0;\n    return output;\n}\n//MD5=742e4db8:12d3e023:6bcad12e:be3865f7\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001f6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0;\n\n    r0.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    r0.xy = r0.xy/r0.zz;\n    r0.zw = r0.xy*r0.xy;\n    gl_FragColor = r0;\n}\n//MD5=3bb0ba9c:604d3e53:2a877b16:8562c183\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_26005DDF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344AF0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26005DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26005DF30()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005DF28);
}

uint64_t HgcLean2::BindTexture(HgcLean2 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcLean2::RenderTile(HgcLean2 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 22);
    v8 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v12 = *(v6 + v10 - 32);
          v13 = *(v6 + v10 - 16);
          v15 = *(v6 + v10);
          v14 = *(v6 + v10 + 16);
          v16 = vdupq_laneq_s32(v12, 2);
          v17 = vdupq_laneq_s32(v13, 2);
          v18 = vdupq_laneq_s32(v15, 2);
          v19 = vdupq_laneq_s32(v14, 2);
          v20 = *(this + 51);
          v21 = v20[1];
          v22 = v20[2];
          v23 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v16), *v20), v21), v22);
          v24 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v17), *v20), v21), v22);
          v25 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v18), *v20), v21), v22);
          v26 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v19), *v20), v21), v22);
          *v12.i8 = vmul_f32(*v12.i8, vmul_f32(*v23.f32, *&vrecpsq_f32(v16, v23)));
          v12.u64[1] = vmul_f32(*v12.i8, *v12.i8);
          *v13.i8 = vmul_f32(*v13.i8, vmul_f32(*v24.f32, *&vrecpsq_f32(v17, v24)));
          v13.u64[1] = vmul_f32(*v13.i8, *v13.i8);
          *v15.i8 = vmul_f32(*v15.i8, vmul_f32(*v25.f32, *&vrecpsq_f32(v18, v25)));
          *v14.i8 = vmul_f32(*v14.i8, vmul_f32(*v26.f32, *&vrecpsq_f32(v19, v26)));
          v15.u64[1] = vmul_f32(*v15.i8, *v15.i8);
          v14.u64[1] = vmul_f32(*v14.i8, *v14.i8);
          v27 = (v5 + v10);
          v27[-2] = v12;
          v27[-1] = v13;
          *v27 = v15;
          v27[1] = v14;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v28 = *(v6 + 16 * v9);
          v29 = vdupq_laneq_s32(v28, 2);
          v30 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v29), **(this + 51)), *(*(this + 51) + 16)), *(*(this + 51) + 32));
          *v28.i8 = vmul_f32(*v28.i8, vmul_f32(*v30.f32, *&vrecpsq_f32(v29, v30)));
          v28.u64[1] = vmul_f32(*v28.i8, *v28.i8);
          *(v5 + 16 * v9++) = v28;
        }

        while (v9 < v4);
      }

      ++v3;
      v6 += v7;
      v5 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcLean2::GetDOD(HgcLean2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcLean2::GetROI(HgcLean2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcLean2::HgcLean2(HgcLean2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287274B98;
  operator new();
}

void HgcLean2::~HgcLean2(HGNode *this)
{
  *this = &unk_287274B98;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);
}

{
  HgcLean2::~HgcLean2(this);

  HGObject::operator delete(v1);
}

const char *LiHeLightProgramInitPass::GetProgram(LiHeLightProgramInitPass *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000177\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Params[0];\n    return output;\n}\n//MD5=7872d295:7b2c1273:7805b654:83c6a562\n//SIG=00400000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000177\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Params[0];\n    return output;\n}\n//MD5=7872d295:7b2c1273:7805b654:83c6a562\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000162\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp vec4 hg_ProgramLocal0;\nvoid main()\n{\n\n    gl_FragColor = hg_ProgramLocal0;\n}\n//MD5=3516c664:47c72e5c:14a395a6:40522bd5\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
  }
}

void sub_26005E4D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v31 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v31 - 56), "FragmentOut");
  *(v31 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v30, v31 - 64);
  if (*(v31 - 33) < 0)
  {
    operator delete(*(v31 - 56));
  }

  memset(v36, 0, 24);
  LODWORD(v32) = 2;
  std::string::basic_string[abi:ne200100]<0>(&v33, "float4");
  v35 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v36, &v32);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  HGProgramDescriptor::SetArgumentBindings(v30, v36);
  v32 = v36;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_26005E590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  a10 = &a19;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_26005E5C8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005E5C0);
}

uint64_t LiHeLightProgramInitPass::Bind(LiHeLightProgramInitPass *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeLightProgramInitPass::RenderTile(LiHeLightProgramInitPass *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = (v5 + 32);
    v7 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = v6;
        for (i = v4; i > 3; i -= 4)
        {
          v11 = *(this + 51);
          v12 = *v11;
          *(v9 - 2) = *v11;
          *(v9 - 1) = v12;
          *v9 = v12;
          v9[1] = v12;
          v9 += 4;
          v8 += 4;
        }
      }

      if (v8 < v4)
      {
        do
        {
          *(v5 + 16 * v8++) = **(this + 51);
        }

        while (v8 < v4);
      }

      ++v3;
      v6 = (v6 + v7);
      v5 += v7;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeLightProgramInitPass::GetDOD(LiHeLightProgramInitPass *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

void LiHeLightProgramInitPass::LiHeLightProgramInitPass(LiHeLightProgramInitPass *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287274E00;
  operator new();
}

void LiHeLightProgramInitPass::~LiHeLightProgramInitPass(HGNode *this)
{
  *this = &unk_287274E00;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  LiHeLightProgramInitPass::~LiHeLightProgramInitPass(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightProgramInitPass::SetParameter(LiHeLightProgramInitPass *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float LiHeLightProgramInitPass::GetParameter(LiHeLightProgramInitPass *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *LiHeLightProgramPointSurface::GetProgram(LiHeLightProgramPointSurface *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000007c3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 9.999999747e-06, 9.999999747e-05, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0 = frag._texCoord1.yyyy*hg_Params[9];\n    s0 = frag._texCoord1.xxxx*hg_Params[8] + s0;\n    s0 = frag._texCoord1.zzzz*hg_Params[10] + s0;\n    s1 = s0 + hg_Params[11];\n    s0.x = float(s0.w < -hg_Params[11].w);\n    s0.y = fmax(s1.w, float(c0.y));\n    s0.z = fmin(s1.w, -float(c0.y));\n    s0.x = select(s0.y, s0.z, -s0.x < 0.00000h);\n    s1.xyz = s1.xyz/s0.xxx;\n    s0.xyz = hg_Params[0].xyz - s1.xyz;\n    s0.w = dot(s0.xyz, s0.xyz);\n    s1.xyz = -s1.xyz*hg_Params[5].www + hg_Params[5].xyz;\n    s0.w = rsqrt(s0.w);\n    s0.xyz = s0.www*s0.xyz;\n    s1.w = dot(s1.xyz, s1.xyz);\n    s1.w = rsqrt(s1.w);\n    s1.xyz = s1.www*s1.xyz + s0.xyz;\n    s0.y = dot(s0.xyz, hg_Params[4].xyz);\n    s1.xyz = normalize(s1.xyz).xyz;\n    s1.x = dot(s1.xyz, hg_Params[4].xyz);\n    s0.w = 1.00000f / s0.w;\n    s0.x = s0.w - hg_Params[7].x;\n    s2.x = fmax(s0.y, float(c0.x));\n    s0.x = fmax(s0.x, float(c0.x));\n    s1.x = fmax(s1.x, float(c0.x));\n    s0.z = s0.x*hg_Params[6].y + hg_Params[6].x;\n    s0.y = s0.x*hg_Params[6].z;\n    s0.x = s0.y*s0.x + s0.z;\n    s0.y = float(float(c0.z) < fabs(s2.x));\n    s0.x = fmax(s0.x, float(c0.y));\n    s1.x = pow(s1.x, hg_Params[3].x);\n    s1.x = select(float(c0.x), s1.x, -s0.y < 0.00000h);\n    s0 = hg_Params[1]/s0.xxxx;\n    s1 = s0*s1.xxxx;\n    s1 = s1*hg_Params[2];\n    s1 = s2.xxxx*s0 + s1;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0) + s1;\n    return output;\n}\n//MD5=3ee468dd:a0c2ffd8:1f4c2c2f:1d63ba1c\n//SIG=00400000:00000001:00000001:00000001:0001:000c:0004:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000770\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 9.999999747e-06, 9.999999747e-05, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = frag._texCoord1.yyyy*hg_Params[9];\n    r0 = frag._texCoord1.xxxx*hg_Params[8] + r0;\n    r0 = frag._texCoord1.zzzz*hg_Params[10] + r0;\n    r1 = r0 + hg_Params[11];\n    r0.x = float(r0.w < -hg_Params[11].w);\n    r0.y = fmax(r1.w, c0.y);\n    r0.z = fmin(r1.w, -c0.y);\n    r0.x = select(r0.y, r0.z, -r0.x < 0.00000f);\n    r1.xyz = r1.xyz/r0.xxx;\n    r0.xyz = hg_Params[0].xyz - r1.xyz;\n    r0.w = dot(r0.xyz, r0.xyz);\n    r1.xyz = -r1.xyz*hg_Params[5].www + hg_Params[5].xyz;\n    r0.w = rsqrt(r0.w);\n    r0.xyz = r0.www*r0.xyz;\n    r1.w = dot(r1.xyz, r1.xyz);\n    r1.w = rsqrt(r1.w);\n    r1.xyz = r1.www*r1.xyz + r0.xyz;\n    r0.y = dot(r0.xyz, hg_Params[4].xyz);\n    r1.xyz = normalize(r1.xyz).xyz;\n    r1.x = dot(r1.xyz, hg_Params[4].xyz);\n    r0.w = 1.00000f / r0.w;\n    r0.x = r0.w - hg_Params[7].x;\n    r2.x = fmax(r0.y, c0.x);\n    r0.x = fmax(r0.x, c0.x);\n    r1.x = fmax(r1.x, c0.x);\n    r0.z = r0.x*hg_Params[6].y + hg_Params[6].x;\n    r0.y = r0.x*hg_Params[6].z;\n    r0.x = r0.y*r0.x + r0.z;\n    r0.y = float(c0.z < fabs(r2.x));\n    r0.x = fmax(r0.x, c0.y);\n    r1.x = pow(r1.x, hg_Params[3].x);\n    r1.x = select(c0.x, r1.x, -r0.y < 0.00000f);\n    r0 = hg_Params[1]/r0.xxxx;\n    r1 = r0*r1.xxxx;\n    r1 = r1*hg_Params[2];\n    r1 = r2.xxxx*r0 + r1;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r2 + r1;\n    return output;\n}\n//MD5=d7b09eb4:8514d7a6:f1be0e16:d4a40832\n//SIG=00000000:00000001:00000001:00000000:0001:000c:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000921\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nuniform highp vec4 hg_ProgramLocal10;\nuniform highp vec4 hg_ProgramLocal11;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 9.999999747e-06, 9.999999747e-05, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = hg_TexCoord1.yyyy*hg_ProgramLocal9;\n    r0 = hg_TexCoord1.xxxx*hg_ProgramLocal8 + r0;\n    r0 = hg_TexCoord1.zzzz*hg_ProgramLocal10 + r0;\n    r1 = r0 + hg_ProgramLocal11;\n    r0.x = float(r0.w < -hg_ProgramLocal11.w);\n    r0.y = max(r1.w, c0.y);\n    r0.z = min(r1.w, -c0.y);\n    r0.x = -r0.x < 0.00000 ? r0.z : r0.y;\n    r1.xyz = r1.xyz/r0.xxx;\n    r0.xyz = hg_ProgramLocal0.xyz - r1.xyz;\n    r0.w = dot(r0.xyz, r0.xyz);\n    r1.xyz = -r1.xyz*hg_ProgramLocal5.www + hg_ProgramLocal5.xyz;\n    r0.w = inversesqrt(r0.w);\n    r0.xyz = r0.www*r0.xyz;\n    r1.w = dot(r1.xyz, r1.xyz);\n    r1.w = inversesqrt(r1.w);\n    r1.xyz = r1.www*r1.xyz + r0.xyz;\n    r0.y = dot(r0.xyz, hg_ProgramLocal4.xyz);\n    r1.xyz = normalize(r1.xyz).xyz;\n    r1.x = dot(r1.xyz, hg_ProgramLocal4.xyz);\n    r0.w = 1.00000 / r0.w;\n    r0.x = r0.w - hg_ProgramLocal7.x;\n    r2.x = max(r0.y, c0.x);\n    r0.x = max(r0.x, c0.x);\n    r1.x = max(r1.x, c0.x);\n    r0.z = r0.x*hg_ProgramLocal6.y + hg_ProgramLocal6.x;\n    r0.y = r0.x*hg_ProgramLocal6.z;\n    r0.x = r0.y*r0.x + r0.z;\n    r0.y = float(c0.z < abs(r2.x));\n    r0.x = max(r0.x, c0.y);\n    r1.x = pow(r1.x, hg_ProgramLocal3.x);\n    r1.x = -r0.y < 0.00000 ? r1.x : c0.x;\n    r0 = hg_ProgramLocal1/r0.xxxx;\n    r1 = r0*r1.xxxx;\n    r1 = r1*hg_ProgramLocal2;\n    r1 = r2.xxxx*r0 + r1;\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r2 + r1;\n}\n//MD5=edf16448:360c4a3a:edfe90cd:3504cc2a\n//SIG=00000000:00000001:00000001:00000000:0001:000c:0003:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_26005EA4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260345450;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26005EB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26005EBD4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005EBCCLL);
}

uint64_t LiHeLightProgramPointSurface::BindTexture(LiHeLightProgramPointSurface *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t LiHeLightProgramPointSurface::Bind(LiHeLightProgramPointSurface *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeLightProgramPointSurface::RenderTile(LiHeLightProgramPointSurface *this, HGTile *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 3) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 2) - *a2;
    v6 = *(a2 + 2);
    v7 = *(a2 + 10);
    v8.f32[0] = *a2 + 0.5;
    v8.f32[1] = v2 + 0.5;
    v8.i32[2] = 0;
    v8.i32[3] = 1.0;
    v9 = 16 * *(a2 + 6);
    v10 = 16 * *(a2 + 22);
    do
    {
      if (v5 >= 1)
      {
        v11 = 0;
        v12 = v8;
        do
        {
          v13 = *(this + 51);
          v14 = *(v13 + 176);
          v15 = vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v13 + 144), *v12.f32, 1), vmulq_n_f32(*(v13 + 128), v12.f32[0])), vmulq_laneq_f32(*(v13 + 160), v12, 2));
          v16 = vaddq_f32(v14, v15);
          v17 = vcgtq_f32(vnegq_f32(v14), v15);
          v18 = *(v13 + 192);
          v19 = *(v13 + 208);
          v20 = vandq_s8(v18, v17);
          v20.i64[0] = vbslq_s8(v19, vextq_s8(v20, v20, 0xCuLL), vmaxq_f32(vextq_s8(v16, v16, 8uLL), v18)).u64[0];
          v21 = vminq_f32(vrev64q_s32(v16), v18);
          v20.i64[1] = v21.i64[1];
          v22 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v20, v18), vdupq_laneq_s32(v21, 2), vdupq_lane_s32(*v20.f32, 1)), 0);
          v23 = *(v13 + 224);
          v24 = *(v13 + 240);
          v25 = vminq_f32(vmaxq_f32(vrecpeq_f32(v22), v23), v24);
          v26 = vminq_f32(vmaxq_f32(vmulq_f32(v25, vrecpsq_f32(v22, v25)), v23), v24);
          v27 = vmulq_f32(v16, vmulq_f32(v26, vrecpsq_f32(v22, v26)));
          v28 = vsubq_f32(*v13, v27);
          v29 = vmulq_f32(v28, v28);
          v30 = *(v13 + 64);
          v31 = vsubq_f32(*(v13 + 80), vmulq_laneq_f32(v27, *(v13 + 80), 3));
          v32 = *(v13 + 256);
          v33 = vbslq_s8(v32, vaddq_f32(vrev64q_s32(v29), vaddq_f32(vextq_s8(v29, v29, 4uLL), vextq_s8(v29, v29, 8uLL))), v28);
          v34 = vminq_f32(vrsqrteq_f32(v33), v24);
          v35 = vminq_f32(vmulq_f32(v34, vrsqrtsq_f32(vmulq_f32(v34, v33), v34)), v24);
          v36 = vmulq_f32(v35, vrsqrtsq_f32(vmulq_f32(v35, v33), v35));
          v37 = vmulq_f32(v31, v31);
          v38 = vbslq_s8(v32, v36, v28);
          v39 = vbslq_s8(v32, vaddq_f32(vrev64q_s32(v37), vaddq_f32(vextq_s8(v37, v37, 4uLL), vextq_s8(v37, v37, 8uLL))), v31);
          v40 = vminq_f32(vrsqrteq_f32(v39), v24);
          v41 = vbslq_s8(v32, v36, vmulq_laneq_f32(v38, v38, 3));
          v42 = vminq_f32(vmulq_f32(v40, vrsqrtsq_f32(vmulq_f32(v40, v39), v40)), v24);
          v43 = vbslq_s8(v32, vmulq_f32(v42, vrsqrtsq_f32(vmulq_f32(v42, v39), v42)), v31);
          v44 = vaddq_f32(vmulq_laneq_f32(v43, v43, 3), v41);
          v45 = vmulq_f32(v30, v41);
          v46 = vaddq_f32(vextq_s8(v45, v8, 4uLL), vaddq_f32(v45, vrev64q_s32(v45)));
          v47 = vmulq_f32(v44, v44);
          v48.i64[0] = v46.i64[0];
          v49 = vaddq_f32(vdupq_laneq_s32(v47, 2), vaddq_f32(vdupq_lane_s32(*v47.i8, 0), vdupq_lane_s32(*v47.i8, 1)));
          v48.i64[1] = v41.i64[1];
          v50 = vminq_f32(vrsqrteq_f32(v49), v24);
          v51 = vminq_f32(vmulq_f32(v50, vrsqrtsq_f32(vmulq_f32(v50, v49), v50)), v24);
          v52 = vmulq_f32(v30, vmulq_f32(vmulq_f32(v51, vrsqrtsq_f32(vmulq_f32(v51, v49), v51)), v44));
          v53 = vminq_f32(vmaxq_f32(vrecpeq_f32(v48), v23), v24);
          v54 = vminq_f32(vmaxq_f32(vmulq_f32(v53, vrecpsq_f32(v48, v53)), v23), v24);
          v55 = vmulq_f32(v54, vrecpsq_f32(v48, v54));
          v51.i64[0] = vextq_s8(v55, v46, 0xCuLL).u64[0];
          v46.i64[1] = v55.i64[1];
          *&v51.u32[2] = vext_s8(*v46.i8, *&vextq_s8(v55, v55, 8uLL), 4uLL);
          v56 = *(v13 + 96);
          v57 = vbslq_s8(v19, vsubq_f32(v51, *(v13 + 112)), v46);
          v39.i64[0] = vmaxq_f32(v57, v18).u64[0];
          v58 = *(v13 + 304);
          v59 = *(v13 + 48);
          v39.i64[1] = vaddq_f32(vdupq_lane_s64(*&v56, 0), vmulq_n_f32(vextq_s8(*&v8, v56, 0xCuLL), *&v39)).i64[1];
          v60 = vbslq_s8(vcgtq_f32(vandq_s8(v58, vceqq_f32(v59, v18)), v18), v58, vmaxq_f32(vaddq_f32(vextq_s8(v52, v52, 8uLL), vaddq_f32(v52, vrev64q_s32(v52))), v18));
          v61 = vorrq_s8(vandq_s8(*(v13 + 336), v60), v58);
          v62 = vbslq_s8(*(v13 + 272), vmulq_n_f32(vextq_s8(v56, v56, 4uLL), v39.f32[0]), v39);
          v63 = vandq_s8(v58, vcgtq_f32(v61, *(v13 + 400)));
          v64 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v60, 0x17uLL)), vandq_s8(*(v13 + 368), vcgtq_f32(*(v13 + 352), v60))), *(v13 + 384)), v63);
          v65 = vsubq_f32(vsubq_f32(v61, v58), vmulq_f32(vmulq_f32(*(v13 + 416), v63), v61));
          v66 = vmulq_f32(v65, v65);
          v67 = vmaxq_f32(vrev64q_s32(v57), v18);
          v68 = vrev64q_s32(vandq_s8(vcagtq_f32(v67, *(v13 + 288)), v58));
          v69 = vbslq_s8(v19, vmaxq_f32(vbslq_s8(v19, vaddq_f32(vextq_s8(v62, v62, 8uLL), vmulq_lane_f32(v62, *v62.f32, 1)), v68), *(v13 + 320)), v68);
          v70 = vmaxq_f32(vmulq_f32(v59, vaddq_f32(v64, vmulq_f32(v65, vaddq_f32(*(v13 + 528), vmulq_f32(v65, vaddq_f32(vaddq_f32(*(v13 + 496), vmulq_f32(*(v13 + 512), v65)), vmulq_f32(v66, vaddq_f32(vaddq_f32(*(v13 + 432), vmulq_f32(*(v13 + 448), v65)), vmulq_f32(v66, vaddq_f32(*(v13 + 464), vmulq_f32(*(v13 + 480), v65))))))))))), *(v13 + 544));
          v71 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
          v72 = vsubq_f32(v71, vandq_s8(v58, vcgtq_f32(v71, v70)));
          v73 = vsubq_f32(v70, v72);
          v74 = vcgtq_f32(vrev64q_s32(v69), v18);
          v75 = vdupq_lane_s32(*v69.i8, 0);
          v76 = vaddq_f32(v58, vmulq_f32(v73, vaddq_f32(*(v13 + 624), vmulq_f32(v73, vaddq_f32(vaddq_f32(*(v13 + 592), vmulq_f32(*(v13 + 608), v73)), vmulq_f32(vmulq_f32(v73, v73), vaddq_f32(*(v13 + 560), vmulq_f32(*(v13 + 576), v73))))))));
          v77 = vminq_f32(vmaxq_f32(vrecpeq_f32(v75), v23), v24);
          v78 = vminq_f32(vmaxq_f32(vmulq_f32(v77, vrecpsq_f32(v75, v77)), v23), v24);
          v79 = vmulq_f32(vmulq_f32(v78, vrecpsq_f32(v75, v78)), *(v13 + 16));
          *(v6 + v11) = vaddq_f32(*(v7 + v11), vaddq_f32(vmulq_n_f32(v79, v67.f32[0]), vmulq_f32(*(v13 + 32), vmulq_n_f32(v79, *vbslq_s8(v74, vmulq_f32(v76, vshlq_n_s32(vaddq_s32(*(v13 + 640), vcvtq_s32_f32(v72)), 0x17uLL)), v18).i32))));
          v12 = vaddq_f32(v12, xmmword_2603429B0);
          v11 += 16;
        }

        while (16 * v5 != v11);
      }

      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeLightProgramPointSurface::GetDOD(LiHeLightProgramPointSurface *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeLightProgramPointSurface::GetROI(LiHeLightProgramPointSurface *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeLightProgramPointSurface::LiHeLightProgramPointSurface(LiHeLightProgramPointSurface *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287275068;
  operator new();
}

void LiHeLightProgramPointSurface::~LiHeLightProgramPointSurface(HGNode *this)
{
  *this = &unk_287275068;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C407C97CFA8);
  }

  HGNode::~HGNode(this);
}

{
  LiHeLightProgramPointSurface::~LiHeLightProgramPointSurface(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightProgramPointSurface::SetParameter(LiHeLightProgramPointSurface *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 0xB)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t LiHeLightProgramPointSurface::GetParameter(LiHeLightProgramPointSurface *this, unsigned int a2, float *a3)
{
  if (a2 > 0xB)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

double LiHeLightProgramPointSurface::State::State(LiHeLightProgramPointSurface::State *this)
{
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 12) = xmmword_26084EB70;
  *(this + 13) = xmmword_2603444B0;
  v1.i64[0] = 0x80000000800000;
  v1.i64[1] = 0x80000000800000;
  *(this + 14) = v1;
  *(this + 15) = vnegq_f32(v1);
  *(this + 16) = xmmword_260344600;
  *(this + 17) = xmmword_260344670;
  *(this + 18) = xmmword_26084EB80;
  *(this + 19) = xmmword_2603429B0;
  *(this + 20) = xmmword_26084EB90;
  *(this + 21) = xmmword_260344DE0;
  *(this + 22) = xmmword_260344DF0;
  *(this + 23) = xmmword_260344E00;
  *(this + 24) = xmmword_260344E10;
  *(this + 25) = xmmword_260344E20;
  *(this + 26) = xmmword_260344E30;
  *(this + 27) = xmmword_260346FC0;
  *(this + 28) = xmmword_260346FD0;
  *(this + 29) = xmmword_260346FE0;
  *(this + 30) = xmmword_260346FF0;
  *(this + 31) = xmmword_260347000;
  *(this + 32) = xmmword_26084EBA0;
  *(this + 33) = xmmword_26084EBB0;
  *(this + 34) = xmmword_260344E80;
  *(this + 35) = xmmword_26084EBC0;
  *(this + 36) = xmmword_26084EBD0;
  *(this + 37) = xmmword_26084EBE0;
  *(this + 38) = xmmword_26084EBF0;
  *(this + 39) = xmmword_26084EC00;
  *&result = 127;
  *(this + 40) = xmmword_260344EC0;
  return result;
}

const char *LiHeLightProgramPointSurfaceDiffuse::GetProgram(LiHeLightProgramPointSurfaceDiffuse *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0 = frag._texCoord1.yyyy*hg_Params[6];\n    s0 = frag._texCoord1.xxxx*hg_Params[5] + s0;\n    s0 = frag._texCoord1.zzzz*hg_Params[7] + s0;\n    s1 = s0 + hg_Params[8];\n    s0.x = float(s0.w < -hg_Params[8].w);\n    s0.y = fmax(s1.w, float(c0.y));\n    s0.z = fmin(s1.w, -float(c0.y));\n    s0.x = select(s0.y, s0.z, -s0.x < 0.00000h);\n    s0.x = 1.00000f / s0.x;\n    s0.xyz = -s1.xyz*s0.xxx + hg_Params[0].xyz;\n    s0.w = dot(s0.xyz, s0.xyz);\n    s1.x = rsqrt(s0.w);\n    s0.xyz = s1.xxx*s0.xyz;\n    s0.w = 1.00000f / s1.x;\n    s1.x = dot(s0.xyz, hg_Params[2].xyz);\n    s0.w = s0.w - hg_Params[4].w;\n    s0.w = fmax(s0.w, float(c0.x));\n    s2.z = s0.w*hg_Params[3].y + hg_Params[3].x;\n    s2.y = s0.w*hg_Params[3].z;\n    s0.w = s2.y*s0.w + s2.z;\n    s0.w = fmax(s0.w, float(c0.y));\n    s0 = hg_Params[1]/s0.wwww;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s1.x = fmax(s1.x, float(c0.x));\n    output.color0 = s0*s1.xxxx + float4(r0);\n    return output;\n}\n//MD5=43196f93:7bc84309:f132a4d1:ec1f6d3f\n//SIG=00400000:00000001:00000001:00000001:0001:0009:0004:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = frag._texCoord1.yyyy*hg_Params[6];\n    r0 = frag._texCoord1.xxxx*hg_Params[5] + r0;\n    r0 = frag._texCoord1.zzzz*hg_Params[7] + r0;\n    r1 = r0 + hg_Params[8];\n    r0.x = float(r0.w < -hg_Params[8].w);\n    r0.y = fmax(r1.w, c0.y);\n    r0.z = fmin(r1.w, -c0.y);\n    r0.x = select(r0.y, r0.z, -r0.x < 0.00000f);\n    r0.x = 1.00000f / r0.x;\n    r0.xyz = -r1.xyz*r0.xxx + hg_Params[0].xyz;\n    r0.w = dot(r0.xyz, r0.xyz);\n    r1.x = rsqrt(r0.w);\n    r0.xyz = r1.xxx*r0.xyz;\n    r0.w = 1.00000f / r1.x;\n    r1.x = dot(r0.xyz, hg_Params[2].xyz);\n    r0.w = r0.w - hg_Params[4].w;\n    r0.w = fmax(r0.w, c0.x);\n    r2.z = r0.w*hg_Params[3].y + hg_Params[3].x;\n    r2.y = r0.w*hg_Params[3].z;\n    r0.w = r2.y*r0.w + r2.z;\n    r0.w = fmax(r0.w, c0.y);\n    r0 = hg_Params[1]/r0.wwww;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = fmax(r1.x, c0.x);\n    output.color0 = r0*r1.xxxx + r2;\n    return output;\n}\n//MD5=871590c3:67444514:d3bac780:1dcd075f\n//SIG=00000000:00000001:00000001:00000000:0001:0009:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006e0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = hg_TexCoord1.yyyy*hg_ProgramLocal6;\n    r0 = hg_TexCoord1.xxxx*hg_ProgramLocal5 + r0;\n    r0 = hg_TexCoord1.zzzz*hg_ProgramLocal7 + r0;\n    r1 = r0 + hg_ProgramLocal8;\n    r0.x = float(r0.w < -hg_ProgramLocal8.w);\n    r0.y = max(r1.w, c0.y);\n    r0.z = min(r1.w, -c0.y);\n    r0.x = -r0.x < 0.00000 ? r0.z : r0.y;\n    r0.x = 1.00000 / r0.x;\n    r0.xyz = -r1.xyz*r0.xxx + hg_ProgramLocal0.xyz;\n    r0.w = dot(r0.xyz, r0.xyz);\n    r1.x = inversesqrt(r0.w);\n    r0.xyz = r1.xxx*r0.xyz;\n    r0.w = 1.00000 / r1.x;\n    r1.x = dot(r0.xyz, hg_ProgramLocal2.xyz);\n    r0.w = r0.w - hg_ProgramLocal4.w;\n    r0.w = max(r0.w, c0.x);\n    r2.z = r0.w*hg_ProgramLocal3.y + hg_ProgramLocal3.x;\n    r2.y = r0.w*hg_ProgramLocal3.z;\n    r0.w = r2.y*r0.w + r2.z;\n    r0.w = max(r0.w, c0.y);\n    r0 = hg_ProgramLocal1/r0.wwww;\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = max(r1.x, c0.x);\n    gl_FragColor = r0*r1.xxxx + r2;\n}\n//MD5=79d21ec4:ee041d23:34c46e65:0ed66c62\n//SIG=00000000:00000001:00000001:00000000:0001:0009:0003:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_26005F8D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_2603459A0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26005FA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26005FA60()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26005FA58);
}

uint64_t LiHeLightProgramPointSurfaceDiffuse::BindTexture(LiHeLightProgramPointSurfaceDiffuse *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t LiHeLightProgramPointSurfaceDiffuse::Bind(LiHeLightProgramPointSurfaceDiffuse *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeLightProgramPointSurfaceDiffuse::RenderTile(LiHeLightProgramPointSurfaceDiffuse *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = a2[2];
    v7 = a2[10];
    *v8.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v8.i64[1] = 0x3F80000000000000;
    v9 = 16 * a2[3].i32[0];
    v10 = 16 * a2[11].i32[0];
    do
    {
      if (v5 < 3)
      {
        v12 = 0;
        v14 = v8;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = v5;
        v14 = v8;
        do
        {
          v15 = vaddq_f32(v14, xmmword_2603429B0);
          v16 = vaddq_f32(v15, xmmword_2603429B0);
          v17 = *(this + 51);
          v18 = *(v17 + 96);
          v19 = *(v17 + 112);
          v20 = vmulq_lane_f32(v18, *v14.f32, 1);
          v21 = vmulq_lane_f32(v18, *v15.f32, 1);
          v22 = vmulq_lane_f32(v18, *v16.f32, 1);
          v23 = *(v17 + 64);
          v24 = *(v17 + 80);
          v25 = vaddq_f32(vaddq_f32(v20, vmulq_n_f32(v24, v14.f32[0])), vmulq_laneq_f32(v19, v14, 2));
          v26 = vaddq_f32(vaddq_f32(v21, vmulq_n_f32(v24, v15.f32[0])), vmulq_laneq_f32(v19, v15, 2));
          v27 = vaddq_f32(vaddq_f32(v22, vmulq_n_f32(v24, v16.f32[0])), vmulq_laneq_f32(v19, v16, 2));
          v28 = *(v17 + 128);
          v29 = *(v17 + 144);
          v30 = vaddq_f32(v28, v25);
          v31 = vaddq_f32(v28, v26);
          v32 = vaddq_f32(v28, v27);
          v33 = vnegq_f32(v28);
          v34 = vandq_s8(v29, vcgtq_f32(v33, v25));
          v35 = vandq_s8(v29, vcgtq_f32(v33, v26));
          v36 = vandq_s8(v29, vcgtq_f32(v33, v27));
          v37 = vextq_s8(v34, v34, 0xCuLL);
          v39 = *(v17 + 160);
          v38 = *(v17 + 176);
          v40 = vbslq_s8(v39, v37, vmaxq_f32(vextq_s8(v30, v30, 8uLL), v29));
          v41 = vbslq_s8(v39, vextq_s8(v35, v35, 0xCuLL), vmaxq_f32(vextq_s8(v31, v31, 8uLL), v29));
          v42 = vminq_f32(vrev64q_s32(v30), v29);
          v43 = vminq_f32(vrev64q_s32(v31), v29);
          v44 = vminq_f32(vrev64q_s32(v32), v29);
          v45 = vbslq_s8(v39, vextq_s8(v36, v36, 0xCuLL), vmaxq_f32(vextq_s8(v32, v32, 8uLL), v29));
          v46.i64[0] = v40.i64[0];
          v46.i64[1] = v42.i64[1];
          v39.i64[0] = v41.i64[0];
          v39.i64[1] = v43.i64[1];
          v47.i64[0] = v45.i64[0];
          v48 = vdupq_laneq_s64(v42, 1).u64[0];
          v49 = vextq_s8(v42, v40, 8uLL);
          v47.i64[1] = v44.i64[1];
          v40.i64[1] = v48;
          v50 = vdupq_laneq_s64(v43, 1).u64[0];
          v51 = vextq_s8(v43, v41, 8uLL);
          v41.i64[1] = v50;
          v52 = vdupq_laneq_s64(v44, 1).u64[0];
          v53 = vextq_s8(v44, v45, 8uLL);
          v45.i64[1] = v52;
          v54 = vbslq_s8(vcgtq_f32(v46, v29), v49, vrev64q_s32(v40));
          v55 = vbslq_s8(vcgtq_f32(v39, v29), v51, vrev64q_s32(v41));
          v56 = vbslq_s8(vcgtq_f32(v47, v29), v53, vrev64q_s32(v45));
          v57 = *(v17 + 192);
          v58 = *(v17 + 208);
          v59 = vminq_f32(vmaxq_f32(vrecpeq_f32(v54), v38), v57);
          v60 = vminq_f32(vmaxq_f32(vrecpeq_f32(v55), v38), v57);
          v61 = vminq_f32(vmaxq_f32(vrecpeq_f32(v56), v38), v57);
          v62 = vminq_f32(vmaxq_f32(vmulq_f32(v59, vrecpsq_f32(v54, v59)), v38), v57);
          v63 = vminq_f32(vmaxq_f32(vmulq_f32(v60, vrecpsq_f32(v55, v60)), v38), v57);
          v64 = vminq_f32(vmaxq_f32(vmulq_f32(v61, vrecpsq_f32(v56, v61)), v38), v57);
          v62.i32[0] = vmulq_f32(v62, vrecpsq_f32(v54, v62)).u32[0];
          v54.i32[0] = vmulq_f32(v64, vrecpsq_f32(v56, v64)).u32[0];
          v65 = vmulq_n_f32(v30, v62.f32[0]);
          v66 = *(v17 + 16);
          v67 = vsubq_f32(*v17, v65);
          v68 = vsubq_f32(*v17, vmulq_n_f32(v31, vmulq_f32(v63, vrecpsq_f32(v55, v63)).f32[0]));
          v69 = vsubq_f32(*v17, vmulq_n_f32(v32, v54.f32[0]));
          v70 = vmulq_f32(v67, v67);
          v71 = vmulq_f32(v68, v68);
          v72 = vmulq_f32(v69, v69);
          v73 = vbslq_s8(v58, vaddq_f32(vrev64q_s32(v70), vaddq_f32(vextq_s8(v70, v70, 4uLL), vextq_s8(v70, v70, 8uLL))), v67);
          v74 = vbslq_s8(v58, vaddq_f32(vrev64q_s32(v71), vaddq_f32(vextq_s8(v71, v71, 4uLL), vextq_s8(v71, v71, 8uLL))), v68);
          v75 = vbslq_s8(v58, vaddq_f32(vrev64q_s32(v72), vaddq_f32(vextq_s8(v72, v72, 4uLL), vextq_s8(v72, v72, 8uLL))), v69);
          v76 = vextq_s8(v73, v73, 0xCuLL);
          v77 = vextq_s8(v74, v74, 0xCuLL);
          v78 = vextq_s8(v75, v75, 0xCuLL);
          v79 = vminq_f32(vrsqrteq_f32(v76), v57);
          v80 = vminq_f32(vrsqrteq_f32(v77), v57);
          v81 = vminq_f32(vrsqrteq_f32(v78), v57);
          v82 = vminq_f32(vmulq_f32(v79, vrsqrtsq_f32(vmulq_f32(v79, v76), v79)), v57);
          v83 = vminq_f32(vmulq_f32(v80, vrsqrtsq_f32(vmulq_f32(v80, v77), v80)), v57);
          v84 = vminq_f32(vmulq_f32(v81, vrsqrtsq_f32(vmulq_f32(v81, v78), v81)), v57);
          v85 = vmulq_f32(v82, vrsqrtsq_f32(vmulq_f32(v76, v82), v82));
          v86 = vmulq_f32(v83, vrsqrtsq_f32(vmulq_f32(v77, v83), v83));
          v87 = vmulq_f32(v84, vrsqrtsq_f32(vmulq_f32(v78, v84), v84));
          v88 = vmulq_n_f32(v73, *v85.i32);
          v89 = vmulq_n_f32(v74, *v86.i32);
          v90 = vmulq_n_f32(v75, *v87.i32);
          v91 = vextq_s8(v85, v85, 4uLL);
          v92 = vextq_s8(v86, v86, 4uLL);
          v93 = vextq_s8(v87, v87, 4uLL);
          v94 = vminq_f32(vmaxq_f32(vrecpeq_f32(v91), v38), v57);
          v95 = vminq_f32(vmaxq_f32(vrecpeq_f32(v92), v38), v57);
          v96 = vminq_f32(vmaxq_f32(vrecpeq_f32(v93), v38), v57);
          v97 = vminq_f32(vmaxq_f32(vmulq_f32(v94, vrecpsq_f32(v91, v94)), v38), v57);
          v98 = vminq_f32(vmaxq_f32(vmulq_f32(v95, vrecpsq_f32(v92, v95)), v38), v57);
          v99 = vminq_f32(vmaxq_f32(vmulq_f32(v96, vrecpsq_f32(v93, v96)), v38), v57);
          v100 = vbslq_s8(v58, vmulq_f32(v97, vrecpsq_f32(v91, v97)), v88);
          v101 = vbslq_s8(v58, vmulq_f32(v98, vrecpsq_f32(v92, v98)), v89);
          v102 = vbslq_s8(v58, vmulq_f32(v99, vrecpsq_f32(v93, v99)), v90);
          v103 = *(v17 + 32);
          v104 = *(v17 + 48);
          v105 = vmulq_f32(v103, v100);
          v106 = vmulq_f32(v103, v101);
          v107 = vmulq_f32(v103, v102);
          v108 = vaddq_f32(v107, vrev64q_s32(v107));
          v109 = vextq_s8(v107, v107, 8uLL);
          v110 = vsubq_f32(v100, v23);
          v111 = vsubq_f32(v101, v23);
          v112 = vaddq_f32(vextq_s8(v105, v105, 8uLL), vaddq_f32(v105, vrev64q_s32(v105)));
          v113 = vsubq_f32(v102, v23);
          v115 = *(v17 + 224);
          v114 = *(v17 + 240);
          v116 = vmaxq_f32(v110, v115);
          v117 = vmaxq_f32(v111, v115);
          v118 = vaddq_f32(vextq_s8(v106, v106, 8uLL), vaddq_f32(v106, vrev64q_s32(v106)));
          v119 = vmaxq_f32(v113, v115);
          v120 = vextq_s8(v104, v104, 0xCuLL);
          v121 = vextq_s8(v104, v104, 8uLL);
          v122 = vaddq_f32(v121, vmulq_laneq_f32(v120, v116, 3));
          v123 = vaddq_f32(v121, vmulq_laneq_f32(v120, v117, 3));
          v124 = vaddq_f32(v121, vmulq_laneq_f32(v120, v119, 3));
          v125 = vextq_s8(v104, v104, 4uLL);
          v122.i64[0] = vmulq_laneq_f32(v125, v116, 3).u64[0];
          v123.i64[0] = vmulq_laneq_f32(v125, v117, 3).u64[0];
          v124.i64[0] = vmulq_laneq_f32(v125, v119, 3).u64[0];
          v126 = vdupq_laneq_s32(vmaxq_f32(vaddq_f32(vmulq_lane_f32(v116, *v122.i8, 1), vrev64q_s32(v122)), v114), 3);
          v127 = vdupq_laneq_s32(vmaxq_f32(vaddq_f32(vmulq_lane_f32(v117, *v123.i8, 1), vrev64q_s32(v123)), v114), 3);
          v128 = vdupq_laneq_s32(vmaxq_f32(vaddq_f32(vmulq_lane_f32(v119, *v124.i8, 1), vrev64q_s32(v124)), v114), 3);
          v129 = vminq_f32(vmaxq_f32(vrecpeq_f32(v126), v38), v57);
          v130 = vminq_f32(vmaxq_f32(vrecpeq_f32(v127), v38), v57);
          v131 = vminq_f32(vmaxq_f32(vrecpeq_f32(v128), v38), v57);
          v132 = vminq_f32(vmaxq_f32(vmulq_f32(v129, vrecpsq_f32(v126, v129)), v38), v57);
          v133 = vminq_f32(vmaxq_f32(vmulq_f32(v130, vrecpsq_f32(v127, v130)), v38), v57);
          v134 = vminq_f32(vmaxq_f32(vmulq_f32(v131, vrecpsq_f32(v128, v131)), v38), v57);
          v135 = vmulq_n_f32(vmulq_f32(vmulq_f32(v132, vrecpsq_f32(v126, v132)), v66), vmaxq_f32(v112, v114).f32[0]);
          v136 = vaddq_f32(*(*&v7 + v11 + 16), vmulq_n_f32(vmulq_f32(vmulq_f32(v133, vrecpsq_f32(v127, v133)), v66), vmaxq_f32(v118, v114).f32[0]));
          v137 = vaddq_f32(*(*&v7 + v11 + 32), vmulq_n_f32(vmulq_f32(vmulq_f32(v134, vrecpsq_f32(v128, v134)), v66), vmaxq_f32(vaddq_f32(v109, v108), v114).f32[0]));
          v138 = (*&v6 + v11);
          *v138 = vaddq_f32(*(*&v7 + v11), v135);
          v138[1] = v136;
          v138[2] = v137;
          v14 = vaddq_f32(v16, xmmword_2603429B0);
          v13 -= 3;
          v12 += 3;
          v11 += 48;
        }

        while (v13 > 2);
      }

      if (v12 < v5)
      {
        do
        {
          v139 = *(this + 51);
          v140 = vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v139 + 96), *v14.f32, 1), vmulq_n_f32(*(v139 + 80), v14.f32[0])), vmulq_laneq_f32(*(v139 + 112), v14, 2));
          v142 = *(v139 + 128);
          v141 = *(v139 + 144);
          v143 = vaddq_f32(v142, v140);
          v144 = vandq_s8(v141, vcgtq_f32(vnegq_f32(v142), v140));
          v145 = vextq_s8(v144, v144, 0xCuLL);
          v146 = *(v139 + 176);
          v147 = vbslq_s8(*(v139 + 160), v145, vmaxq_f32(vextq_s8(v143, v143, 8uLL), v141));
          v148 = vminq_f32(vrev64q_s32(v143), v141);
          v149.i64[0] = v147.i64[0];
          v150 = vdupq_laneq_s64(v148, 1).u64[0];
          v149.i64[1] = v148.i64[1];
          v151 = vextq_s8(v148, v147, 8uLL);
          v147.i64[1] = v150;
          v152 = vbslq_s8(vcgtq_f32(v149, v141), v151, vrev64q_s32(v147));
          v153 = *(v139 + 192);
          v154 = *(v139 + 208);
          v155 = vminq_f32(vmaxq_f32(vrecpeq_f32(v152), v146), v153);
          v156 = vminq_f32(vmaxq_f32(vmulq_f32(v155, vrecpsq_f32(v152, v155)), v146), v153);
          v157 = vsubq_f32(*v139, vmulq_n_f32(v143, vmulq_f32(v156, vrecpsq_f32(v152, v156)).f32[0]));
          v158 = vmulq_f32(v157, v157);
          v159 = vbslq_s8(v154, vaddq_f32(vrev64q_s32(v158), vaddq_f32(vextq_s8(v158, v158, 4uLL), vextq_s8(v158, v158, 8uLL))), v157);
          v160 = vextq_s8(v159, v159, 0xCuLL);
          v161 = vminq_f32(vrsqrteq_f32(v160), v153);
          v162 = vminq_f32(vmulq_f32(v161, vrsqrtsq_f32(vmulq_f32(v161, v160), v161)), v153);
          v163 = vmulq_f32(v162, vrsqrtsq_f32(vmulq_f32(v162, v160), v162));
          v164 = vextq_s8(v163, v163, 4uLL);
          v165 = vminq_f32(vmaxq_f32(vrecpeq_f32(v164), v146), v153);
          v166 = vminq_f32(vmaxq_f32(vmulq_f32(v165, vrecpsq_f32(v164, v165)), v146), v153);
          v167 = vbslq_s8(v154, vmulq_f32(v166, vrecpsq_f32(v164, v166)), vmulq_n_f32(v159, *v163.i32));
          v168 = *(v139 + 240);
          v169 = vmaxq_f32(vsubq_f32(v167, *(v139 + 64)), *(v139 + 224));
          v170 = *(v139 + 48);
          v171 = vaddq_f32(vdupq_lane_s64(v170.i64[0], 0), vmulq_laneq_f32(vextq_s8(v8, v170, 0xCuLL), v169, 3));
          v171.i64[0] = vmulq_laneq_f32(vextq_s8(v170, v8, 4uLL), v169, 3).u64[0];
          v172 = vdupq_laneq_s32(vmaxq_f32(vaddq_f32(vmulq_lane_f32(v169, *v171.i8, 1), vrev64q_s32(v171)), v168), 3);
          v173 = vminq_f32(vmaxq_f32(vrecpeq_f32(v172), v146), v153);
          v174 = vmulq_f32(*(v139 + 32), v167);
          v175 = vminq_f32(vmaxq_f32(vmulq_f32(v173, vrecpsq_f32(v172, v173)), v146), v153);
          *(*&v6 + 16 * v12) = vaddq_f32(*(*&v7 + 16 * v12), vmulq_n_f32(vmulq_f32(vmulq_f32(v175, vrecpsq_f32(v172, v175)), *(v139 + 16)), vmaxq_f32(vaddq_f32(vextq_s8(v174, v174, 8uLL), vaddq_f32(v174, vrev64q_s32(v174))), v168).f32[0]));
          v14 = vaddq_f32(v14, xmmword_2603429B0);
          ++v12;
        }

        while (v12 < v5);
      }

      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      *&v6 += v9;
      *&v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeLightProgramPointSurfaceDiffuse::GetDOD(LiHeLightProgramPointSurfaceDiffuse *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeLightProgramPointSurfaceDiffuse::GetROI(LiHeLightProgramPointSurfaceDiffuse *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeLightProgramPointSurfaceDiffuse::LiHeLightProgramPointSurfaceDiffuse(LiHeLightProgramPointSurfaceDiffuse *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872752D0;
  operator new();
}

void LiHeLightProgramPointSurfaceDiffuse::~LiHeLightProgramPointSurfaceDiffuse(HGNode *this)
{
  *this = &unk_2872752D0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40881B329ALL);
  }

  HGNode::~HGNode(this);
}

{
  LiHeLightProgramPointSurfaceDiffuse::~LiHeLightProgramPointSurfaceDiffuse(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightProgramPointSurfaceDiffuse::SetParameter(LiHeLightProgramPointSurfaceDiffuse *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v13 = *(this + 51);
        if (*(v13 + 32) != a3.n128_f32[0] || *(v13 + 36) != a4 || *(v13 + 40) != a5 || *(v13 + 44) != a6)
        {
          *(v13 + 32) = a3.n128_u32[0];
          *(v13 + 36) = a4;
          *(v13 + 40) = a5;
          *(v13 + 44) = a6;
          goto LABEL_56;
        }
      }

      else
      {
        v10 = *(this + 51);
        if (*(v10 + 48) != a3.n128_f32[0] || *(v10 + 52) != a4 || *(v10 + 56) != a5 || *(v10 + 60) != a6)
        {
          *(v10 + 48) = a3.n128_u32[0];
          *(v10 + 52) = a4;
          *(v10 + 56) = a5;
          *(v10 + 60) = a6;
          goto LABEL_56;
        }
      }

      return 0;
    }

    if (!a2)
    {
      v12 = *(this + 51);
      if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
      {
        *v12 = a3.n128_u32[0];
        *(v12 + 4) = a4;
        *(v12 + 8) = a5;
        *(v12 + 12) = a6;
        goto LABEL_56;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v9 = *(this + 51);
      if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a4 || *(v9 + 24) != a5 || *(v9 + 28) != a6)
      {
        *(v9 + 16) = a3.n128_u32[0];
        *(v9 + 20) = a4;
        *(v9 + 24) = a5;
        *(v9 + 28) = a6;
        goto LABEL_56;
      }

      return 0;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v15 = *(this + 51);
        if (v15[4].n128_f32[0] != 0.0 || v15[4].n128_f32[1] != 0.0 || v15[4].n128_f32[2] != 0.0 || v15[4].n128_f32[3] != a3.n128_f32[0])
        {
          v15[4].n128_u64[0] = 0;
          v15[4].n128_u32[3] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v15[4].n128_u32[2] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v15[16] = a3;
          goto LABEL_56;
        }
      }

      else
      {
        v11 = *(this + 51);
        if (*(v11 + 80) != a3.n128_f32[0] || *(v11 + 84) != a4 || *(v11 + 88) != a5 || *(v11 + 92) != a6)
        {
          *(v11 + 80) = a3.n128_u32[0];
          *(v11 + 84) = a4;
          *(v11 + 88) = a5;
          *(v11 + 92) = a6;
          goto LABEL_56;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 6:
        v14 = *(this + 51);
        if (*(v14 + 96) != a3.n128_f32[0] || *(v14 + 100) != a4 || *(v14 + 104) != a5 || *(v14 + 108) != a6)
        {
          *(v14 + 96) = a3.n128_u32[0];
          *(v14 + 100) = a4;
          *(v14 + 104) = a5;
          *(v14 + 108) = a6;
          goto LABEL_56;
        }

        return 0;
      case 7:
        v16 = *(this + 51);
        if (*(v16 + 112) != a3.n128_f32[0] || *(v16 + 116) != a4 || *(v16 + 120) != a5 || *(v16 + 124) != a6)
        {
          *(v16 + 112) = a3.n128_u32[0];
          *(v16 + 116) = a4;
          *(v16 + 120) = a5;
          *(v16 + 124) = a6;
          goto LABEL_56;
        }

        return 0;
      case 8:
        v8 = *(this + 51);
        if (*(v8 + 128) != a3.n128_f32[0] || *(v8 + 132) != a4 || *(v8 + 136) != a5 || *(v8 + 140) != a6)
        {
          *(v8 + 128) = a3.n128_u32[0];
          *(v8 + 132) = a4;
          *(v8 + 136) = a5;
          *(v8 + 140) = a6;
LABEL_56:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

uint64_t LiHeLightProgramPointSurfaceDiffuse::GetParameter(LiHeLightProgramPointSurfaceDiffuse *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      v7 = *(this + 51);
      if (a2 == 2)
      {
        *a3 = v7[8];
        a3[1] = v7[9];
        a3[2] = v7[10];
        v5 = v7 + 11;
      }

      else
      {
        *a3 = v7[12];
        a3[1] = v7[13];
        a3[2] = v7[14];
        v5 = v7 + 15;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v9 = *(this + 51);
      *a3 = *v9;
      a3[1] = v9[1];
      a3[2] = v9[2];
      v5 = v9 + 3;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v6 = *(this + 51);
      *a3 = v6[4];
      a3[1] = v6[5];
      a3[2] = v6[6];
      v5 = v6 + 7;
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      v8 = *(this + 51);
      if (a2 == 4)
      {
        *a3 = v8[64];
        a3[1] = v8[65];
        a3[2] = v8[66];
        v5 = v8 + 67;
      }

      else
      {
        *a3 = v8[20];
        a3[1] = v8[21];
        a3[2] = v8[22];
        v5 = v8 + 23;
      }

      goto LABEL_20;
    }

    switch(a2)
    {
      case 6:
        v10 = *(this + 51);
        *a3 = v10[24];
        a3[1] = v10[25];
        a3[2] = v10[26];
        v5 = v10 + 27;
        goto LABEL_20;
      case 7:
        v11 = *(this + 51);
        *a3 = v11[28];
        a3[1] = v11[29];
        a3[2] = v11[30];
        v5 = v11 + 31;
        goto LABEL_20;
      case 8:
        v4 = *(this + 51);
        *a3 = v4[32];
        a3[1] = v4[33];
        a3[2] = v4[34];
        v5 = v4 + 35;
LABEL_20:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  return v3;
}

const char *LiHeLightProgramSpotSurface::GetProgram(LiHeLightProgramSpotSurface *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000ac5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n    const half4 c1 = half4(0.000000000, 9.999999747e-05, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0 = frag._texCoord1.yyyy*hg_Params[9];\n    s0 = frag._texCoord1.xxxx*hg_Params[8] + s0;\n    s0 = frag._texCoord1.zzzz*hg_Params[10] + s0;\n    s1 = s0 + hg_Params[11];\n    s0.x = float(s0.w < -hg_Params[11].w);\n    s0.y = fmax(s1.w, float(c0.y));\n    s0.z = fmin(s1.w, -float(c0.y));\n    s0.x = select(s0.y, s0.z, -s0.x < 0.00000h);\n    s1.xyz = s1.xyz/s0.xxx;\n    s0.xyz = hg_Params[0].xyz - s1.xyz;\n    s0.w = dot(s0.xyz, s0.xyz);\n    s1.xyz = -s1.xyz*hg_Params[5].www + hg_Params[5].xyz;\n    s0.w = rsqrt(s0.w);\n    s0.xyz = s0.www*s0.xyz;\n    s1.w = dot(s1.xyz, s1.xyz);\n    s1.w = rsqrt(s1.w);\n    s1.xyz = s1.www*s1.xyz + s0.xyz;\n    s1.xyz = normalize(s1.xyz).xyz;\n    s1.y = dot(s1.xyz, hg_Params[4].xyz);\n    s1.w = dot(-s0.xyz, hg_Params[15].xyz);\n    s1.y = fmax(s1.y, float(c0.x));\n    s2.z = pow(s1.y, hg_Params[3].z);\n    s2.x = hg_Params[12].x - hg_Params[13].x;\n    s2.y = 1.00000f / s2.x;\n    s1.x = float(s1.w < hg_Params[13].x);\n    s2.x = s1.w - hg_Params[13].x;\n    s2.x = clamp(s2.x*s2.y, 0.00000f, 1.00000f);\n    s2.y = s2.x*float(c0.z) + float(c0.w);\n    s2.x = s2.x*s2.x;\n    s0.w = 1.00000f / s0.w;\n    s0.y = dot(s0.xyz, hg_Params[4].xyz);\n    s0.w = s0.w - hg_Params[7].w;\n    s0.xw = fmax(s0.wy, float2(c0.xx));\n    s0.z = s0.x*hg_Params[6].y + hg_Params[6].x;\n    s0.y = s0.x*hg_Params[6].z;\n    s0.x = s0.y*s0.x + s0.z;\n    s0.x = fmax(s0.x, float(c0.y));\n    s0.y = float(float(c1.y) < fabs(s0.w));\n    s1.x = float(-s1.x >= float(c0.x));\n    s1.y = float(s1.w < hg_Params[12].x);\n    s1.z = fmin(s1.x, s1.y);\n    s1.x = s1.x*s1.y + -s1.x;\n    s2.x = s2.x*s2.y;\n    s1.z = select(float(c0.x), s2.x, -s1.z < 0.00000h);\n    s1.y = pow(s1.w, hg_Params[14].y);\n    s1.x = select(s1.z, s1.y, s1.x < 0.00000h);\n    s0.x = s1.x/s0.x;\n    s2.x = select(float(c0.x), s2.z, -s0.y < 0.00000h);\n    s0.xyz = s0.xxx*hg_Params[1].xyz;\n    s2.xyz = s0.xyz*s2.xxx;\n    s2.xyz = s2.xyz*hg_Params[2].xyz;\n    s2.xyz = s0.www*s0.xyz + s2.xyz;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = float3(r0.xyz) + s2.xyz;\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=65f84872:8db1f15b:1f12c98c:ea287b12\n//SIG=00400000:00000001:00000001:00000001:0002:0010:0004:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000a57\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n    const float4 c1 = float4(0.000000000, 9.999999747e-05, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = frag._texCoord1.yyyy*hg_Params[9];\n    r0 = frag._texCoord1.xxxx*hg_Params[8] + r0;\n    r0 = frag._texCoord1.zzzz*hg_Params[10] + r0;\n    r1 = r0 + hg_Params[11];\n    r0.x = float(r0.w < -hg_Params[11].w);\n    r0.y = fmax(r1.w, c0.y);\n    r0.z = fmin(r1.w, -c0.y);\n    r0.x = select(r0.y, r0.z, -r0.x < 0.00000f);\n    r1.xyz = r1.xyz/r0.xxx;\n    r0.xyz = hg_Params[0].xyz - r1.xyz;\n    r0.w = dot(r0.xyz, r0.xyz);\n    r1.xyz = -r1.xyz*hg_Params[5].www + hg_Params[5].xyz;\n    r0.w = rsqrt(r0.w);\n    r0.xyz = r0.www*r0.xyz;\n    r1.w = dot(r1.xyz, r1.xyz);\n    r1.w = rsqrt(r1.w);\n    r1.xyz = r1.www*r1.xyz + r0.xyz;\n    r1.xyz = normalize(r1.xyz).xyz;\n    r1.y = dot(r1.xyz, hg_Params[4].xyz);\n    r1.w = dot(-r0.xyz, hg_Params[15].xyz);\n    r1.y = fmax(r1.y, c0.x);\n    r2.z = pow(r1.y, hg_Params[3].z);\n    r2.x = hg_Params[12].x - hg_Params[13].x;\n    r2.y = 1.00000f / r2.x;\n    r1.x = float(r1.w < hg_Params[13].x);\n    r2.x = r1.w - hg_Params[13].x;\n    r2.x = clamp(r2.x*r2.y, 0.00000f, 1.00000f);\n    r2.y = r2.x*c0.z + c0.w;\n    r2.x = r2.x*r2.x;\n    r0.w = 1.00000f / r0.w;\n    r0.y = dot(r0.xyz, hg_Params[4].xyz);\n    r0.w = r0.w - hg_Params[7].w;\n    r0.xw = fmax(r0.wy, c0.xx);\n    r0.z = r0.x*hg_Params[6].y + hg_Params[6].x;\n    r0.y = r0.x*hg_Params[6].z;\n    r0.x = r0.y*r0.x + r0.z;\n    r0.x = fmax(r0.x, c0.y);\n    r0.y = float(c1.y < fabs(r0.w));\n    r1.x = float(-r1.x >= c0.x);\n    r1.y = float(r1.w < hg_Params[12].x);\n    r1.z = fmin(r1.x, r1.y);\n    r1.x = r1.x*r1.y + -r1.x;\n    r2.x = r2.x*r2.y;\n    r1.z = select(c0.x, r2.x, -r1.z < 0.00000f);\n    r1.y = pow(r1.w, hg_Params[14].y);\n    r1.x = select(r1.z, r1.y, r1.x < 0.00000f);\n    r0.x = r1.x/r0.x;\n    r2.x = select(c0.x, r2.z, -r0.y < 0.00000f);\n    r0.xyz = r0.xxx*hg_Params[1].xyz;\n    r2.xyz = r0.xyz*r2.xxx;\n    r2.xyz = r2.xyz*hg_Params[2].xyz;\n    r2.xyz = r0.www*r0.xyz + r2.xyz;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = r1.xyz + r2.xyz;\n    output.color0.w = r1.w;\n    return output;\n}\n//MD5=660a03f2:ca8d7de1:4c4e1365:c0a9ca26\n//SIG=00000000:00000001:00000001:00000000:0002:0010:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000cac\n"
           "#ifndef GL_ES\n"
           "#define lowp\n"
           "#define mediump\n"
           "#define highp\n"
           "#endif\n"
           "#define defaultp mediump\n"
           "uniform defaultp sampler2D hg_Texture0;\n"
           "uniform highp vec4 hg_ProgramLocal0;\n"
           "uniform highp vec4 hg_ProgramLocal1;\n"
           "uniform highp vec4 hg_ProgramLocal2;\n"
           "uniform highp vec4 hg_ProgramLocal3;\n"
           "uniform highp vec4 hg_ProgramLocal4;\n"
           "uniform highp vec4 hg_ProgramLocal5;\n"
           "uniform highp vec4 hg_ProgramLocal6;\n"
           "uniform highp vec4 hg_ProgramLocal7;\n"
           "uniform highp vec4 hg_ProgramLocal8;\n"
           "uniform highp vec4 hg_ProgramLocal9;\n"
           "uniform highp vec4 hg_ProgramLocal10;\n"
           "uniform highp vec4 hg_ProgramLocal11;\n"
           "uniform highp vec4 hg_ProgramLocal12;\n"
           "uniform highp vec4 hg_ProgramLocal13;\n"
           "uniform highp vec4 hg_ProgramLocal14;\n"
           "uniform highp vec4 hg_ProgramLocal15;\n"
           "varying highp vec4 hg_TexCoord0;\n"
           "varying highp vec4 hg_TexCoord1;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n"
           "    const highp vec4 c1 = vec4(0.000000000, 9.999999747e-05, 0.000000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2;\n"
           "\n"
           "    r0 = hg_TexCoord1.yyyy*hg_ProgramLocal9;\n"
           "    r0 = hg_TexCoord1.xxxx*hg_ProgramLocal8 + r0;\n"
           "    r0 = hg_TexCoord1.zzzz*hg_ProgramLocal10 + r0;\n"
           "    r1 = r0 + hg_ProgramLocal11;\n"
           "    r0.x = float(r0.w < -hg_ProgramLocal11.w);\n"
           "    r0.y = max(r1.w, c0.y);\n"
           "    r0.z = min(r1.w, -c0.y);\n"
           "    r0.x = -r0.x < 0.00000 ? r0.z : r0.y;\n"
           "    r1.xyz = r1.xyz/r0.xxx;\n"
           "    r0.xyz = hg_ProgramLocal0.xyz - r1.xyz;\n"
           "    r0.w = dot(r0.xyz, r0.xyz);\n"
           "    r1.xyz = -r1.xyz*hg_ProgramLocal5.www + hg_ProgramLocal5.xyz;\n"
           "    r0.w = inversesqrt(r0.w);\n"
           "    r0.xyz = r0.www*r0.xyz;\n"
           "    r1.w = dot(r1.xyz, r1.xyz);\n"
           "    r1.w = inversesqrt(r1.w);\n"
           "    r1.xyz = r1.www*r1.xyz + r0.xyz;\n"
           "    r1.xyz = normalize(r1.xyz).xyz;\n"
           "    r1.y = dot(r1.xyz, hg_ProgramLocal4.xyz);\n"
           "    r1.w = dot(-r0.xyz, hg_ProgramLocal15.xyz);\n"
           "    r1.y = max(r1.y, c0.x);\n"
           "    r2.z = pow(r1.y, hg_ProgramLocal3.z);\n"
           "    r2.x = hg_ProgramLocal12.x - hg_ProgramLocal13.x;\n"
           "    r2.y = 1.00000 / r2.x;\n"
           "    r1.x = float(r1.w < hg_ProgramLocal13.x);\n"
           "    r2.x = r1.w - hg_ProgramLocal13.x;\n"
           "    r2.x = clamp(r2.x*r2.y, 0.00000, 1.00000);\n"
           "    r2.y = r2.x*c0.z + c0.w;\n"
           "    r2.x = r2.x*r2.x;\n"
           "    r0.w = 1.00000 / r0.w;\n"
           "    r0.y = dot(r0.xyz, hg_ProgramLocal4.xyz);\n"
           "    r0.w = r0.w - hg_ProgramLocal7.w;\n"
           "    r0.xw = max(r0.wy, c0.xx);\n"
           "    r0.z = r0.x*hg_ProgramLocal6.y + hg_ProgramLocal6.x;\n"
           "    r0.y = r0.x*hg_ProgramLocal6.z;\n"
           "    r0.x = r0.y*r0.x + r0.z;\n"
           "    r0.x = max(r0.x, c0.y);\n"
           "    r0.y = float(c1.y < abs(r0.w));\n"
           "    r1.x = float(-r1.x >= c0.x);\n"
           "    r1.y = float(r1.w < hg_ProgramLocal12.x);\n"
           "    r1.z = min(r1.x, r1.y);\n"
           "    r1.x = r1.x*r1.y + -r1.x;\n"
           "    r2.x = r2.x*r2.y;\n"
           "    r1.z = -r1.z < 0.00000 ? r2.x : c0.x;\n"
           "    r1.y = pow(r1.w, hg_ProgramLocal14.y);\n"
           "    r1.x = r1.x < 0.00000 ? r1.y : r1.z;\n"
           "    r0.x = r1.x/r0.x;\n"
           "    r2.x = -r0.y < 0.00000 ? r2.z : c0.x;\n"
           "    r0.xyz = r0.xxx*hg_ProgramLocal1.xyz;\n"
           "    r2.xyz = r0.xyz*r2.xxx;\n"
           "    r2.xyz = r2.xyz*hg_ProgramLocal2.xyz;\n"
           "    r2.xyz = r0.www*r0.xyz + r2.xyz;\n"
           "    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n"
           "    gl_FragColor.xyz = r1.xyz + r2.xyz;\n"
           "    gl_FragColor.w = r1.w;\n"
           "}\n"
           "//MD5=97a6a3d5:75f0ced2:9f9d6cba:b992d90b\n"
           "//SIG=00000000:00000001:00000001:00000000:0002:0010:0003:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_260060C54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260345820;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260060D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260060DDC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260060DD4);
}

uint64_t LiHeLightProgramSpotSurface::BindTexture(LiHeLightProgramSpotSurface *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t LiHeLightProgramSpotSurface::Bind(LiHeLightProgramSpotSurface *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*a2 + 144))(a2, 12, *(this + 51) + 192, 1);
  (*(*a2 + 144))(a2, 13, *(this + 51) + 208, 1);
  (*(*a2 + 144))(a2, 14, *(this + 51) + 224, 1);
  (*(*a2 + 144))(a2, 15, *(this + 51) + 240, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeLightProgramSpotSurface::RenderTile(LiHeLightProgramSpotSurface *this, HGTile *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 3) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 2) - *a2;
    v6 = *(a2 + 2);
    v7 = *(a2 + 10);
    v8.f32[0] = *a2 + 0.5;
    v8.f32[1] = v2 + 0.5;
    v8.i32[2] = 0;
    v8.i32[3] = 1.0;
    v126 = v8;
    v9 = 16 * *(a2 + 6);
    v10 = 16 * *(a2 + 22);
    do
    {
      if (v5 >= 1)
      {
        v11 = 0;
        v12 = v126;
        do
        {
          v133 = v12;
          v13 = *(this + 51);
          v14 = vaddq_f32(vmulq_lane_f32(*(v13 + 144), *v12.f32, 1), vmulq_n_f32(*(v13 + 128), v12.f32[0]));
          v15 = *(v13 + 176);
          v16 = vaddq_f32(v14, vmulq_laneq_f32(*(v13 + 160), v133, 2));
          v17 = vaddq_f32(v15, v16);
          v18 = *(v13 + 256);
          v132 = *(v13 + 272);
          v19 = vandq_s8(v18, vcgtq_f32(vnegq_f32(v15), v16));
          v20 = vminq_f32(vrev64q_s32(v17), v18);
          v19.i64[0] = vbslq_s8(v132, vextq_s8(v19, v19, 0xCuLL), vmaxq_f32(vextq_s8(v17, v17, 8uLL), v18)).u64[0];
          v19.i64[1] = v20.i64[1];
          v21 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v19, v18), vdupq_laneq_s32(v20, 2), vdupq_lane_s32(*v19.f32, 1)), 0);
          v22 = *(v13 + 288);
          v23 = *(v13 + 304);
          v24 = vminq_f32(vmaxq_f32(vrecpeq_f32(v21), v22), v23);
          v25 = vminq_f32(vmaxq_f32(vmulq_f32(v24, vrecpsq_f32(v21, v24)), v22), v23);
          v26 = vmulq_f32(v17, vmulq_f32(v25, vrecpsq_f32(v21, v25)));
          v27 = vsubq_f32(*v13, v26);
          v28 = vmulq_f32(v27, v27);
          v29 = *(v13 + 64);
          v30 = *(v13 + 320);
          v31 = *(v13 + 336);
          v32 = vbslq_s8(v30, vaddq_f32(vrev64q_s32(v28), vaddq_f32(vextq_s8(v28, v28, 4uLL), vextq_s8(v28, v28, 8uLL))), v27);
          v33 = vsubq_f32(*(v13 + 80), vmulq_laneq_f32(v26, *(v13 + 80), 3));
          v34 = vminq_f32(vrsqrteq_f32(v32), v23);
          v35 = vminq_f32(vmulq_f32(v34, vrsqrtsq_f32(vmulq_f32(v34, v32), v34)), v23);
          v36 = vmulq_f32(v33, v33);
          v37 = vmulq_f32(v35, vrsqrtsq_f32(vmulq_f32(v35, v32), v35));
          v38 = vbslq_s8(v30, v37, v27);
          v39 = vbslq_s8(v30, vaddq_f32(vrev64q_s32(v36), vaddq_f32(vextq_s8(v36, v36, 4uLL), vextq_s8(v36, v36, 8uLL))), v33);
          v40 = vminq_f32(vrsqrteq_f32(v39), v23);
          v41 = vmulq_laneq_f32(v38, v38, 3);
          v42 = vminq_f32(vmulq_f32(v40, vrsqrtsq_f32(vmulq_f32(v40, v39), v40)), v23);
          v43 = vbslq_s8(v30, v37, v41);
          v44 = vbslq_s8(v30, vmulq_f32(v42, vrsqrtsq_f32(vmulq_f32(v42, v39), v42)), v33);
          v45 = vaddq_f32(vmulq_laneq_f32(v44, v44, 3), v43);
          v46 = vmulq_f32(v45, v45);
          v47 = vaddq_f32(vdupq_laneq_s32(v46, 2), vaddq_f32(vdupq_lane_s32(*v46.i8, 0), vdupq_lane_s32(*v46.i8, 1)));
          v48 = vminq_f32(vrsqrteq_f32(v47), v23);
          v49 = vminq_f32(vmulq_f32(v48, vrsqrtsq_f32(vmulq_f32(v48, v47), v48)), v23);
          v50 = vmulq_f32(v29, vmulq_f32(vmulq_f32(v49, vrsqrtsq_f32(vmulq_f32(v49, v47), v49)), v45));
          v51 = vmulq_f32(*(v13 + 240), vnegq_f32(v43));
          v50.i64[0] = vaddq_f32(vextq_s8(v50, v50, 4uLL), vaddq_f32(v50, vrev64q_s32(v50))).u64[0];
          v52 = vaddq_f32(vrev64q_s32(v51), vaddq_f32(vextq_s8(v51, v51, 4uLL), vdupq_lane_s64(v51.i64[0], 0)));
          v50.i64[1] = v52.i64[1];
          v50.i64[0] = vmaxq_f32(v50, v31).u64[0];
          v50.i64[1] = v52.i64[1];
          v53 = *(v13 + 48);
          v54 = *(v13 + 352);
          v131 = *(v13 + 368);
          v55 = vextq_s8(v50, v50, 0xCuLL);
          v56 = vbslq_s8(vcgtq_f32(vandq_s8(v54, vceqq_f32(v53, v31)), v31), v54, v55);
          v57 = vorrq_s8(vandq_s8(v56, v131), v54);
          v129 = *(v13 + 400);
          v130 = *(v13 + 384);
          v127 = *(v13 + 416);
          v128 = *(v13 + 432);
          v58 = vandq_s8(v54, vcgtq_f32(v57, v128));
          v59 = *(v13 + 448);
          v60 = *(v13 + 464);
          v61 = vsubq_f32(vsubq_f32(v57, v54), vmulq_f32(vmulq_f32(v59, v58), v57));
          v62 = vmulq_f32(v61, v61);
          v63 = *(v13 + 480);
          v64 = *(v13 + 496);
          v65 = *(v13 + 512);
          v66 = *(v13 + 528);
          v67 = *(v13 + 544);
          v68 = *(v13 + 560);
          v70 = *(v13 + 576);
          v69 = *(v13 + 592);
          v71 = vmaxq_f32(vmulq_f32(v53, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v56, 0x17uLL)), vandq_s8(v129, vcgtq_f32(v130, v56))), v127), v58), vmulq_f32(v61, vaddq_f32(v68, vmulq_f32(v61, vaddq_f32(vaddq_f32(v66, vmulq_f32(v67, v61)), vmulq_f32(v62, vaddq_f32(vaddq_f32(v60, vmulq_f32(v63, v61)), vmulq_f32(v62, vaddq_f32(v64, vmulq_f32(v65, v61))))))))))), v70);
          v72 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
          v73 = vsubq_f32(v72, vandq_s8(v54, vcgtq_f32(v72, v71)));
          v74 = vsubq_f32(v71, v73);
          v76 = *(v13 + 608);
          v75 = *(v13 + 624);
          v78 = *(v13 + 640);
          v77 = *(v13 + 656);
          v79 = *(v13 + 672);
          v80 = *(v13 + 688);
          v81 = vmulq_f32(vaddq_f32(v54, vmulq_f32(v74, vaddq_f32(v77, vmulq_f32(v74, vaddq_f32(vaddq_f32(v75, vmulq_f32(v78, v74)), vmulq_f32(vmulq_f32(v74, v74), vaddq_f32(v69, vmulq_f32(v76, v74)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v73), v79), 0x17uLL));
          v83 = *(v13 + 192);
          v82 = *(v13 + 208);
          v74.i64[0] = vsubq_f32(v83, v82).u64[0];
          v74.i64[1] = vdupq_laneq_s64(v81, 1).u64[0];
          v84 = vrev64q_s32(v74);
          v85 = vminq_f32(vmaxq_f32(vmulq_f32(v77, vrecpeq_f32(v84)), v78), v23);
          v84.i64[0] = vmulq_f32(v85, vrecpsq_f32(v84, v85)).u64[0];
          v84.i64[1] = v81.i64[1];
          v86 = vandq_s8(v77, vcgtq_f32(v82, v55));
          v85.i64[0] = vextq_s8(v52, v86, 0xCuLL).u64[0];
          *&v85.u32[2] = vext_s8(*v86.f32, *&vextq_s8(v52, v52, 8uLL), 4uLL);
          v87 = vbslq_s8(v132, vsubq_f32(v85, v82), v84);
          v88 = vminq_f32(vmaxq_f32(vrecpeq_f32(v43), v77), v23);
          v89 = vminq_f32(vmaxq_f32(vmulq_f32(v88, vrecpsq_f32(v43, v88)), v77), v23);
          v90 = vbslq_s8(v30, vmulq_f32(v89, vrecpsq_f32(v43, v89)), v41);
          v91 = vmulq_f32(v29, v90);
          v92 = *(v13 + 96);
          *v91.f32 = vadd_f32(*&vextq_s8(v91, v84, 4uLL), vadd_f32(*v91.f32, vrev64_s32(*v91.f32)));
          *&v91.u32[2] = vsub_f32(*&vextq_s8(v90, v90, 8uLL), *&vextq_s8(*(v13 + 112), *(v13 + 112), 8uLL));
          v85.i64[0] = vminq_f32(vmaxq_f32(vmulq_lane_f32(v87, *v87.f32, 1), v78), v77).u64[0];
          v41.i64[0] = v85.i64[0];
          v85.i64[1] = vdupq_laneq_s64(v87, 1).u64[0];
          *v90.f32 = vqtbl1_s8(v91, *&vextq_s8(v79, v79, 8uLL));
          *v91.f32 = vqtbl1_s8(v91, *v79.i8);
          v91.i64[1] = v90.i64[0];
          v93 = vmaxq_f32(v91, v78);
          v94 = *(v13 + 704);
          v95 = vbslq_s8(v94, vaddq_f32(vextq_s8(v92, v92, 8uLL), vmulq_n_f32(vextq_s8(v92, v92, 0xCuLL), *v93.i32)), v93);
          v86.i64[1] = v52.i64[1];
          v96 = vbslq_s8(v80, vmulq_n_f32(vextq_s8(v92, v92, 4uLL), *v95.i32), v95);
          v97 = vandq_s8(v77, vcgeq_f32(vnegq_f32(v86), v78));
          v41.i64[1] = v87.i64[1];
          v98 = vextq_s8(v52, v97, 8uLL);
          v97.i64[1] = v52.i64[1];
          v99 = vbslq_s8(v80, vandq_s8(v70, vcgtq_f32(vrev64q_s32(v83), v98)), v97);
          v100 = vbslq_s8(v80, vaddq_f32(v75, vmulq_f32(v76, vrev64q_s32(v85))), v41);
          v101 = vbslq_s8(v94, vminq_f32(vextq_s8(v99, v99, 8uLL), vextq_s8(v99, v99, 0xCuLL)), v99);
          v102 = vbslq_s8(v132, vmulq_f32(v100, v100), v100);
          v86.i64[0] = vsubq_f32(vmulq_lane_f32(v101, *v101.f32, 1), v101).u64[0];
          v86.i64[1] = v101.i64[1];
          v103 = vextq_s8(v102, vmulq_lane_f32(v102, *v102.f32, 1), 8uLL);
          v104 = vbslq_s8(v94, vbslq_s8(vcgtq_f32(v86, v31), v103, v31), v86);
          v101.i64[0] = vaddq_f32(vdupq_laneq_s64(v96, 1), vmulq_lane_f32(v96, *v96.f32, 1)).u64[0];
          v101.i64[1] = v96.i64[1];
          v105 = vmaxq_f32(v101, v75);
          v106 = vextq_s8(v96, v105, 8uLL);
          v105.i64[1] = v96.i64[1];
          v107 = *(v13 + 224);
          v108 = vbslq_s8(vcgtq_f32(vandq_s8(v70, vceqq_f32(v107, v68)), v68), v70, vextq_s8(v104, v104, 8uLL));
          v109 = vorrq_s8(vandq_s8(v108, v79), v70);
          v110 = vandq_s8(v70, vcgtq_f32(v109, v64));
          v111 = vsubq_f32(vsubq_f32(v109, v70), vmulq_f32(vmulq_f32(v63, v110), v109));
          v112 = vmulq_f32(v111, v111);
          v113 = vmaxq_f32(vmulq_f32(v107, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v108, 0x17uLL)), vandq_s8(v66, vcgtq_f32(v67, v108))), v65), v110), vmulq_f32(v111, vaddq_f32(v54, vmulq_f32(v111, vaddq_f32(vaddq_f32(v129, vmulq_f32(v130, v111)), vmulq_f32(v112, vaddq_f32(vaddq_f32(v60, vmulq_f32(v59, v111)), vmulq_f32(v112, vaddq_f32(v128, vmulq_f32(v127, v111))))))))))), *(v13 + 720));
          v114 = vbslq_s8(v80, vandq_s8(vcagtq_f32(v106, v69), v70), v105);
          v115 = vcvtq_f32_s32(vcvtq_s32_f32(v113));
          v116 = vsubq_f32(v115, vandq_s8(v70, vcgtq_f32(v115, v113)));
          v117 = vsubq_f32(v113, v116);
          v118 = *(v13 + 784);
          v119 = *(v13 + 800);
          v120 = vbslq_s8(v80, vmulq_f32(vaddq_f32(v70, vmulq_f32(v117, vaddq_f32(v119, vmulq_f32(v117, vaddq_f32(vaddq_f32(*(v13 + 768), vmulq_f32(v118, v117)), vmulq_f32(vmulq_f32(v117, v117), vaddq_f32(*(v13 + 736), vmulq_f32(*(v13 + 752), v117)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v116), v131), 0x17uLL)), v104);
          v121 = vminq_f32(vmaxq_f32(vrecpeq_f32(v114), v118), v23);
          v122 = vminq_f32(vmaxq_f32(vmulq_f32(v121, vrecpsq_f32(v114, v121)), v118), v23);
          v123 = vbslq_s8(v132, vmulq_f32(vmulq_f32(v122, vrecpsq_f32(v114, v122)), vbslq_s8(vcgtq_f32(v119, v120), vrev64q_s32(v120), vextq_s8(v120, v120, 8uLL))), v114);
          v122.i32[0] = vbslq_s8(vcgtq_f32(vrev64q_s32(v123), v119), v103, v119).u32[0];
          v124 = vbslq_s8(v30, v123, vmulq_n_f32(*(v13 + 16), *v123.i32));
          *(v6 + v11) = vbslq_s8(v30, *(v7 + v11), vaddq_f32(*(v7 + v11), vaddq_f32(vmulq_f32(*(v13 + 32), vmulq_n_f32(v124, v122.f32[0])), vmulq_laneq_f32(v124, v124, 3))));
          v12 = vaddq_f32(v133, xmmword_2603429B0);
          v11 += 16;
        }

        while (16 * v5 != v11);
      }

      v126 = vaddq_f32(v126, xmmword_2603429C0);
      ++v4;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeLightProgramSpotSurface::GetDOD(LiHeLightProgramSpotSurface *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeLightProgramSpotSurface::GetROI(LiHeLightProgramSpotSurface *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeLightProgramSpotSurface::LiHeLightProgramSpotSurface(LiHeLightProgramSpotSurface *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287275538;
  operator new();
}

void LiHeLightProgramSpotSurface::~LiHeLightProgramSpotSurface(HGNode *this)
{
  *this = &unk_287275538;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40A461079ELL);
  }

  HGNode::~HGNode(this);
}

{
  LiHeLightProgramSpotSurface::~LiHeLightProgramSpotSurface(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightProgramSpotSurface::SetParameter(LiHeLightProgramSpotSurface *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  switch(a2)
  {
    case 0:
      v7 = *(this + 51);
      if (*v7 == a3.n128_f32[0] && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
      {
        return 0;
      }

      *v7 = a3.n128_f32[0];
      v7[1] = a4;
      v7[2] = a5;
      v7[3] = a6;
      goto LABEL_82;
    case 1:
      v17 = *(this + 51);
      if (v17[4] == a3.n128_f32[0] && v17[5] == a4 && v17[6] == a5 && v17[7] == a6)
      {
        return 0;
      }

      v17[4] = a3.n128_f32[0];
      v17[5] = a4;
      v17[6] = a5;
      v17[7] = a6;
      goto LABEL_82;
    case 2:
      v13 = *(this + 51);
      if (v13[8] == a3.n128_f32[0] && v13[9] == a4 && v13[10] == a5 && v13[11] == a6)
      {
        return 0;
      }

      v13[8] = a3.n128_f32[0];
      v13[9] = a4;
      v13[10] = a5;
      v13[11] = a6;
      goto LABEL_82;
    case 3:
      v15 = *(this + 51);
      if (v15[3].n128_f32[0] == 0.0 && v15[3].n128_f32[1] == 0.0 && v15[3].n128_f32[2] == a3.n128_f32[0] && v15[3].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v15[3].n128_u64[0] = 0;
      v15[3].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v15[3].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v15[51] = a3;
      goto LABEL_82;
    case 4:
      v10 = *(this + 51);
      if (v10[16] == a3.n128_f32[0] && v10[17] == a4 && v10[18] == a5 && v10[19] == a6)
      {
        return 0;
      }

      v10[16] = a3.n128_f32[0];
      v10[17] = a4;
      v10[18] = a5;
      v10[19] = a6;
      goto LABEL_82;
    case 5:
      v18 = *(this + 51);
      if (v18[20] == a3.n128_f32[0] && v18[21] == a4 && v18[22] == a5 && v18[23] == a6)
      {
        return 0;
      }

      v18[20] = a3.n128_f32[0];
      v18[21] = a4;
      v18[22] = a5;
      v18[23] = a6;
      goto LABEL_82;
    case 6:
      v20 = *(this + 51);
      if (v20[24] == a3.n128_f32[0] && v20[25] == a4 && v20[26] == a5 && v20[27] == a6)
      {
        return 0;
      }

      v20[24] = a3.n128_f32[0];
      v20[25] = a4;
      v20[26] = a5;
      v20[27] = a6;
      goto LABEL_82;
    case 7:
      v16 = *(this + 51);
      if (v16[7].n128_f32[0] == 0.0 && v16[7].n128_f32[1] == 0.0 && v16[7].n128_f32[2] == 0.0 && v16[7].n128_f32[3] == a3.n128_f32[0])
      {
        return 0;
      }

      v16[7].n128_u64[0] = 0;
      v16[7].n128_u32[3] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v16[7].n128_u32[2] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v16[52] = a3;
      goto LABEL_82;
    case 8:
      v22 = *(this + 51);
      if (v22[32] == a3.n128_f32[0] && v22[33] == a4 && v22[34] == a5 && v22[35] == a6)
      {
        return 0;
      }

      v22[32] = a3.n128_f32[0];
      v22[33] = a4;
      v22[34] = a5;
      v22[35] = a6;
      goto LABEL_82;
    case 9:
      v12 = *(this + 51);
      if (v12[36] == a3.n128_f32[0] && v12[37] == a4 && v12[38] == a5 && v12[39] == a6)
      {
        return 0;
      }

      v12[36] = a3.n128_f32[0];
      v12[37] = a4;
      v12[38] = a5;
      v12[39] = a6;
      goto LABEL_82;
    case 10:
      v21 = *(this + 51);
      if (v21[40] == a3.n128_f32[0] && v21[41] == a4 && v21[42] == a5 && v21[43] == a6)
      {
        return 0;
      }

      v21[40] = a3.n128_f32[0];
      v21[41] = a4;
      v21[42] = a5;
      v21[43] = a6;
      goto LABEL_82;
    case 11:
      v9 = *(this + 51);
      if (v9[44] == a3.n128_f32[0] && v9[45] == a4 && v9[46] == a5 && v9[47] == a6)
      {
        return 0;
      }

      v9[44] = a3.n128_f32[0];
      v9[45] = a4;
      v9[46] = a5;
      v9[47] = a6;
      goto LABEL_82;
    case 12:
      v11 = *(this + 51);
      if (v11[48] == a3.n128_f32[0] && v11[49] == a4 && v11[50] == a5 && v11[51] == a6)
      {
        return 0;
      }

      v11[48] = a3.n128_f32[0];
      v11[49] = a4;
      v11[50] = a5;
      v11[51] = a6;
      goto LABEL_82;
    case 13:
      v19 = *(this + 51);
      if (v19[52] == a3.n128_f32[0] && v19[53] == a4 && v19[54] == a5 && v19[55] == a6)
      {
        return 0;
      }

      v19[52] = a3.n128_f32[0];
      v19[53] = a4;
      v19[54] = a5;
      v19[55] = a6;
      goto LABEL_82;
    case 14:
      v8 = *(this + 51);
      if (v8[14].n128_f32[0] == 0.0 && v8[14].n128_f32[1] == a3.n128_f32[0] && v8[14].n128_f32[2] == 0.0 && v8[14].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v8[14].n128_u32[0] = 0;
      v8[14].n128_u32[1] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v8[14].n128_u64[1] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v8[53] = a3;
      goto LABEL_82;
    case 15:
      v14 = *(this + 51);
      if (v14[60] == a3.n128_f32[0] && v14[61] == a4 && v14[62] == a5 && v14[63] == a6)
      {
        return 0;
      }

      v14[60] = a3.n128_f32[0];
      v14[61] = a4;
      v14[62] = a5;
      v14[63] = a6;
LABEL_82:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t LiHeLightProgramSpotSurface::GetParameter(LiHeLightProgramSpotSurface *this, int a2, float *a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(this + 51);
      *a3 = *v3;
      a3[1] = v3[1];
      a3[2] = v3[2];
      v4 = v3 + 3;
      goto LABEL_18;
    case 1:
      v14 = *(this + 51);
      *a3 = v14[4];
      a3[1] = v14[5];
      a3[2] = v14[6];
      v4 = v14 + 7;
      goto LABEL_18;
    case 2:
      v10 = *(this + 51);
      *a3 = v10[8];
      a3[1] = v10[9];
      a3[2] = v10[10];
      v4 = v10 + 11;
      goto LABEL_18;
    case 3:
      v12 = *(this + 51);
      *a3 = v12[204];
      a3[1] = v12[205];
      a3[2] = v12[206];
      v4 = v12 + 207;
      goto LABEL_18;
    case 4:
      v7 = *(this + 51);
      *a3 = v7[16];
      a3[1] = v7[17];
      a3[2] = v7[18];
      v4 = v7 + 19;
      goto LABEL_18;
    case 5:
      v15 = *(this + 51);
      *a3 = v15[20];
      a3[1] = v15[21];
      a3[2] = v15[22];
      v4 = v15 + 23;
      goto LABEL_18;
    case 6:
      v17 = *(this + 51);
      *a3 = v17[24];
      a3[1] = v17[25];
      a3[2] = v17[26];
      v4 = v17 + 27;
      goto LABEL_18;
    case 7:
      v13 = *(this + 51);
      *a3 = v13[208];
      a3[1] = v13[209];
      a3[2] = v13[210];
      v4 = v13 + 211;
      goto LABEL_18;
    case 8:
      v19 = *(this + 51);
      *a3 = v19[32];
      a3[1] = v19[33];
      a3[2] = v19[34];
      v4 = v19 + 35;
      goto LABEL_18;
    case 9:
      v9 = *(this + 51);
      *a3 = v9[36];
      a3[1] = v9[37];
      a3[2] = v9[38];
      v4 = v9 + 39;
      goto LABEL_18;
    case 10:
      v18 = *(this + 51);
      *a3 = v18[40];
      a3[1] = v18[41];
      a3[2] = v18[42];
      v4 = v18 + 43;
      goto LABEL_18;
    case 11:
      v6 = *(this + 51);
      *a3 = v6[44];
      a3[1] = v6[45];
      a3[2] = v6[46];
      v4 = v6 + 47;
      goto LABEL_18;
    case 12:
      v8 = *(this + 51);
      *a3 = v8[48];
      a3[1] = v8[49];
      a3[2] = v8[50];
      v4 = v8 + 51;
      goto LABEL_18;
    case 13:
      v16 = *(this + 51);
      *a3 = v16[52];
      a3[1] = v16[53];
      a3[2] = v16[54];
      v4 = v16 + 55;
      goto LABEL_18;
    case 14:
      v5 = *(this + 51);
      *a3 = v5[212];
      a3[1] = v5[213];
      a3[2] = v5[214];
      v4 = v5 + 215;
      goto LABEL_18;
    case 15:
      v11 = *(this + 51);
      *a3 = v11[60];
      a3[1] = v11[61];
      a3[2] = v11[62];
      v4 = v11 + 63;
LABEL_18:
      result = 0;
      a3[3] = *v4;
      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

double LiHeLightProgramSpotSurface::State::State(LiHeLightProgramSpotSurface::State *this)
{
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 16) = xmmword_26084EB70;
  *(this + 17) = xmmword_2603444B0;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 18) = xmmword_260345A50;
  *(this + 19) = vnegq_f32(v2);
  *(this + 20) = xmmword_260344600;
  *(this + 21) = xmmword_260346F90;
  *(this + 22) = xmmword_26084EC70;
  *(this + 23) = xmmword_26084EC80;
  *(this + 24) = xmmword_26084EC90;
  *(this + 25) = xmmword_26084ECA0;
  *(this + 26) = xmmword_26084ECB0;
  *(this + 27) = xmmword_26084ECC0;
  *(this + 28) = xmmword_26084ECD0;
  *(this + 29) = xmmword_26084ECE0;
  *(this + 30) = xmmword_26084ECF0;
  *(this + 31) = xmmword_26084ED00;
  *(this + 32) = xmmword_26084ED10;
  *(this + 33) = xmmword_26084ED20;
  *(this + 34) = xmmword_26084ED30;
  *(this + 35) = xmmword_26084ED40;
  *(this + 36) = xmmword_26084ED50;
  *(this + 37) = xmmword_26084ED60;
  *(this + 38) = xmmword_26084ED70;
  *(this + 39) = xmmword_26084ED80;
  *(this + 40) = xmmword_26084ED90;
  *(this + 41) = xmmword_26084EDA0;
  *(this + 42) = xmmword_26084EDB0;
  *(this + 43) = xmmword_260344670;
  *(this + 44) = xmmword_260344660;
  *(this + 45) = xmmword_2608471D0;
  *(this + 46) = xmmword_2608471E0;
  *(this + 47) = xmmword_2608471F0;
  *(this + 48) = xmmword_260847200;
  *(this + 49) = xmmword_26084EDC0;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 50) = xmmword_26084EDD0;
  *(this + 51) = 0u;
  return result;
}

const char *LiHeLightProgramSpotSurfaceDiffuse::GetProgram(LiHeLightProgramSpotSurfaceDiffuse *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000088d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0 = frag._texCoord1.yyyy*hg_Params[6];\n    s0 = frag._texCoord1.xxxx*hg_Params[5] + s0;\n    s0 = frag._texCoord1.zzzz*hg_Params[7] + s0;\n    s1 = s0 + hg_Params[8];\n    s0.x = float(s0.w < -hg_Params[8].w);\n    s0.y = fmax(s1.w, float(c0.y));\n    s0.z = fmin(s1.w, -float(c0.y));\n    s0.x = select(s0.y, s0.z, -s0.x < 0.00000h);\n    s0.x = 1.00000f / s0.x;\n    s0.xyz = -s1.xyz*s0.xxx + hg_Params[0].xyz;\n    s0.w = dot(s0.xyz, s0.xyz);\n    s1.x = rsqrt(s0.w);\n    s0.w = 1.00000f / s1.x;\n    s0.w = s0.w - hg_Params[4].w;\n    s0.w = fmax(s0.w, float(c0.x));\n    s0.xyz = s1.xxx*s0.xyz;\n    s1.z = s0.w*hg_Params[3].y + hg_Params[3].x;\n    s1.y = s0.w*hg_Params[3].z;\n    s0.w = s1.y*s0.w + s1.z;\n    s0.w = fmax(s0.w, float(c0.y));\n    s1.x = 1.00000f / s0.w;\n    s0.w = dot(-s0.xyz, hg_Params[12].xyz);\n    s2.x = float(s0.w < hg_Params[9].x);\n    s2.y = hg_Params[9].x - hg_Params[10].x;\n    s2.w = s0.w - hg_Params[10].x;\n    s2.z = clamp(s2.w/s2.y, 0.00000f, 1.00000f);\n    s2.y = float(-s2.x >= float(c0.x));\n    s2.x = float(s0.w >= hg_Params[10].x);\n    s2.x = fmin(s2.x, s2.y);\n    s2.y = s2.z*float(c0.z) + float(c0.w);\n    s2.z = s2.z*s2.z;\n    s2.y = s2.z*s2.y;\n    s0.w = pow(s0.w, hg_Params[11].w);\n    s0.w = select(s2.y, s0.w, -s2.x < 0.00000h);\n    s0.w = s0.w*s1.x;\n    s1.x = dot(s0.xyz, hg_Params[2].xyz);\n    s2.xyz = s0.www*hg_Params[1].xyz;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s1.x = fmax(s1.x, float(c0.x));\n    s2.xyz = s2.xyz*s1.xxx + float3(r0.xyz);\n    output.color0.xyz = select(s2.xyz, float3(r0.xyz), s2.www < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=2fa4b393:d492b225:c388fdbe:c1b83462\n//SIG=00400000:00000001:00000001:00000001:0001:000d:0004:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000082b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = frag._texCoord1.yyyy*hg_Params[6];\n    r0 = frag._texCoord1.xxxx*hg_Params[5] + r0;\n    r0 = frag._texCoord1.zzzz*hg_Params[7] + r0;\n    r1 = r0 + hg_Params[8];\n    r0.x = float(r0.w < -hg_Params[8].w);\n    r0.y = fmax(r1.w, c0.y);\n    r0.z = fmin(r1.w, -c0.y);\n    r0.x = select(r0.y, r0.z, -r0.x < 0.00000f);\n    r0.x = 1.00000f / r0.x;\n    r0.xyz = -r1.xyz*r0.xxx + hg_Params[0].xyz;\n    r0.w = dot(r0.xyz, r0.xyz);\n    r1.x = rsqrt(r0.w);\n    r0.w = 1.00000f / r1.x;\n    r0.w = r0.w - hg_Params[4].w;\n    r0.w = fmax(r0.w, c0.x);\n    r0.xyz = r1.xxx*r0.xyz;\n    r1.z = r0.w*hg_Params[3].y + hg_Params[3].x;\n    r1.y = r0.w*hg_Params[3].z;\n    r0.w = r1.y*r0.w + r1.z;\n    r0.w = fmax(r0.w, c0.y);\n    r1.x = 1.00000f / r0.w;\n    r0.w = dot(-r0.xyz, hg_Params[12].xyz);\n    r2.x = float(r0.w < hg_Params[9].x);\n    r2.y = hg_Params[9].x - hg_Params[10].x;\n    r2.w = r0.w - hg_Params[10].x;\n    r2.z = clamp(r2.w/r2.y, 0.00000f, 1.00000f);\n    r2.y = float(-r2.x >= c0.x);\n    r2.x = float(r0.w >= hg_Params[10].x);\n    r2.x = fmin(r2.x, r2.y);\n    r2.y = r2.z*c0.z + c0.w;\n    r2.z = r2.z*r2.z;\n    r2.y = r2.z*r2.y;\n    r0.w = pow(r0.w, hg_Params[11].w);\n    r0.w = select(r2.y, r0.w, -r2.x < 0.00000f);\n    r0.w = r0.w*r1.x;\n    r1.x = dot(r0.xyz, hg_Params[2].xyz);\n    r2.xyz = r0.www*hg_Params[1].xyz;\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = fmax(r1.x, c0.x);\n    r2.xyz = r2.xyz*r1.xxx + r0.xyz;\n    output.color0.xyz = select(r2.xyz, r0.xyz, r2.www < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=01cfa6d7:ff8dcdd9:7e97e4e7:b2fef60e\n//SIG=00000000:00000001:00000001:00000000:0001:000d:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000a35\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nuniform highp vec4 hg_ProgramLocal10;\nuniform highp vec4 hg_ProgramLocal11;\nuniform highp vec4 hg_ProgramLocal12;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = hg_TexCoord1.yyyy*hg_ProgramLocal6;\n    r0 = hg_TexCoord1.xxxx*hg_ProgramLocal5 + r0;\n    r0 = hg_TexCoord1.zzzz*hg_ProgramLocal7 + r0;\n    r1 = r0 + hg_ProgramLocal8;\n    r0.x = float(r0.w < -hg_ProgramLocal8.w);\n    r0.y = max(r1.w, c0.y);\n    r0.z = min(r1.w, -c0.y);\n    r0.x = -r0.x < 0.00000 ? r0.z : r0.y;\n    r0.x = 1.00000 / r0.x;\n    r0.xyz = -r1.xyz*r0.xxx + hg_ProgramLocal0.xyz;\n    r0.w = dot(r0.xyz, r0.xyz);\n    r1.x = inversesqrt(r0.w);\n    r0.w = 1.00000 / r1.x;\n    r0.w = r0.w - hg_ProgramLocal4.w;\n    r0.w = max(r0.w, c0.x);\n    r0.xyz = r1.xxx*r0.xyz;\n    r1.z = r0.w*hg_ProgramLocal3.y + hg_ProgramLocal3.x;\n    r1.y = r0.w*hg_ProgramLocal3.z;\n    r0.w = r1.y*r0.w + r1.z;\n    r0.w = max(r0.w, c0.y);\n    r1.x = 1.00000 / r0.w;\n    r0.w = dot(-r0.xyz, hg_ProgramLocal12.xyz);\n    r2.x = float(r0.w < hg_ProgramLocal9.x);\n    r2.y = hg_ProgramLocal9.x - hg_ProgramLocal10.x;\n    r2.w = r0.w - hg_ProgramLocal10.x;\n    r2.z = clamp(r2.w/r2.y, 0.00000, 1.00000);\n    r2.y = float(-r2.x >= c0.x);\n    r2.x = float(r0.w >= hg_ProgramLocal10.x);\n    r2.x = min(r2.x, r2.y);\n    r2.y = r2.z*c0.z + c0.w;\n    r2.z = r2.z*r2.z;\n    r2.y = r2.z*r2.y;\n    r0.w = pow(r0.w, hg_ProgramLocal11.w);\n    r0.w = -r2.x < 0.00000 ? r0.w : r2.y;\n    r0.w = r0.w*r1.x;\n    r1.x = dot(r0.xyz, hg_ProgramLocal2.xyz);\n    r2.xyz = r0.www*hg_ProgramLocal1.xyz;\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = max(r1.x, c0.x);\n    r2.xyz = r2.xyz*r1.xxx + r0.xyz;\n    gl_FragColor.xyz = vec3(r2.w < 0.00000 ? r0.x : r2.x, r2.w < 0.00000 ? r0.y : r2.y, r2.w < 0.00000 ? r0.z : r2.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=baa72013:ee5c5bed:d4bcfe69:f7494a54\n//SIG=00000000:00000001:00000001:00000000:0001:000d:0003:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_26006250C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344850;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26006264C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260062694()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26006268CLL);
}

uint64_t LiHeLightProgramSpotSurfaceDiffuse::BindTexture(LiHeLightProgramSpotSurfaceDiffuse *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t LiHeLightProgramSpotSurfaceDiffuse::Bind(LiHeLightProgramSpotSurfaceDiffuse *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*a2 + 144))(a2, 12, *(this + 51) + 192, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeLightProgramSpotSurfaceDiffuse::RenderTile(LiHeLightProgramSpotSurfaceDiffuse *this, HGTile *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 3) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 2) - *a2;
    v6 = *(a2 + 2);
    v7 = *(a2 + 10);
    v8.f32[0] = *a2 + 0.5;
    v8.f32[1] = v2 + 0.5;
    v8.i32[2] = 0;
    v8.i32[3] = 1.0;
    v9 = 16 * *(a2 + 6);
    v10 = 16 * *(a2 + 22);
    do
    {
      if (v5 >= 1)
      {
        v11 = 0;
        v12 = v8;
        do
        {
          v13 = *(this + 51);
          v14 = *(v13 + 128);
          v15 = vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v13 + 96), *v12.f32, 1), vmulq_n_f32(*(v13 + 80), v12.f32[0])), vmulq_laneq_f32(*(v13 + 112), v12, 2));
          v16 = vaddq_f32(v14, v15);
          v17 = *(v13 + 208);
          v18 = vandq_s8(v17, vcgtq_f32(vnegq_f32(v14), v15));
          v19 = *(v13 + 224);
          v20 = *(v13 + 240);
          v21 = vbslq_s8(v19, vextq_s8(v18, v18, 0xCuLL), vmaxq_f32(vextq_s8(v16, v16, 8uLL), v17));
          v22 = vminq_f32(vrev64q_s32(v16), v17);
          v23.i64[0] = v21.i64[0];
          v23.i64[1] = v22.i64[1];
          v24 = vdupq_laneq_s64(v22, 1).u64[0];
          v25 = vextq_s8(v22, v21, 8uLL);
          v21.i64[1] = v24;
          v26 = vbslq_s8(vcgtq_f32(v23, v17), v25, vrev64q_s32(v21));
          v28 = *(v13 + 256);
          v27 = *(v13 + 272);
          v29 = vminq_f32(vmaxq_f32(vrecpeq_f32(v26), v20), v28);
          v30 = vminq_f32(vmaxq_f32(vmulq_f32(v29, vrecpsq_f32(v26, v29)), v20), v28);
          v31 = vsubq_f32(*v13, vmulq_n_f32(v16, vmulq_f32(v30, vrecpsq_f32(v26, v30)).f32[0]));
          v32 = vmulq_f32(v31, v31);
          v33 = vbslq_s8(v27, vaddq_f32(vrev64q_s32(v32), vaddq_f32(vextq_s8(v32, v32, 4uLL), vextq_s8(v32, v32, 8uLL))), v31);
          v34 = vextq_s8(v33, v33, 0xCuLL);
          v35 = vminq_f32(vrsqrteq_f32(v34), v28);
          v36 = vminq_f32(vmulq_f32(v35, vrsqrtsq_f32(vmulq_f32(v35, v34), v35)), v28);
          v37 = vmulq_f32(v36, vrsqrtsq_f32(vmulq_f32(v36, v34), v36));
          v38 = vextq_s8(v37, v37, 4uLL);
          v39 = vminq_f32(vmaxq_f32(vrecpeq_f32(v38), v20), v28);
          v40 = vminq_f32(vmaxq_f32(vmulq_f32(v39, vrecpsq_f32(v38, v39)), v20), v28);
          v41 = vmaxq_f32(vbslq_s8(v27, vsubq_f32(vbslq_s8(v27, vmulq_f32(v40, vrecpsq_f32(v38, v40)), v31), *(v13 + 64)), v31), *(v13 + 288));
          v42 = vmulq_n_f32(vbslq_s8(v27, v41, v31), *v37.i32);
          v43 = vbslq_s8(v27, v41, v42);
          v44 = *(v13 + 48);
          v45 = vaddq_f32(vdupq_lane_s64(v44.i64[0], 0), vmulq_laneq_f32(vextq_s8(v8, v44, 0xCuLL), v43, 3));
          v45.i64[0] = vmulq_laneq_f32(vextq_s8(v44, v8, 4uLL), v43, 3).u64[0];
          v46 = vbslq_s8(v27, vmaxq_f32(vbslq_s8(v27, vaddq_f32(vmulq_lane_f32(v43, *v45.i8, 1), vrev64q_s32(v45)), v42), *(v13 + 304)), v42);
          v47 = vextq_s8(v46, v46, 0xCuLL);
          v48 = vminq_f32(vmaxq_f32(vrecpeq_f32(v47), v20), v28);
          v49 = vmulq_f32(*(v13 + 192), vnegq_f32(v46));
          v50 = vbslq_s8(v27, vaddq_f32(vrev64q_s32(v49), vaddq_f32(vextq_s8(v49, v49, 4uLL), vextq_s8(v49, v49, 8uLL))), v42);
          v51 = vextq_s8(v50, v50, 0xCuLL);
          v53 = *(v13 + 320);
          v52 = *(v13 + 336);
          v54 = vmaxq_f32(vmulq_f32(v48, vrecpsq_f32(v47, v48)), v20);
          v56 = *(v13 + 160);
          v55 = *(v13 + 176);
          v57 = vminq_f32(v54, v28);
          v58 = vbslq_s8(v19, vandq_s8(v53, vcgtq_f32(*(v13 + 144), v51)), vrev64q_s32(vsubq_f32(*(v13 + 144), v56)));
          v59 = vsubq_f32(v50, vextq_s8(v56, v56, 4uLL));
          v60.i64[0] = vextq_s8(v59, v58, 0xCuLL).u64[0];
          v61.i64[0] = v58.i64[0];
          v61.i64[1] = v59.i64[1];
          *&v60.u32[2] = vext_s8(*v58.i8, *&vextq_s8(v59, v59, 8uLL), 4uLL);
          v58.i32[0] = vmulq_f32(v57, vrecpsq_f32(v47, v57)).u32[0];
          v62 = vminq_f32(vmaxq_f32(vrecpeq_f32(v60), v53), v28);
          v63 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpsq_f32(v60, v62)), v53), v28);
          v64 = vminq_f32(vmaxq_f32(vmulq_laneq_f32(vmulq_f32(v63, vrecpsq_f32(v60, v63)), v59, 3), v20), v52);
          v65 = *(v13 + 352);
          v66 = vbslq_s8(v65, v64, v61);
          v59.i64[0] = vrev64q_s32(vandq_s8(v53, vcgeq_f32(vnegq_f32(v66), v52))).u64[0];
          v59.i64[1] = v66.i64[1];
          v67 = vbslq_s8(vcgtq_f32(vandq_s8(v53, vceqq_f32(v55, v52)), v52), v53, v50);
          v68 = vbslq_s8(v19, vandq_s8(v53, vcgeq_f32(v51, v56)), v59);
          v69 = vorrq_s8(vandq_s8(v67, *(v13 + 384)), v53);
          v51.i64[0] = vextq_s8(v68, v68, 8uLL).u64[0];
          v70 = vandq_s8(v53, vcgtq_f32(v69, *(v13 + 448)));
          v57.i64[0] = vminq_f32(v68, vrev64q_s32(v68)).u64[0];
          v71 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v67, 0x17uLL)), vandq_s8(*(v13 + 416), vcgtq_f32(*(v13 + 400), v67))), *(v13 + 432)), v70);
          v72 = vsubq_f32(vsubq_f32(v69, v53), vmulq_f32(vmulq_f32(*(v13 + 464), v70), v69));
          *v70.f32 = vext_s8(*v51.f32, *v57.f32, 4uLL);
          *v51.f32 = vext_s8(*v57.f32, *v51.f32, 4uLL);
          v73 = vmulq_f32(v72, v72);
          v57.i64[1] = v68.i64[1];
          v51.i64[1] = v70.i64[0];
          v74 = vmaxq_f32(vmulq_f32(v55, vaddq_f32(v71, vmulq_f32(v72, vaddq_f32(*(v13 + 576), vmulq_f32(v72, vaddq_f32(vaddq_f32(*(v13 + 544), vmulq_f32(v72, *(v13 + 560))), vmulq_f32(v73, vaddq_f32(vaddq_f32(*(v13 + 480), vmulq_f32(*(v13 + 496), v72)), vmulq_f32(v73, vaddq_f32(*(v13 + 512), vmulq_f32(*(v13 + 528), v72))))))))))), *(v13 + 592));
          v75 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
          v76 = vbslq_s8(*(v13 + 368), vaddq_f32(v52, vmulq_f32(v53, v51)), v57);
          v77 = vsubq_f32(v75, vandq_s8(v53, vcgtq_f32(v75, v74)));
          v78 = vsubq_f32(v74, v77);
          v79 = vbslq_s8(v65, vmulq_f32(v76, v76), v76);
          v80 = *(v13 + 672);
          v81 = vbslq_s8(*(v13 + 368), vmulq_laneq_f32(v79, v79, 2), v79);
          v82 = vbslq_s8(v27, vmulq_n_f32(vbslq_s8(v27, vbslq_s8(vcgtq_f32(vextq_s8(v81, v81, 4uLL), v52), vbslq_s8(v27, vmulq_f32(vaddq_f32(v53, vmulq_f32(v78, vaddq_f32(v80, vmulq_f32(v78, vaddq_f32(vaddq_f32(*(v13 + 640), vmulq_f32(*(v13 + 656), v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(*(v13 + 608), vmulq_f32(*(v13 + 624), v78)))))))), vshlq_n_s32(vaddq_s32(*(v13 + 688), vcvtq_s32_f32(v77)), 0x17uLL)), v42), vextq_s8(v81, v81, 8uLL)), v42), *v58.i32), v42);
          v83 = vmulq_f32(*(v13 + 32), v82);
          v84 = *(v7 + v11);
          v85 = vbslq_s8(v27, v81, vaddq_f32(v84, vmulq_n_f32(vbslq_s8(v27, v81, vmulq_laneq_f32(*(v13 + 16), v82, 3)), vmaxq_f32(vaddq_f32(vextq_s8(v83, v83, 8uLL), vaddq_f32(v83, vrev64q_s32(v83))), v80).f32[0])));
          *(v6 + v11) = vbslq_s8(v27, v84, vbslq_s8(vcgtq_f32(v80, vdupq_laneq_s32(v85, 3)), v84, v85));
          v12 = vaddq_f32(v12, xmmword_2603429B0);
          v11 += 16;
        }

        while (16 * v5 != v11);
      }

      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeLightProgramSpotSurfaceDiffuse::GetDOD(LiHeLightProgramSpotSurfaceDiffuse *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeLightProgramSpotSurfaceDiffuse::GetROI(LiHeLightProgramSpotSurfaceDiffuse *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeLightProgramSpotSurfaceDiffuse::LiHeLightProgramSpotSurfaceDiffuse(LiHeLightProgramSpotSurfaceDiffuse *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872757A0;
  operator new();
}

void LiHeLightProgramSpotSurfaceDiffuse::~LiHeLightProgramSpotSurfaceDiffuse(HGNode *this)
{
  *this = &unk_2872757A0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40843277B5);
  }

  HGNode::~HGNode(this);
}

{
  LiHeLightProgramSpotSurfaceDiffuse::~LiHeLightProgramSpotSurfaceDiffuse(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeLightProgramSpotSurfaceDiffuse::SetParameter(LiHeLightProgramSpotSurfaceDiffuse *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  switch(a2)
  {
    case 0:
      v7 = *(this + 51);
      if (*v7 == a3.n128_f32[0] && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
      {
        return 0;
      }

      *v7 = a3.n128_f32[0];
      v7[1] = a4;
      v7[2] = a5;
      v7[3] = a6;
      goto LABEL_68;
    case 1:
      v15 = *(this + 51);
      if (v15[4] == a3.n128_f32[0] && v15[5] == a4 && v15[6] == a5 && v15[7] == a6)
      {
        return 0;
      }

      v15[4] = a3.n128_f32[0];
      v15[5] = a4;
      v15[6] = a5;
      v15[7] = a6;
      goto LABEL_68;
    case 2:
      v12 = *(this + 51);
      if (v12[8] == a3.n128_f32[0] && v12[9] == a4 && v12[10] == a5 && v12[11] == a6)
      {
        return 0;
      }

      v12[8] = a3.n128_f32[0];
      v12[9] = a4;
      v12[10] = a5;
      v12[11] = a6;
      goto LABEL_68;
    case 3:
      v13 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 704) = a3;
      return v13;
    case 4:
      v9 = *(this + 51);
      if (v9[12] == a3.n128_f32[0] && v9[13] == a4 && v9[14] == a5 && v9[15] == a6)
      {
        return 0;
      }

      v9[12] = a3.n128_f32[0];
      v9[13] = a4;
      v9[14] = a5;
      v9[15] = a6;
      goto LABEL_68;
    case 5:
      v16 = *(this + 51);
      if (v16[4].n128_f32[0] == 0.0 && v16[4].n128_f32[1] == 0.0 && v16[4].n128_f32[2] == 0.0 && v16[4].n128_f32[3] == a3.n128_f32[0])
      {
        return 0;
      }

      v16[4].n128_u64[0] = 0;
      v16[4].n128_u32[3] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v16[4].n128_u32[2] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v16[45] = a3;
      goto LABEL_68;
    case 6:
      v18 = *(this + 51);
      if (v18[20] == a3.n128_f32[0] && v18[21] == a4 && v18[22] == a5 && v18[23] == a6)
      {
        return 0;
      }

      v18[20] = a3.n128_f32[0];
      v18[21] = a4;
      v18[22] = a5;
      v18[23] = a6;
      goto LABEL_68;
    case 7:
      v14 = *(this + 51);
      if (v14[24] == a3.n128_f32[0] && v14[25] == a4 && v14[26] == a5 && v14[27] == a6)
      {
        return 0;
      }

      v14[24] = a3.n128_f32[0];
      v14[25] = a4;
      v14[26] = a5;
      v14[27] = a6;
      goto LABEL_68;
    case 8:
      v20 = *(this + 51);
      if (v20[28] == a3.n128_f32[0] && v20[29] == a4 && v20[30] == a5 && v20[31] == a6)
      {
        return 0;
      }

      v20[28] = a3.n128_f32[0];
      v20[29] = a4;
      v20[30] = a5;
      v20[31] = a6;
      goto LABEL_68;
    case 9:
      v11 = *(this + 51);
      if (v11[32] == a3.n128_f32[0] && v11[33] == a4 && v11[34] == a5 && v11[35] == a6)
      {
        return 0;
      }

      v11[32] = a3.n128_f32[0];
      v11[33] = a4;
      v11[34] = a5;
      v11[35] = a6;
      goto LABEL_68;
    case 10:
      v19 = *(this + 51);
      if (v19[36] == a3.n128_f32[0] && v19[37] == a4 && v19[38] == a5 && v19[39] == a6)
      {
        return 0;
      }

      v19[36] = a3.n128_f32[0];
      v19[37] = a4;
      v19[38] = a5;
      v19[39] = a6;
      goto LABEL_68;
    case 11:
      v8 = *(this + 51);
      if (v8[40] == a3.n128_f32[0] && v8[41] == a4 && v8[42] == a5 && v8[43] == a6)
      {
        return 0;
      }

      v8[40] = a3.n128_f32[0];
      v8[41] = a4;
      v8[42] = a5;
      v8[43] = a6;
      goto LABEL_68;
    case 12:
      v10 = *(this + 51);
      if (v10[11].n128_f32[0] == 0.0 && v10[11].n128_f32[1] == 0.0 && v10[11].n128_f32[2] == 0.0 && v10[11].n128_f32[3] == a3.n128_f32[0])
      {
        return 0;
      }

      v10[11].n128_u64[0] = 0;
      v10[11].n128_u32[3] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v10[11].n128_u32[2] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v10[46] = a3;
      goto LABEL_68;
    case 13:
      v17 = *(this + 51);
      if (v17[48] == a3.n128_f32[0] && v17[49] == a4 && v17[50] == a5 && v17[51] == a6)
      {
        return 0;
      }

      v17[48] = a3.n128_f32[0];
      v17[49] = a4;
      v17[50] = a5;
      v17[51] = a6;
LABEL_68:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t LiHeLightProgramSpotSurfaceDiffuse::GetParameter(LiHeLightProgramSpotSurfaceDiffuse *this, int a2, float *a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(this + 51);
      *a3 = *v3;
      a3[1] = v3[1];
      a3[2] = v3[2];
      v4 = v3 + 3;
      goto LABEL_16;
    case 1:
      v12 = *(this + 51);
      *a3 = v12[4];
      a3[1] = v12[5];
      a3[2] = v12[6];
      v4 = v12 + 7;
      goto LABEL_16;
    case 2:
      v9 = *(this + 51);
      *a3 = v9[8];
      a3[1] = v9[9];
      a3[2] = v9[10];
      v4 = v9 + 11;
      goto LABEL_16;
    case 3:
      v10 = *(this + 51);
      *a3 = v10[176];
      a3[1] = v10[177];
      a3[2] = v10[178];
      v4 = v10 + 179;
      goto LABEL_16;
    case 4:
      v6 = *(this + 51);
      *a3 = v6[12];
      a3[1] = v6[13];
      a3[2] = v6[14];
      v4 = v6 + 15;
      goto LABEL_16;
    case 5:
      v13 = *(this + 51);
      *a3 = v13[180];
      a3[1] = v13[181];
      a3[2] = v13[182];
      v4 = v13 + 183;
      goto LABEL_16;
    case 6:
      v15 = *(this + 51);
      *a3 = v15[20];
      a3[1] = v15[21];
      a3[2] = v15[22];
      v4 = v15 + 23;
      goto LABEL_16;
    case 7:
      v11 = *(this + 51);
      *a3 = v11[24];
      a3[1] = v11[25];
      a3[2] = v11[26];
      v4 = v11 + 27;
      goto LABEL_16;
    case 8:
      v17 = *(this + 51);
      *a3 = v17[28];
      a3[1] = v17[29];
      a3[2] = v17[30];
      v4 = v17 + 31;
      goto LABEL_16;
    case 9:
      v8 = *(this + 51);
      *a3 = v8[32];
      a3[1] = v8[33];
      a3[2] = v8[34];
      v4 = v8 + 35;
      goto LABEL_16;
    case 10:
      v16 = *(this + 51);
      *a3 = v16[36];
      a3[1] = v16[37];
      a3[2] = v16[38];
      v4 = v16 + 39;
      goto LABEL_16;
    case 11:
      v5 = *(this + 51);
      *a3 = v5[40];
      a3[1] = v5[41];
      a3[2] = v5[42];
      v4 = v5 + 43;
      goto LABEL_16;
    case 12:
      v7 = *(this + 51);
      *a3 = v7[184];
      a3[1] = v7[185];
      a3[2] = v7[186];
      v4 = v7 + 187;
      goto LABEL_16;
    case 13:
      v14 = *(this + 51);
      *a3 = v14[48];
      a3[1] = v14[49];
      a3[2] = v14[50];
      v4 = v14 + 51;
LABEL_16:
      result = 0;
      a3[3] = *v4;
      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

double LiHeLightProgramSpotSurfaceDiffuse::State::State(LiHeLightProgramSpotSurfaceDiffuse::State *this)
{
  result = 0.0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = xmmword_26084EB70;
  *(this + 14) = xmmword_2603444B0;
  *(this + 15) = xmmword_260346DF0;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 16) = vnegq_f32(v2);
  *(this + 17) = xmmword_260344600;
  *(this + 18) = xmmword_260346650;
  *(this + 19) = xmmword_26084EE00;
  *(this + 20) = xmmword_26084EE10;
  *(this + 21) = xmmword_26084EE20;
  *(this + 22) = xmmword_260344660;
  *(this + 23) = xmmword_260344670;
  *(this + 24) = xmmword_26084EE30;
  *(this + 25) = xmmword_2603444D0;
  *(this + 26) = xmmword_2603444E0;
  *(this + 27) = xmmword_2603444F0;
  *(this + 28) = xmmword_260344500;
  *(this + 29) = xmmword_260344510;
  *(this + 30) = xmmword_260344520;
  *(this + 31) = xmmword_260344530;
  *(this + 32) = xmmword_260344540;
  *(this + 33) = xmmword_260344550;
  *(this + 34) = xmmword_260344560;
  *(this + 35) = xmmword_260344570;
  *(this + 36) = xmmword_260344580;
  *(this + 37) = xmmword_260344590;
  *(this + 38) = xmmword_2603445A0;
  *(this + 39) = xmmword_2603445B0;
  *(this + 40) = xmmword_2603445C0;
  *(this + 41) = xmmword_2603445D0;
  *(this + 42) = xmmword_2603445E0;
  *(this + 43) = xmmword_2603445F0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 44) = 0u;
  return result;
}

const char *LiHeLightProgramSurfaceFinalPass::GetProgram(LiHeLightProgramSurfaceFinalPass *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.002000000095, 0.3333333433);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r1.x = dot(r0.xyz, 1.00000h);\n    r0.w = r1.x*c0.w;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r2.x = r1.w*r0.w;\n    r2.y = r0.w - c0.x;\n    r2.w = half(c0.x < r0.w);\n    r0.w = half(c0.y < r1.w);\n    r2.y = r2.y*c0.z;\n    r2.z = mix(r1.z, r2.x, r2.y);\n    r0.w = fmin(r0.w, r2.w);\n    r1.z = select(r1.z, r2.z, -r0.w < 0.00000h);\n    r2.xz = mix(r1.yx, r2.xx, r2.yy);\n    r1.xy = select(r1.xy, r2.zx, -r0.ww < 0.00000h);\n    output.color0.xyz = float3(r1.xyz)*float3(r0.xyz);\n    output.color0.w = float(r1.w);\n    return output;\n}\n//MD5=db490365:15785875:ea9c1f38:9383f519\n//SIG=00400000:00000003:00000003:00000003:0001:0000:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004d0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.002000000095, 0.3333333433);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r1.x = dot(r0.xyz, 1.00000f);\n    r0.w = r1.x*c0.w;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r2.x = r1.w*r0.w;\n    r2.y = r0.w - c0.x;\n    r2.w = float(c0.x < r0.w);\n    r0.w = float(c0.y < r1.w);\n    r2.y = r2.y*c0.z;\n    r2.z = mix(r1.z, r2.x, r2.y);\n    r0.w = fmin(r0.w, r2.w);\n    r1.z = select(r1.z, r2.z, -r0.w < 0.00000f);\n    r2.xz = mix(r1.yx, r2.xx, r2.yy);\n    r1.xy = select(r1.xy, r2.zx, -r0.ww < 0.00000f);\n    output.color0.xyz = r1.xyz*r0.xyz;\n    output.color0.w = r1.w;\n    return output;\n}\n//MD5=e2d728d3:a7abefb8:62cf9a5b:5aa76cd7\n//SIG=00000000:00000003:00000003:00000000:0001:0000:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000046a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.002000000095, 0.3333333433);\n    defaultp vec4 r0, r1, r2;\n\n    r0.xyz = texture2D(hg_Texture1, hg_TexCoord1.xy).xyz;\n    r1.x = dot(r0.xyz, vec3(1.00000));\n    r0.w = r1.x*c0.w;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r2.x = r1.w*r0.w;\n    r2.y = r0.w - c0.x;\n    r2.w = float(c0.x < r0.w);\n    r0.w = float(c0.y < r1.w);\n    r2.y = r2.y*c0.z;\n    r2.z = mix(r1.z, r2.x, r2.y);\n    r0.w = min(r0.w, r2.w);\n    r1.z = -r0.w < 0.00000 ? r2.z : r1.z;\n    r2.xz = mix(r1.yx, r2.xx, r2.yy);\n    r1.xy = vec2(-r0.w < 0.00000 ? r2.z : r1.x, -r0.w < 0.00000 ? r2.x : r1.y);\n    gl_FragColor.xyz = r1.xyz*r0.xyz;\n    gl_FragColor.w = r1.w;\n}\n//MD5=19b7bad1:1d4392e7:4a1d8c1b:ba44b2ed\n//SIG=00000000:00000003:00000003:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_26006399C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344AF0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260063ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260063B24()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260063B1CLL);
}

uint64_t LiHeLightProgramSurfaceFinalPass::BindTexture(LiHeLightProgramSurfaceFinalPass *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeLightProgramSurfaceFinalPass::RenderTile(LiHeLightProgramSurfaceFinalPass *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 26);
    v8 = *(a2 + 12);
    v9 = 16 * *(a2 + 6);
    v10 = 16 * *(a2 + 22);
    do
    {
      if (v4 < 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 2; i -= 3)
        {
          v14 = *(v8 + v12 - 32);
          v15 = *(v8 + v12 - 16);
          v16 = *(v8 + v12);
          v17 = vaddq_f32(v14, vrev64q_s32(v14));
          v18 = vaddq_f32(v15, vrev64q_s32(v15));
          v19 = vaddq_f32(v16, vrev64q_s32(v16));
          v20 = vaddq_f32(vextq_s8(v14, v14, 0xCuLL), vextq_s8(v17, v17, 4uLL));
          v21 = *(this + 51);
          v22 = *(v21 + 16);
          v23 = vbslq_s8(v22, vmulq_f32(v20, *v21), v14);
          v24 = vbslq_s8(v22, vmulq_f32(*v21, vaddq_f32(vextq_s8(v15, v15, 0xCuLL), vextq_s8(v18, v18, 4uLL))), v15);
          v25 = vbslq_s8(v22, vmulq_f32(*v21, vaddq_f32(vextq_s8(v16, v16, 0xCuLL), vextq_s8(v19, v19, 4uLL))), v16);
          v26 = *(v6 + v12 - 32);
          v27 = *(v6 + v12 - 16);
          v28 = *(v6 + v12);
          v30 = *(v21 + 32);
          v29 = *(v21 + 48);
          v31.i64[0] = vbslq_s8(v30, vmulq_laneq_f32(vextq_s8(v23, v23, 0xCuLL), v26, 3), vsubq_f32(vdupq_laneq_s64(v23, 1), *v21)).u64[0];
          v32.i64[0] = vbslq_s8(v30, vmulq_laneq_f32(vextq_s8(v24, v24, 0xCuLL), v27, 3), vsubq_f32(vdupq_laneq_s64(v24, 1), *v21)).u64[0];
          v33.i64[0] = vbslq_s8(v30, vmulq_laneq_f32(vextq_s8(v25, v25, 0xCuLL), v28, 3), vsubq_f32(vdupq_laneq_s64(v25, 1), *v21)).u64[0];
          v31.i64[1] = vandq_s8(*&v29, vcgtq_f32(v23, v29)).i64[1];
          v32.i64[1] = vandq_s8(*&v29, vcgtq_f32(v24, v29)).i64[1];
          v33.i64[1] = vandq_s8(*&v29, vcgtq_f32(v25, v29)).i64[1];
          v34 = *(v21 + 64);
          v35 = *(v21 + 80);
          v36 = vbslq_s8(v35, vmulq_f32(v29, v31), v31);
          v37 = vbslq_s8(v35, vmulq_f32(v29, v32), v32);
          v38 = vbslq_s8(v35, vmulq_f32(v29, v33), v33);
          v39 = *(v21 + 96);
          v40 = *(v21 + 112);
          v41 = vbslq_s8(v39, vaddq_f32(v26, vmulq_lane_f32(vsubq_f32(vextq_s8(v36, v36, 8uLL), v26), *v36.i8, 1)), v36);
          v42 = vbslq_s8(v39, vaddq_f32(v27, vmulq_lane_f32(vsubq_f32(vextq_s8(v37, v37, 8uLL), v27), *v37.i8, 1)), v37);
          v43 = vbslq_s8(v39, vaddq_f32(v28, vmulq_lane_f32(vsubq_f32(vextq_s8(v38, v38, 8uLL), v28), *v38.i8, 1)), v38);
          v44 = vbslq_s8(v22, vminq_f32(vbslq_s8(v22, vandq_s8(v29, vcgtq_f32(v26, v34)), v14), v41), v14);
          v45 = vbslq_s8(v22, vminq_f32(vbslq_s8(v22, vandq_s8(v29, vcgtq_f32(v27, v34)), v15), v42), v15);
          v46 = vbslq_s8(v22, vminq_f32(vbslq_s8(v22, vandq_s8(v29, vcgtq_f32(v28, v34)), v16), v43), v16);
          v47 = vbslq_s8(v39, vbslq_s8(vcgtq_f32(vrev64q_s32(v44), v34), v41, v26), v26);
          v48 = vbslq_s8(v39, vbslq_s8(vcgtq_f32(vrev64q_s32(v45), v34), v42, v27), v27);
          *v25.f32 = vqtbl1_s8(v47, *v40.f32);
          v37.i64[0] = vextq_s8(v40, v40, 8uLL).u64[0];
          *&v25.u32[2] = vqtbl1_s8(v47, *v37.i8);
          v49 = vbslq_s8(v39, vbslq_s8(vcgtq_f32(vrev64q_s32(v46), v34), v43, v28), v28);
          *v50.f32 = vqtbl1_s8(v48, *v40.f32);
          *v40.f32 = vqtbl1_s8(v49, *v40.f32);
          *&v50.u32[2] = vqtbl1_s8(v48, *v37.i8);
          *&v40.u32[2] = vqtbl1_s8(v49, *v37.i8);
          v51 = vaddq_f32(vmulq_lane_f32(vsubq_f32(vdupq_lane_s64(v41.i64[0], 0), v25), *v41.f32, 1), v25);
          v52 = vaddq_f32(vmulq_lane_f32(vsubq_f32(vdupq_lane_s64(v42.i64[0], 0), v50), *v42.f32, 1), v50);
          v53 = vaddq_f32(vmulq_lane_f32(vsubq_f32(vdupq_lane_s64(v43.i64[0], 0), v40), *v43.f32, 1), v40);
          v54 = *(v21 + 128);
          *v51.f32 = vqtbl1_s8(v51, *&v54);
          *v52.f32 = vqtbl1_s8(v52, *&v54);
          *v53.i8 = vqtbl1_s8(v53, *&v54);
          v51.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v44, 3), v34), v51, v47).u64[0];
          v52.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v45, 3), v34), v52, v48).u64[0];
          v34.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v46, 3), v34), v53, v49).u64[0];
          v51.i64[1] = v47.i64[1];
          v52.i64[1] = v48.i64[1];
          v34.i64[1] = v49.i64[1];
          v55 = (v5 + v12);
          v55[-2] = vbslq_s8(v22, v51, vmulq_f32(v51, v44));
          v55[-1] = vbslq_s8(v22, v52, vmulq_f32(v52, v45));
          *v55 = vbslq_s8(v22, v34, vmulq_f32(v34, v46));
          v11 += 3;
          v12 += 48;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v56 = *(v8 + 16 * v11);
          v57 = vaddq_f32(v56, vrev64q_s32(v56));
          v58 = vaddq_f32(vextq_s8(v56, v56, 0xCuLL), vextq_s8(v57, v57, 4uLL));
          v59 = *(this + 51);
          v60 = *(v59 + 16);
          v61 = vbslq_s8(v60, vmulq_f32(*v59, v58), v56);
          v62 = *(v6 + 16 * v11);
          v63 = *(v59 + 48);
          v64.i64[0] = vbslq_s8(*(v59 + 32), vmulq_laneq_f32(vextq_s8(v61, v61, 0xCuLL), v62, 3), vsubq_f32(vdupq_laneq_s64(v61, 1), *v59)).u64[0];
          v64.i64[1] = vandq_s8(*&v63, vcgtq_f32(v61, v63)).i64[1];
          v65 = *(v59 + 64);
          v66 = vbslq_s8(v60, vandq_s8(v63, vcgtq_f32(v62, v65)), v56);
          v67 = vbslq_s8(*(v59 + 80), vmulq_f32(v63, v64), v64);
          v68 = *(v59 + 96);
          v69 = *(v59 + 112);
          v70 = vbslq_s8(v68, vaddq_f32(v62, vmulq_lane_f32(vsubq_f32(vextq_s8(v67, v67, 8uLL), v62), *v67.i8, 1)), v67);
          v71 = vbslq_s8(v60, vminq_f32(v66, v70), v56);
          v72 = vbslq_s8(v68, vbslq_s8(vcgtq_f32(vrev64q_s32(v71), v65), v70, v62), v62);
          *v73.f32 = vqtbl1_s8(v72, *v69.i8);
          *&v73.u32[2] = vqtbl1_s8(v72, *&vextq_s8(v69, v69, 8uLL));
          v74 = vaddq_f32(vmulq_lane_f32(vsubq_f32(vdupq_lane_s64(v70.i64[0], 0), v73), *v70.f32, 1), v73);
          *v74.i8 = vqtbl1_s8(v74, *(v59 + 128));
          v65.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v71, 3), v65), v74, v72).u64[0];
          v65.i64[1] = v72.i64[1];
          *(v5 + 16 * v11++) = vbslq_s8(v60, v65, vmulq_f32(v65, v71));
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v5 += v9;
      v6 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeLightProgramSurfaceFinalPass::GetDOD(LiHeLightProgramSurfaceFinalPass *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}