void sub_25FFED32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_2<ProShade::max_traits>::compute(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v8);
  ProShade::Value::Value(v7);
  ProShade::Value::Value(&v6);
  (*(*a1 + 224))(a1, v8);
  (*(*a2 + 224))(a2, v7);
  if (SLODWORD(v8[0]) > 1)
  {
    if (LODWORD(v8[0]) != 2)
    {
      goto LABEL_8;
    }

    v4 = v7[0];
  }

  else
  {
    v4 = v7[0];
    if (SLODWORD(v7[0]) < 2)
    {
      ProShade::eval_type<ProShade::max_traits,BOOL>(v8, v7, &v6);
      goto LABEL_9;
    }
  }

  if (v4 <= 2)
  {
    ProShade::eval_type<ProShade::max_traits,int>(v8, v7, &v6);
    goto LABEL_9;
  }

LABEL_8:
  ProShade::eval_type<ProShade::max_traits,double>(v8, v7, &v6);
LABEL_9:
  ProShade::Const::create(&v6, v5);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287268A00);
  *a1 = &unk_287268928;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2872689E0;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v13, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  ProShade::VarT<ProShade::Node>::VarT(v13, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFED734(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::max_traits,BOOL>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v11, "not implemented yet");
    PCString::PCString(&v10, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v11, &v10, 441);
    *exception = &unk_2871F6178;
  }

  OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v6);
  if (result > 0)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("max doesn't apply to BOOL", v8);
  }

  return result;
}

void sub_25FFED8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::max_traits,int>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 2, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "not implemented yet");
    PCString::PCString(&v16, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v17, &v16, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v14 = *v9++;
      v13 = v14;
      if (v11 <= v14)
      {
        v11 = v13;
      }

      *Serializer = v11;
      Serializer = (Serializer + 4);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FFEDA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::max_traits,double>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "not implemented yet");
    PCString::PCString(&v16, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v17, &v16, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v11 = *v10++;
      v12 = v11;
      v13 = *v9++;
      v14 = v13;
      if (v12 < v13)
      {
        v12 = v14;
      }

      *Serializer++ = v12;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FFEDB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "max");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFEDD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 24941;
  v6[2] = 120;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFEDE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "max");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFEE0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFEE2BC(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v3 = *(a2 + 12);
  if (v3 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v4 = *(a2 + 16);
  if (v3 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (*v4 > 1)
  {
    if (*v4 != 2)
    {
      goto LABEL_16;
    }

    v5 = v4[36];
  }

  else
  {
    v5 = v4[36];
    if (v5 < 2)
    {
      v6 = *(a2 + 16);

      return ProShade::eval_type<ProShade::max_traits,BOOL>(v6, (v4 + 36), a3);
    }
  }

  if (v5 <= 2)
  {
    v8 = *(a2 + 16);

    return ProShade::eval_type<ProShade::max_traits,int>(v8, (v4 + 36), a3);
  }

LABEL_16:
  v9 = *(a2 + 16);

  return ProShade::eval_type<ProShade::max_traits,double>(v9, (v4 + 36), a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287268A00);
  *a1 = &unk_287268928;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2872689E0;
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

void sub_25FFEE62C(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::eval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    if (v6)
    {
      if (v8)
      {
        if (v10)
        {
          ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>::compute(v6, v8, v10);
        }
      }
    }
  }

  operator new();
}

void sub_25FFEE8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>::compute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v12);
  ProShade::Value::Value(v11);
  ProShade::Value::Value(v10);
  ProShade::Value::Value(&v9);
  (*(*a1 + 224))(a1, v12);
  (*(*a2 + 224))(a2, v11);
  (*(*a3 + 224))(a3, v10);
  if (SLODWORD(v12[0]) > 1)
  {
    if (LODWORD(v12[0]) != 2)
    {
      goto LABEL_11;
    }

    v6 = v11[0];
  }

  else
  {
    v6 = v11[0];
    if (SLODWORD(v11[0]) < 2)
    {
      v7 = v10[0];
      if (SLODWORD(v10[0]) < 2)
      {
        ProShade::eval_type<ProShade::mix_traits,BOOL>(v12, v11, v10, &v9);
        goto LABEL_12;
      }

LABEL_9:
      if (v7 <= 2)
      {
        ProShade::eval_type<ProShade::mix_traits,int>(v12, v11, v10, &v9);
        goto LABEL_12;
      }

LABEL_11:
      ProShade::eval_type<ProShade::mix_traits,double>(v12, v11, v10, &v9);
LABEL_12:
      ProShade::Const::create(&v9, v8);
    }
  }

  if (v6 > 2)
  {
    goto LABEL_11;
  }

  v7 = v10[0];
  goto LABEL_9;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3, PCShared_base *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287268C78);
  *a1 = &unk_287268BA0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287268C58;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v17, a2);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  ProShade::VarT<ProShade::Node>::VarT(v17, a3);
  v10 = *(a1 + 60);
  if (*(a1 + 56) <= v10)
  {
    v11 = 2 * (v10 + 1) + 1;
  }

  else
  {
    v11 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v10 + 1, v11);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  ProShade::VarT<ProShade::Node>::VarT(v17, a4);
  v12 = *(a1 + 60);
  if (*(a1 + 56) <= v12)
  {
    v13 = 2 * (v12 + 1) + 1;
  }

  else
  {
    v13 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v12 + 1, v13);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  v15 = *(a1 + 60);
  if (v15 < 1)
  {
    PCArray_base::badIndex(v14);
  }

  if (v15 < 2)
  {
    PCArray_base::badIndex(v14);
  }

  if (v15 <= 2)
  {
    PCArray_base::badIndex(v14);
  }

  ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32), (*(a1 + 64) + 64));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFEED8C(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::mix_traits,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v12, "not implemented yet");
    PCString::PCString(&v11, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v12, &v11, 463);
    *exception = &unk_2871F6178;
  }

  OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result > 0)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("mix doesn't apply to BOOL", v9);
  }

  return result;
}

void sub_25FFEEF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::mix_traits,int>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v21, "not implemented yet");
    PCString::PCString(&v20, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v21, &v20, 463);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v9);
  if (result >= 1)
  {
    v11 = (a3 + 16);
    v12 = (a2 + 16);
    v13 = (a1 + 16);
    do
    {
      v15 = *v13++;
      v14 = v15;
      v17 = *v12++;
      v16 = v17;
      v18 = *v11++;
      *Serializer++ = v16 * v18 + (1.0 - v18) * v14;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FFEF090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::mix_traits,double>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v21, "not implemented yet");
    PCString::PCString(&v20, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v21, &v20, 463);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v9);
  if (result >= 1)
  {
    v11 = (a3 + 16);
    v12 = (a2 + 16);
    v13 = (a1 + 16);
    do
    {
      v14 = *v13++;
      v15 = v14;
      v16 = *v12++;
      v17 = v16;
      v18 = *v11++;
      *Serializer++ = v17 * v18 + v15 * (1.0 - v18);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FFEF208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>::initType(uint64_t a1, const PCString *a2, const PCSharedCount *a3, const PCSharedCount *a4)
{
  v33[1] = *MEMORY[0x277D85DE8];
  var0 = a2[2].var0;
  if (!var0)
  {
    throw_PCNullPointerException(1);
  }

  length_high = HIDWORD(var0->length);
  v10 = a3[2].var0;
  if (!v10)
  {
    throw_PCNullPointerException(1);
  }

  if (length_high > v10[7])
  {
    v10 = a2[2].var0;
    if (!v10)
    {
      throw_PCNullPointerException(1);
    }
  }

  v11 = v10[7];
  v12 = a4[2].var0;
  if (!v12)
  {
    throw_PCNullPointerException(1);
  }

  if (v11 > v12[7])
  {
    v13 = a2[2].var0;
    if (!v13)
    {
      throw_PCNullPointerException(1);
    }

    v14 = HIDWORD(v13->length);
    v12 = a3[2].var0;
    if (!v12)
    {
      throw_PCNullPointerException(1);
    }

    if (v14 > v12[7])
    {
      v12 = a2[2].var0;
      if (!v12)
      {
        throw_PCNullPointerException(1);
      }
    }
  }

  v15 = v12[7];
  *(a1 + 28) = v15;
  Width = ProShade::shapeGetWidth(v15, a2);
  v18 = *(a1 + 28);
  if (v18 >= 2)
  {
    v19 = Width;
    v20 = a2[2].var0;
    if (!v20)
    {
      throw_PCNullPointerException(1);
    }

    v21 = HIDWORD(v20->length);
    if (v21 < v18)
    {
      if (v21 != 1)
      {
        ProShade::Error<PCException>::raise<char [27]>("width mismatch (first argument)", v17);
      }

      ProShade::Ctor::makeWidth(v20->length, Width, a2, v32);
      ProShade::VarT<ProShade::Node>::operator=(a2, v32);
      v32[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v33);
    }

    v22 = a3[2].var0;
    if (!v22)
    {
      throw_PCNullPointerException(1);
    }

    v23 = *(v22 + 7);
    if (v23 < *(a1 + 28))
    {
      if (v23 != 1)
      {
        ProShade::Error<PCException>::raise<char [27]>("width mismatch (second argument)", v17);
      }

      ProShade::Ctor::makeWidth(*(v22 + 6), v19, a3, v32);
      ProShade::VarT<ProShade::Node>::operator=(a3, v32);
      v32[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v33);
    }

    v24 = a4[2].var0;
    if (!v24)
    {
      throw_PCNullPointerException(1);
    }

    v25 = *(v24 + 7);
    if (v25 < *(a1 + 28))
    {
      if (v25 != 1)
      {
        ProShade::Error<PCException>::raise<char [27]>("width mismatch (third argument)", v17);
      }

      ProShade::Ctor::makeWidth(*(v24 + 6), v19, a4, v32);
      ProShade::VarT<ProShade::Node>::operator=(a4, v32);
      v32[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v33);
    }
  }

  v26 = a2[2].var0;
  if (!v26)
  {
    throw_PCNullPointerException(1);
  }

  length = v26->length;
  v28 = a3[2].var0;
  if (!v28)
  {
    throw_PCNullPointerException(1);
  }

  v29 = *(v28 + 6);
  v30 = a4[2].var0;
  if (!v30)
  {
    throw_PCNullPointerException(1);
  }

  v31 = *(v30 + 6);
  if (v29 > v31)
  {
    v31 = v29;
  }

  if (length > v31)
  {
    v31 = length;
  }

  *(a1 + 24) = v31;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "mix");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFEF734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 26989;
  v6[2] = 120;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFEF858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "mix");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFEFB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFEFCE8(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = *(a2 + 16);
  if (v4 < 2)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 2)
  {
    PCArray_base::badIndex(a1);
  }

  v6 = v5 + 72;
  if (*v5 >= 2)
  {
    if (*v5 != 2)
    {
      goto LABEL_21;
    }

    v7 = v5[36];
    goto LABEL_15;
  }

  v7 = v5[36];
  if (v7 >= 2)
  {
LABEL_15:
    if (v7 > 2)
    {
      goto LABEL_21;
    }

    v8 = *v6;
    goto LABEL_17;
  }

  v8 = *v6;
  if (*v6 < 2)
  {
    v9 = *(a2 + 16);

    return ProShade::eval_type<ProShade::mix_traits,BOOL>(v9, (v5 + 36), v6, a3);
  }

LABEL_17:
  if (v8 <= 2)
  {
    v11 = *(a2 + 16);

    return ProShade::eval_type<ProShade::mix_traits,int>(v11, (v5 + 36), v6, a3);
  }

LABEL_21:
  v12 = *(a2 + 16);

  return ProShade::eval_type<ProShade::mix_traits,double>(v12, (v5 + 36), v6, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287268C78);
  *a1 = &unk_287268BA0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287268C58;
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

void sub_25FFF0088(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

PCSharedCount *ProShade::Vec3::Vec3(PCSharedCount *a1, const PCSharedCount *a2)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = a2[2].var0;
  PCSharedCount::PCSharedCount(a1 + 3, a2 + 3);
  a1->var0 = &unk_287268E10;
  ProShade::Vec3::checkType(a1);
  return a1;
}

void sub_25FFF0148(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_dot>::eval(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v4)
    {
      if (v6)
      {
        ProShade::Func_dot::compute(v4, v6, v7);
      }
    }
  }

  PCSharedCount::PCSharedCount(v8);
  operator new();
}

void sub_25FFF0344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::Func_dot::compute(ProShade::Func_dot *this, ProShade::Const *a2, ProShade::Const *a3)
{
  if (!ProShade::shapeIsMatrix(*(this + 7)) && !ProShade::shapeIsMatrix(*(a2 + 7)))
  {
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = &unk_2872642E8;
    v10 = &unk_2872642E8;
    v11 = 0;
    (*(*this + 216))(this, &v13);
    v6 = (*(*a2 + 216))(a2, &v10);
    if (HIDWORD(v14) == HIDWORD(v11))
    {
      if (SHIDWORD(v14) < 1)
      {
        v9 = 0.0;
      }

      else
      {
        v8 = 0;
        v9 = 0.0;
        do
        {
          if (v8 >= SHIDWORD(v11))
          {
            PCArray_base::badIndex(v6);
          }

          if (v8 >= SHIDWORD(v14))
          {
            PCArray_base::badIndex(v6);
          }

          v9 = v9 + *(v12 + 8 * v8) * *(v15 + 8 * v8);
          ++v8;
        }

        while (HIDWORD(v14) != v8);
      }

      ProShade::Const::create(v6, v9);
    }

    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("dot arguments must be the same length", v7);
  }

  ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("dot doesn't apply to matrices", v5);
}

void sub_25FFF06A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  PCArray<double,PCArray_Traits<double>>::~PCArray(&a9);
  PCArray<double,PCArray_Traits<double>>::~PCArray(&a12);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_dot>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287268F30);
  *a1 = &unk_287268E58;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287268F10;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v19, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v19);
  v19[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v20);
  ProShade::VarT<ProShade::Node>::VarT(v19, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v19);
  v19[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v20);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  v12 = *(a1 + 64);
  v13 = v12;
  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  *(a1 + 28) = 1;
  v14 = *(v12 + 16);
  if (!v14)
  {
    throw_PCNullPointerException(1);
  }

  v15 = *(v14 + 24);
  v16 = *(v13 + 48);
  if (!v16)
  {
    throw_PCNullPointerException(1);
  }

  v17 = *(v16 + 24);
  if (v15 > v17)
  {
    v17 = v15;
  }

  *(a1 + 24) = v17;
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF094C(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_dot>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_dot>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_dot>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "dot");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFF0B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_dot>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 28516;
  v6[2] = 116;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF0C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_dot>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "dot");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_dot>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFF0F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFF10D0(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void virtual thunk toProShade::Func<ProShade::Func_dot>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::Func_dot>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287268F30);
  *a1 = &unk_287268E58;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287268F10;
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

void sub_25FFF1354(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void *ProShade::Func_dot::computeValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  if (v3 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v4 = *(a1 + 16);
  if (v3 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (*v4 != 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v15, "not implemented yet");
    PCString::PCString(&v14, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v15, &v14, 1087);
    *exception = &unk_2871F6178;
  }

  if (*(v4 + 144) != 3)
  {
    v13 = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v15, "not implemented yet");
    PCString::PCString(&v14, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(v13, &v15, &v14, 1090);
    *v13 = &unk_2871F6178;
  }

  if (!ProShade::shapeIsVector(*(v4 + 4)))
  {
    goto LABEL_17;
  }

  v6 = *(v4 + 4);
  if (v6 != *(v4 + 148))
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("dot vectors are not the same shape", v5);
  }

  if (v6 == 4)
  {
    v9 = vmulq_f64(*(v4 + 16), *(v4 + 160));
    v10 = vmulq_f64(*(v4 + 32), *(v4 + 176));
    v15.var0 = *&vaddq_f64(vaddq_f64(vaddq_f64(v9, vdupq_laneq_s64(v9, 1)), v10), vdupq_laneq_s64(v10, 1));
    return ProShade::Value::set(a2, 3, 1, &v15);
  }

  if (v6 == 3)
  {
    v8 = vmulq_f64(*(v4 + 24), *(v4 + 168));
    v7 = *(v4 + 16) * *(v4 + 160) + v8.f64[0] + v8.f64[1];
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_17:
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("dot applies only to vectors", v5);
  }

  v7 = vaddvq_f64(vmulq_f64(*(v4 + 16), *(v4 + 160)));
LABEL_14:
  v15.var0 = *&v7;
  return ProShade::Value::set(a2, 3, 1, &v15);
}

void sub_25FFF15E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_normalize>::eval(const PCSharedCount *a1@<X0>, uint64_t a2@<X8>)
{
  v14[15] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  if (var0)
  {
    if (v5)
    {
      v6 = v5;
      ProShade::Value::Value(&v11);
      ProShade::Value::Value(&v10);
      (*(*v6 + 224))(v6, &v11);
      ProShade::Func_normalize::eval(&v11, &v10, v7);
      ProShade::Const::create(&v10, v8);
    }
  }

  v11 = &unk_28725E328;
  v13 = 0;
  PCSharedCount::PCSharedCount(v14);
  v9 = a1[2].var0;
  {
    operator new();
  }

  ProShade::VarT<ProShade::Node>::operator=(&v11, a1);
  *a2 = &unk_28725E328;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  PCSharedCount::PCSharedCount((a2 + 24), v14);
  v11 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
}

void sub_25FFF1894(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10B1C40241F72B2);
  PCSharedCount::~PCSharedCount(v2 + 3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_normalize>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_2872691C0);
  *a1 = &unk_2872690E8;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2872691A0;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF1A34(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

OZChannelBase *ProShade::Func_normalize::eval(ProShade::Func_normalize *this, OZChannelBase *a2, ProShade::Value *a3)
{
  if (ProShade::shapeIsMatrix(*(this + 1)))
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("normalize doesn't apply to matrices", v5);
  }

  ProShade::Value::set(a2, *this, *(this + 1));
  OZChannelBase::getSerializer(a2);
  result = ProShade::shapeGetSize(*(this + 1), v6);
  v9 = *this;
  if (*this <= 2)
  {
    switch(v9)
    {
      case 0:
        ProShade::Error<PCIllegalArgumentException>::raise(result, v8);
      case 1:
        exception = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v22, "not implemented yet");
        PCString::PCString(&v21, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
        PCException::PCException(exception, &v22, &v21, 1352);
        *exception = &unk_2871F6178;
      case 2:
        v20 = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v22, "not implemented yet");
        PCString::PCString(&v21, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
        PCException::PCException(v20, &v22, &v21, 1353);
        *v20 = &unk_2871F6178;
    }
  }

  else if (v9 == 3 && result >= 1)
  {
    v10 = (this + 16);
    p_var2 = &a2->var2;
    v12 = result;
    v13 = 0.0;
    v14 = result;
    v15 = (this + 16);
    do
    {
      v16 = *v15++;
      v13 = v13 + v16 * v16;
      --v14;
    }

    while (v14);
    v17 = sqrt(v13);
    do
    {
      v18 = *v10++;
      *p_var2++ = v18 / v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

void sub_25FFF1C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_normalize>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_normalize>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_normalize>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "normalize");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFF1E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_normalize>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 22, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 9;
  v5[2] = v4 + 10;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  v6[8] = 101;
  *v6 = *"normalize";
  *(v5 + v4 + 21) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF1F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_normalize>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "normalize");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_normalize>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFF21FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFF23C4(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

OZChannelBase *ProShade::Func<ProShade::Func_normalize>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  return ProShade::Func_normalize::eval(v3, a3, a3);
}

void virtual thunk toProShade::Func<ProShade::Func_normalize>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::Func_normalize>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_2872691C0);
  *a1 = &unk_2872690E8;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2872691A0;
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

void sub_25FFF2688(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::eval(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v4)
    {
      if (v6)
      {
        ProShade::ScalarFunctionTraits_2<ProShade::min_traits>::compute(v4, v6);
      }
    }
  }

  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_25FFF28A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_2<ProShade::min_traits>::compute(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v8);
  ProShade::Value::Value(v7);
  ProShade::Value::Value(&v6);
  (*(*a1 + 224))(a1, v8);
  (*(*a2 + 224))(a2, v7);
  if (SLODWORD(v8[0]) > 1)
  {
    if (LODWORD(v8[0]) != 2)
    {
      goto LABEL_8;
    }

    v4 = v7[0];
  }

  else
  {
    v4 = v7[0];
    if (SLODWORD(v7[0]) < 2)
    {
      ProShade::eval_type<ProShade::min_traits,BOOL>(v8, v7, &v6);
      goto LABEL_9;
    }
  }

  if (v4 <= 2)
  {
    ProShade::eval_type<ProShade::min_traits,int>(v8, v7, &v6);
    goto LABEL_9;
  }

LABEL_8:
  ProShade::eval_type<ProShade::min_traits,double>(v8, v7, &v6);
LABEL_9:
  ProShade::Const::create(&v6, v5);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269420);
  *a1 = &unk_287269348;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287269400;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v13, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  ProShade::VarT<ProShade::Node>::VarT(v13, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF2CB0(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::min_traits,BOOL>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v11, "not implemented yet");
    PCString::PCString(&v10, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v11, &v10, 441);
    *exception = &unk_2871F6178;
  }

  OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v6);
  if (result > 0)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("min doesn't apply to BOOL", v8);
  }

  return result;
}

void sub_25FFF2E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::min_traits,int>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 2, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "not implemented yet");
    PCString::PCString(&v16, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v17, &v16, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v14 = *v9++;
      v13 = v14;
      if (v11 >= v14)
      {
        v11 = v13;
      }

      *Serializer = v11;
      Serializer = (Serializer + 4);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FFF2F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::min_traits,double>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "not implemented yet");
    PCString::PCString(&v16, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v17, &v16, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v11 = *v10++;
      v12 = v11;
      v13 = *v9++;
      v14 = v13;
      if (v12 > v13)
      {
        v12 = v14;
      }

      *Serializer++ = v12;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FFF30E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "min");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFF3284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 26989;
  v6[2] = 110;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF33A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "min");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFF3670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFF3838(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v3 = *(a2 + 12);
  if (v3 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v4 = *(a2 + 16);
  if (v3 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (*v4 > 1)
  {
    if (*v4 != 2)
    {
      goto LABEL_16;
    }

    v5 = v4[36];
  }

  else
  {
    v5 = v4[36];
    if (v5 < 2)
    {
      v6 = *(a2 + 16);

      return ProShade::eval_type<ProShade::min_traits,BOOL>(v6, (v4 + 36), a3);
    }
  }

  if (v5 <= 2)
  {
    v8 = *(a2 + 16);

    return ProShade::eval_type<ProShade::min_traits,int>(v8, (v4 + 36), a3);
  }

LABEL_16:
  v9 = *(a2 + 16);

  return ProShade::eval_type<ProShade::min_traits,double>(v9, (v4 + 36), a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::min_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269420);
  *a1 = &unk_287269348;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287269400;
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

void sub_25FFF3BA8(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::eval(uint64_t a1)
{
  v7[15] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      ProShade::Value::Value(v6);
      ProShade::Value::Value(&v5);
      (*(*v3 + 224))(v3, v6);
      ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>::eval(v6, &v5);
      ProShade::Const::create(&v5, v4);
    }
  }

  v6[0] = &unk_28725E328;
  v6[2] = 0;
  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_25FFF3DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269698);
  *a1 = &unk_2872695C0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287269678;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF3F58(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>::eval(int *a1, OZChannelBase *a2)
{
  v4 = *a1;
  if (*a1 > 1)
  {
    ProShade::Value::set(a2, 3, a1[1]);
    Serializer = OZChannelBase::getSerializer(a2);
    result = ProShade::shapeGetSize(a1[1], v9);
    if (v4 == 2)
    {
      if (result >= 1)
      {
        v10 = a1 + 4;
        do
        {
          v11 = *v10++;
          *Serializer++ = sqrt(v11);
          result = (result - 1);
        }

        while (result);
      }
    }

    else if (result >= 1)
    {
      v12 = (a1 + 4);
      do
      {
        v13 = *v12++;
        *Serializer++ = sqrt(v13);
        result = (result - 1);
      }

      while (result);
    }
  }

  else
  {
    ProShade::Value::set(a2, 1, a1[1]);
    OZChannelBase::getSerializer(a2);
    result = ProShade::shapeGetSize(a1[1], v5);
    if (result >= 1)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("sqrt doesn't apply to BOOL", v7);
    }
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "sqrt");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFF41CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 17, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 4;
  v5[2] = v4 + 5;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 1953657203;
  *(v6 + v4 + 4) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF42E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "sqrt");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFF45B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFF4778(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  return ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>::eval(v3, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sqrt_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269698);
  *a1 = &unk_2872695C0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287269678;
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

void sub_25FFF4A3C(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_reflect>::eval(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v4)
    {
      if (v6)
      {
        ProShade::Func_reflect::compute(v4, v6, v7);
      }
    }
  }

  PCSharedCount::PCSharedCount(v8);
  operator new();
}

void sub_25FFF4C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::Func_reflect::compute(ProShade::Func_reflect *this, ProShade::Const *a2, ProShade::Const *a3)
{
  if (!ProShade::shapeIsMatrix(*(this + 7)) && !ProShade::shapeIsMatrix(*(a2 + 7)))
  {
    v6 = *(this + 7);
    if (v6 == *(a2 + 7))
    {
      if (v6 != 4)
      {
        if (v6 != 3)
        {
          if (v6 == 2)
          {
            (*(*this + 160))(&v14, this);
            (*(*a2 + 160))(&v12, a2);
            v7 = vaddvq_f64(vmulq_f64(v12, v14));
            v16 = vsubq_f64(v14, vmulq_n_f64(v12, v7 + v7));
            ProShade::Const::create();
          }

          ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("reflect arguments must be vectors", v5);
        }

        (*(*this + 168))(&v14, this);
        (*(*a2 + 168))(&v12, a2);
        v8 = vaddvq_f64(vmulq_f64(v12, v14));
        v9 = v8 + v13.f64[0] * v15.f64[0] + v8 + v13.f64[0] * v15.f64[0];
        v16 = vsubq_f64(v14, vmulq_n_f64(v12, v9));
        v17.f64[0] = v15.f64[0] - v13.f64[0] * v9;
        ProShade::Const::create();
      }

      (*(*this + 176))(&v14, this);
      (*(*a2 + 176))(&v12, a2);
      v10 = vmulq_f64(v12, v14);
      v11 = vmulq_f64(v13, v15);
      v10.f64[0] = vaddq_f64(vaddq_f64(vaddq_f64(v10, vdupq_laneq_s64(v10, 1)), v11), vdupq_laneq_s64(v11, 1)).f64[0];
      v10.f64[0] = v10.f64[0] + v10.f64[0];
      v16 = vsubq_f64(v14, vmulq_n_f64(v12, v10.f64[0]));
      v17 = vsubq_f64(v15, vmulq_n_f64(v13, v10.f64[0]));
      ProShade::Const::create();
    }

    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("reflect arguments must be the same length", v5);
  }

  ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("reflect doesn't apply to matrices", v5);
}

uint64_t ProShade::Func<ProShade::Func_reflect>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269910);
  *a1 = &unk_287269838;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2872698F0;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v14, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v14);
  v14[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v15);
  ProShade::VarT<ProShade::Node>::VarT(v14, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v14);
  v14[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v15);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  v12 = *(*(a1 + 64) + 16);
  if (!v12)
  {
    throw_PCNullPointerException(1);
  }

  *(a1 + 24) = *(v12 + 24);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF5184(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_reflect>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_reflect>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_reflect>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "reflect");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFF5354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_reflect>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 20, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 7;
  v5[2] = v4 + 8;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = (v5 + v4 + 12);
  *v6 = 1818649970;
  *(v6 + 3) = 1952671084;
  *(v5 + v4 + 19) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF5480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_reflect>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "reflect");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_reflect>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFF5748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFF5910(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void virtual thunk toProShade::Func<ProShade::Func_reflect>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::Func_reflect>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269910);
  *a1 = &unk_287269838;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_2872698F0;
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

void sub_25FFF5B94(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func_reflect::computeValue()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "not implemented yet");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
  PCException::PCException(exception, &v2, &v1, 1470);
  *exception = &unk_2871F6178;
}

void sub_25FFF5C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::eval(const PCSharedCount *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  if (var0)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    if (v7)
    {
      if (v9)
      {
        ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>::compute(v7, v9);
      }
    }
  }

  v10 = &unk_28725E328;
  v12 = 0;
  PCSharedCount::PCSharedCount(v13);
  if (!ProShade::pow_traits::simplify(a1, a2, &v10))
  {
    operator new();
  }

  *a3 = &unk_28725E328;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  PCSharedCount::PCSharedCount((a3 + 24), v13);
  v10 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v13);
}

void sub_25FFF5EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>::compute(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v8);
  ProShade::Value::Value(v7);
  ProShade::Value::Value(&v6);
  (*(*a1 + 224))(a1, v8);
  (*(*a2 + 224))(a2, v7);
  if (SLODWORD(v8[0]) > 1)
  {
    if (LODWORD(v8[0]) != 2)
    {
      goto LABEL_8;
    }

    v4 = v7[0];
  }

  else
  {
    v4 = v7[0];
    if (SLODWORD(v7[0]) < 2)
    {
      ProShade::eval_type<ProShade::pow_traits,BOOL>(v8, v7, &v6);
      goto LABEL_9;
    }
  }

  if (v4 <= 2)
  {
    ProShade::eval_type<ProShade::pow_traits,int>(v8, v7, &v6);
    goto LABEL_9;
  }

LABEL_8:
  ProShade::eval_type<ProShade::pow_traits,double>(v8, v7, &v6);
LABEL_9:
  ProShade::Const::create(&v6, v5);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269B88);
  *a1 = &unk_287269AB0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287269B68;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v13, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  ProShade::VarT<ProShade::Node>::VarT(v13, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF62EC(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::pow_traits,BOOL>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v11, "not implemented yet");
    PCString::PCString(&v10, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v11, &v10, 441);
    *exception = &unk_2871F6178;
  }

  OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v6);
  if (result > 0)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("pow doesn't apply to BOOL", v8);
  }

  return result;
}

void sub_25FFF6464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::eval_type<ProShade::pow_traits,int>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "not implemented yet");
    PCString::PCString(&v16, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v17, &v16, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  Size = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (Size >= 1)
  {
    v9 = Size;
    v10 = (a2 + 16);
    v11 = (a1 + 16);
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = *v10++;
      *Serializer++ = pow(v12, v14);
      --v9;
    }

    while (v9);
  }
}

void sub_25FFF65CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::eval_type<ProShade::pow_traits,double>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "not implemented yet");
    PCString::PCString(&v16, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v17, &v16, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  Size = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (Size >= 1)
  {
    v9 = Size;
    v10 = (a2 + 16);
    v11 = (a1 + 16);
    do
    {
      v12 = *v11++;
      v13 = v12;
      v14 = *v10++;
      *Serializer++ = pow(v13, v14);
      --v9;
    }

    while (v9);
  }
}

void sub_25FFF672C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

BOOL ProShade::pow_traits::simplify(const PCSharedCount *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  isZero = ProShade::isZero(a2);
  if (isZero)
  {
    ProShade::Const::create(isZero, 1.0);
  }

  result = ProShade::isOne(a2);
  if (result)
  {
    ProShade::VarT<ProShade::Node>::operator=(a3, a1);
    return 1;
  }

  return result;
}

void sub_25FFF68BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCSharedCount a13, void *a14)
{
  a14 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14 + 3);
  PCSharedCount::~PCSharedCount(&a13);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "pow");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFF6A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 28528;
  v6[2] = 119;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF6BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "pow");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFF6E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFF7034(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v3 = *(a2 + 12);
  if (v3 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v4 = *(a2 + 16);
  if (v3 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (*v4 > 1)
  {
    if (*v4 != 2)
    {
      goto LABEL_16;
    }

    v5 = v4[36];
  }

  else
  {
    v5 = v4[36];
    if (v5 < 2)
    {
      v6 = *(a2 + 16);

      ProShade::eval_type<ProShade::pow_traits,BOOL>(v6, (v4 + 36), a3);
      return;
    }
  }

  if (v5 <= 2)
  {
    v7 = *(a2 + 16);

    ProShade::eval_type<ProShade::pow_traits,int>(v7, (v4 + 36), a3);
    return;
  }

LABEL_16:
  v8 = *(a2 + 16);

  ProShade::eval_type<ProShade::pow_traits,double>(v8, (v4 + 36), a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::pow_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269B88);
  *a1 = &unk_287269AB0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287269B68;
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

void sub_25FFF73A4(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::eval(uint64_t a1)
{
  v7[15] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      ProShade::Value::Value(v6);
      ProShade::Value::Value(&v5);
      (*(*v3 + 224))(v3, v6);
      ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>::eval(v6, &v5);
      ProShade::Const::create(&v5, v4);
    }
  }

  v6[0] = &unk_28725E328;
  v6[2] = 0;
  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_25FFF75B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269E00);
  *a1 = &unk_287269D28;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287269DE0;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF7754(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>::eval(int *a1, OZChannelBase *a2)
{
  if (*a1 > 1)
  {
    v7 = a1[1];
    if (*a1 == 2)
    {
      ProShade::Value::set(a2, 2, v7);
      Serializer = OZChannelBase::getSerializer(a2);
      result = ProShade::shapeGetSize(a1[1], v9);
      if (result >= 1)
      {
        v10 = a1 + 4;
        do
        {
          v12 = *v10++;
          v11 = v12;
          if (v12 < 0)
          {
            v11 = -v11;
          }

          *Serializer = v11;
          Serializer = (Serializer + 4);
          result = (result - 1);
        }

        while (result);
      }
    }

    else
    {
      ProShade::Value::set(a2, 3, v7);
      v13 = OZChannelBase::getSerializer(a2);
      result = ProShade::shapeGetSize(a1[1], v14);
      if (result >= 1)
      {
        v15 = (a1 + 4);
        do
        {
          v16 = *v15++;
          *v13++ = fabs(v16);
          result = (result - 1);
        }

        while (result);
      }
    }
  }

  else
  {
    ProShade::Value::set(a2, 1, a1[1]);
    OZChannelBase::getSerializer(a2);
    result = ProShade::shapeGetSize(a1[1], v4);
    if (result >= 1)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("abs doesn't apply to BOOL", v6);
    }
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "abs");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFF79DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 25185;
  v6[2] = 115;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF7B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "abs");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFF7DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFF7F90(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  return ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>::eval(v3, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::abs_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_287269E00);
  *a1 = &unk_287269D28;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_287269DE0;
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

void sub_25FFF8254(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_cond>::eval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[18] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    if (v6)
    {
      if (v8)
      {
        v12 = v10;
        if (v10)
        {
          if (v8[7] == v10[7])
          {
            ProShade::Value::Value(v17);
            ProShade::Value::Value(v16);
            (*(*v6 + 224))(v6, v17);
            if (ProShade::Value::asBool(v17, v13))
            {
              v14 = v8;
            }

            else
            {
              v14 = v12;
            }

            (*(*v14 + 224))(v14, v16);
            ProShade::Const::create(v16, v15);
          }

          ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("cond arguments must be the same size", v11);
        }
      }
    }
  }

  operator new();
}

void sub_25FFF857C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_cond>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3, PCShared_base *a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726A078);
  *a1 = &unk_287269FA0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726A058;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v22, a2);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v22);
  v22[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v23);
  ProShade::VarT<ProShade::Node>::VarT(v22, a3);
  v10 = *(a1 + 60);
  if (*(a1 + 56) <= v10)
  {
    v11 = 2 * (v10 + 1) + 1;
  }

  else
  {
    v11 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v10 + 1, v11);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v22);
  v22[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v23);
  ProShade::VarT<ProShade::Node>::VarT(v22, a4);
  v12 = *(a1 + 60);
  if (*(a1 + 56) <= v12)
  {
    v13 = 2 * (v12 + 1) + 1;
  }

  else
  {
    v13 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v12 + 1, v13);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v22);
  v22[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v23);
  v15 = *(a1 + 60);
  if (v15 < 1)
  {
    PCArray_base::badIndex(v14);
  }

  if (v15 < 2)
  {
    PCArray_base::badIndex(v14);
  }

  v16 = *(a1 + 64);
  if (v15 <= 2)
  {
    PCArray_base::badIndex(v14);
  }

  v17 = *(*(a1 + 64) + 48);
  if (!v17)
  {
    throw_PCNullPointerException(1);
  }

  *(a1 + 28) = *(v17 + 28);
  v18 = *(v17 + 24);
  v19 = *(v16 + 80);
  if (!v19)
  {
    throw_PCNullPointerException(1);
  }

  v20 = *(v19 + 24);
  if (v18 > v20)
  {
    v20 = v18;
  }

  *(a1 + 24) = v20;
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF88CC(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_cond>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_cond>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_cond>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 17, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 4;
  v5[2] = v4 + 5;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 1684959075;
  *(v6 + v4 + 4) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF8B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_cond>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "cond");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_cond>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFF8DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFF8FB8(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_cond>::computeValue(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = ProShade::Value::asBool(*(a2 + 16), a2);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (*(a2 + 12) <= v6)
  {
    PCArray_base::badIndex(v5);
  }

  v7 = (*(a2 + 16) + 144 * v6);

  return ProShade::Value::operator=(a3, v7);
}

void virtual thunk toProShade::Func<ProShade::Func_cond>::~Func(void *a1)
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

void ProShade::Func_cond::repr(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  ProShade::VarT<ProShade::Node>::repr(*(a1 + 16));
  if (v29)
  {
    v4 = *(v29 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4 + 15, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 2;
  v5[2] = v4 + 3;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  *(v5 + 6) = 10280;
  memcpy(v5 + 14, v29, v4);
  *(v5 + v4 + 14) = 0;
  atomic_fetch_add(v5, 1u);
  v6 = v5[1];
  v26 = v5;
  v7 = malloc_type_malloc(v6 + 18, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v7);
  atomic_store(0, v7);
  v7[1] = v6 + 5;
  v7[2] = v6 + 6;
  v8 = memcpy(v7 + 3, v5 + 3, v6);
  v9 = v7 + v6 + 12;
  *v9 = 541007913;
  v9[4] = 40;
  *(v7 + v6 + 17) = 0;
  atomic_fetch_add(v7, 1u);
  v25 = v7;
  if (*(a1 + 12) <= 1)
  {
    PCArray_base::badIndex(v8);
  }

  ProShade::VarT<ProShade::Node>::repr(*(a1 + 16) + 32);
  v10 = v7[1];
  if (v28)
  {
    v11 = *(v28 - 2);
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 + v11;
  v13 = malloc_type_malloc(v12 + 13, 0x10000403E1C8BA9uLL);
  v13[1] = v12;
  v13[2] = v12 + 1;
  atomic_store(1u, v13);
  atomic_store(0, v13);
  memcpy(v13 + 3, v7 + 3, v10);
  memcpy(v13 + v10 + 12, v28, v11);
  *(v13 + v12 + 12) = 0;
  atomic_fetch_add(v13, 1u);
  v14 = v13[1];
  v15 = malloc_type_malloc(v14 + 18, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v15);
  atomic_store(0, v15);
  v15[1] = v14 + 5;
  v15[2] = v14 + 6;
  v16 = memcpy(v15 + 3, v13 + 3, v14);
  v17 = v15 + v14 + 12;
  *v17 = 540680233;
  v17[4] = 40;
  *(v15 + v14 + 17) = 0;
  atomic_fetch_add(v15, 1u);
  if (*(a1 + 12) <= 2)
  {
    PCArray_base::badIndex(v16);
  }

  ProShade::VarT<ProShade::Node>::repr(*(a1 + 16) + 64);
  v18 = v15[1];
  if (v27)
  {
    v19 = *(v27 - 2);
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 + v19;
  v21 = malloc_type_malloc(v20 + 13, 0x10000403E1C8BA9uLL);
  v21[1] = v20;
  v21[2] = v20 + 1;
  atomic_store(1u, v21);
  atomic_store(0, v21);
  memcpy(v21 + 3, v15 + 3, v18);
  memcpy(v21 + v18 + 12, v27, v19);
  *(v21 + v20 + 12) = 0;
  atomic_fetch_add(v21, 1u);
  v22 = v21[1];
  v23 = malloc_type_malloc(v22 + 15, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v23);
  v24 = v23 + 3;
  atomic_store(0, v23);
  v23[1] = v22 + 2;
  v23[2] = v22 + 3;
  memcpy(v23 + 3, v21 + 3, v22);
  *(v24 + v22) = 10537;
  *(v24 + v22 + 2) = 0;
  *a2 = v23 + 3;
  atomic_fetch_add(v23, 1u);
  if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    free(v21);
  }

  if (v27 && atomic_fetch_add(v27 - 3, 0xFFFFFFFF) == 1)
  {
    *v27 = 0;
    free(v27 - 12);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    free(v13);
  }

  if (v28 && atomic_fetch_add(v28 - 3, 0xFFFFFFFF) == 1)
  {
    *v28 = 0;
    free(v28 - 12);
  }

  if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
  {
    free(v25);
  }

  if (atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    free(v26);
  }

  if (v29)
  {
    if (atomic_fetch_add(v29 - 3, 0xFFFFFFFF) == 1)
    {
      *v29 = 0;
      free(v29 - 12);
    }
  }
}

void sub_25FFF95C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, atomic_uint *a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a12 && atomic_fetch_add(a12 - 3, 0xFFFFFFFF) == 1)
  {
    *a12 = 0;
    free(a12 - 3);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
  {
    free(a10);
  }

  if (atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    free(a11);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::Func<ProShade::Func_cond>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726A078);
  *a1 = &unk_287269FA0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726A058;
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

void sub_25FFF9878(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::eval(uint64_t a1)
{
  v7[15] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      ProShade::Value::Value(v6);
      ProShade::Value::Value(&v5);
      (*(*v3 + 224))(v3, v6);
      ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>::eval(v6, &v5);
      ProShade::Const::create(&v5, v4);
    }
  }

  v6[0] = &unk_28725E328;
  v6[2] = 0;
  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_25FFF9A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726A2F0);
  *a1 = &unk_28726A218;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726A2D0;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFF9C28(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>::eval(int *a1, OZChannelBase *a2)
{
  v4 = *a1;
  if (*a1 > 1)
  {
    ProShade::Value::set(a2, 3, a1[1]);
    Serializer = OZChannelBase::getSerializer(a2);
    Size = ProShade::shapeGetSize(a1[1], v8);
    v10 = Size;
    if (v4 == 2)
    {
      if (Size >= 1)
      {
        v11 = a1 + 4;
        do
        {
          v12 = *v11++;
          *Serializer++ = exp(v12);
          --v10;
        }

        while (v10);
      }
    }

    else if (Size >= 1)
    {
      v13 = (a1 + 4);
      do
      {
        v14 = *v13++;
        *Serializer++ = exp(v14);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    ProShade::Value::set(a2, 1, a1[1]);
    OZChannelBase::getSerializer(a2);
    if (ProShade::shapeGetSize(a1[1], v5) >= 1)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("exp doesn't apply to BOOL", v6);
    }
  }
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "exp");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFF9EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 30821;
  v6[2] = 112;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFF9FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "exp");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFFA28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFFA454(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>::eval(v3, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::exp_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726A2F0);
  *a1 = &unk_28726A218;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726A2D0;
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

void sub_25FFFA718(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::eval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    if (v6)
    {
      if (v8)
      {
        if (v10)
        {
          ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>::compute(v6, v8, v10);
        }
      }
    }
  }

  operator new();
}

void sub_25FFFA9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>::compute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v12);
  ProShade::Value::Value(v11);
  ProShade::Value::Value(v10);
  ProShade::Value::Value(&v9);
  (*(*a1 + 224))(a1, v12);
  (*(*a2 + 224))(a2, v11);
  (*(*a3 + 224))(a3, v10);
  if (SLODWORD(v12[0]) > 1)
  {
    if (LODWORD(v12[0]) != 2)
    {
      goto LABEL_11;
    }

    v6 = v11[0];
  }

  else
  {
    v6 = v11[0];
    if (SLODWORD(v11[0]) < 2)
    {
      v7 = v10[0];
      if (SLODWORD(v10[0]) < 2)
      {
        ProShade::eval_type<ProShade::smoothstep_traits,BOOL>(v12, v11, v10, &v9);
        goto LABEL_12;
      }

LABEL_9:
      if (v7 <= 2)
      {
        ProShade::eval_type<ProShade::smoothstep_traits,int>(v12, v11, v10, &v9);
        goto LABEL_12;
      }

LABEL_11:
      ProShade::eval_type<ProShade::smoothstep_traits,double>(v12, v11, v10, &v9);
LABEL_12:
      ProShade::Const::create(&v9, v8);
    }
  }

  if (v6 > 2)
  {
    goto LABEL_11;
  }

  v7 = v10[0];
  goto LABEL_9;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3, PCShared_base *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726A568);
  *a1 = &unk_28726A490;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726A548;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v17, a2);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  ProShade::VarT<ProShade::Node>::VarT(v17, a3);
  v10 = *(a1 + 60);
  if (*(a1 + 56) <= v10)
  {
    v11 = 2 * (v10 + 1) + 1;
  }

  else
  {
    v11 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v10 + 1, v11);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  ProShade::VarT<ProShade::Node>::VarT(v17, a4);
  v12 = *(a1 + 60);
  if (*(a1 + 56) <= v12)
  {
    v13 = 2 * (v12 + 1) + 1;
  }

  else
  {
    v13 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v12 + 1, v13);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  v15 = *(a1 + 60);
  if (v15 < 1)
  {
    PCArray_base::badIndex(v14);
  }

  if (v15 < 2)
  {
    PCArray_base::badIndex(v14);
  }

  if (v15 <= 2)
  {
    PCArray_base::badIndex(v14);
  }

  ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32), (*(a1 + 64) + 64));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFFAE78(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::smoothstep_traits,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v12, "not implemented yet");
    PCString::PCString(&v11, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v12, &v11, 463);
    *exception = &unk_2871F6178;
  }

  OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result > 0)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("smoothstep doesn't apply to BOOL", v9);
  }

  return result;
}

void sub_25FFFAFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::smoothstep_traits,int>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v22, "not implemented yet");
    PCString::PCString(&v21, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v22, &v21, 463);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v9);
  if (result >= 1)
  {
    v11 = (a3 + 16);
    v12 = (a2 + 16);
    v13 = (a1 + 16);
    do
    {
      v15 = *v13++;
      v14 = v15;
      v17 = *v12++;
      v16 = v17;
      v18 = *v11++;
      v19 = (v18 - v14) / (v16 - v14);
      if (v19 > 1.0)
      {
        v19 = 1.0;
      }

      if (v19 < 0.0)
      {
        v19 = 0.0;
      }

      *Serializer++ = v19 * v19 * (3.0 - (v19 + v19));
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FFFB1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::smoothstep_traits,double>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v22, "not implemented yet");
    PCString::PCString(&v21, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v22, &v21, 463);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v9);
  if (result >= 1)
  {
    v11 = (a3 + 16);
    v12 = (a2 + 16);
    v13 = (a1 + 16);
    do
    {
      v14 = *v13++;
      v15 = v14;
      v16 = *v12++;
      v17 = v16;
      v18 = *v11++;
      v19 = (v18 - v15) / (v17 - v15);
      if (v19 > 1.0)
      {
        v19 = 1.0;
      }

      if (v19 < 0.0)
      {
        v19 = 0.0;
      }

      *Serializer++ = v19 * v19 * (3.0 - (v19 + v19));
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_25FFFB33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "smoothstep");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFFB4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 23, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 10;
  v5[2] = v4 + 11;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *(v6 + 4) = 28773;
  *v6 = *"smoothstep";
  *(v5 + v4 + 22) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFFB604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "smoothstep");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFFB8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFFBA94(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = *(a2 + 16);
  if (v4 < 2)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 2)
  {
    PCArray_base::badIndex(a1);
  }

  v6 = v5 + 72;
  if (*v5 >= 2)
  {
    if (*v5 != 2)
    {
      goto LABEL_21;
    }

    v7 = v5[36];
    goto LABEL_15;
  }

  v7 = v5[36];
  if (v7 >= 2)
  {
LABEL_15:
    if (v7 > 2)
    {
      goto LABEL_21;
    }

    v8 = *v6;
    goto LABEL_17;
  }

  v8 = *v6;
  if (*v6 < 2)
  {
    v9 = *(a2 + 16);

    return ProShade::eval_type<ProShade::smoothstep_traits,BOOL>(v9, (v5 + 36), v6, a3);
  }

LABEL_17:
  if (v8 <= 2)
  {
    v11 = *(a2 + 16);

    return ProShade::eval_type<ProShade::smoothstep_traits,int>(v11, (v5 + 36), v6, a3);
  }

LABEL_21:
  v12 = *(a2 + 16);

  return ProShade::eval_type<ProShade::smoothstep_traits,double>(v12, (v5 + 36), v6, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726A568);
  *a1 = &unk_28726A490;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726A548;
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

void sub_25FFFBE34(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_cross>::eval(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v4)
    {
      if (v6)
      {
        ProShade::Func_cross::compute(v4, v6, v7);
      }
    }
  }

  PCSharedCount::PCSharedCount(v8);
  operator new();
}

void sub_25FFFC054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::Func_cross::compute(ProShade::Func_cross *this, ProShade::Const *a2, ProShade::Const *a3)
{
  if (!ProShade::shapeIsMatrix(*(this + 7)) && !ProShade::shapeIsMatrix(*(a2 + 7)))
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = &unk_2872642E8;
    v7 = &unk_2872642E8;
    v8 = 0;
    (*(*this + 216))(this, &v10);
    (*(*a2 + 216))(a2, &v7);
    if (HIDWORD(v11) == 3 && HIDWORD(v8) == 3)
    {
      operator new();
    }

    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("cross arguments must be 3-vectors", v6);
  }

  ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("cross doesn't apply to matrices", v5);
}

void sub_25FFFC3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v5, 0x10B1C40A585CD1CLL);
  PCArray<double,PCArray_Traits<double>>::~PCArray(va);
  PCArray<double,PCArray_Traits<double>>::~PCArray(va1);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_cross>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726A7E0);
  *a1 = &unk_28726A708;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726A7C0;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v18, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v18);
  v18[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v19);
  ProShade::VarT<ProShade::Node>::VarT(v18, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v18);
  v18[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v19);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  v12 = *(a1 + 64);
  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  v13 = *(*(a1 + 64) + 16);
  if (!v13)
  {
    throw_PCNullPointerException(1);
  }

  *(a1 + 28) = *(v13 + 28);
  v14 = *(v13 + 24);
  v15 = *(v12 + 48);
  if (!v15)
  {
    throw_PCNullPointerException(1);
  }

  v16 = *(v15 + 24);
  if (v14 > v16)
  {
    v16 = v14;
  }

  *(a1 + 24) = v16;
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFFC67C(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::ConstVector::ConstVector(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  ProShade::Node::Node(a1, &off_2872726E8);
  v4 = off_2872726E0;
  *a1 = off_2872726E0;
  *(a1 + *(v4 - 3)) = off_287272708;
  *a1 = &unk_2872725B8;
  v5 = *(a2 + 16);
  *(a1 + 48) = *a2;
  *(a1 + 64) = v5;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = &unk_2872726C0;
  *(a1 + 24) = 0x300000003;
  return a1;
}

{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v4 = ProShade::Node::Node(a1, &off_2872726E8);
  *a1 = &unk_2872725B8;
  *(a1 + 80) = &unk_2872726C0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 24) = 1;
  v6 = *(a2 + 12);
  if ((v6 - 1) >= 4)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("invalid size", v5);
  }

  v7 = 0;
  *(a1 + 28) = v6;
  do
  {
    if (v7 >= *(a2 + 12))
    {
      PCArray_base::badIndex(v4);
    }

    if (*(*(a2 + 16) + v7))
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    *(a1 + 8 * v7++ + 48) = v8;
  }

  while (v6 != v7);
  *(a1 + 40) = 0;
  return a1;
}

{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v4 = ProShade::Node::Node(a1, &off_2872726E8);
  *a1 = &unk_2872725B8;
  *(a1 + 80) = &unk_2872726C0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 24) = 2;
  v6 = *(a2 + 12);
  if ((v6 - 1) >= 4)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("invalid size", v5);
  }

  v7 = 0;
  *(a1 + 28) = v6;
  do
  {
    if (v7 >= *(a2 + 12))
    {
      PCArray_base::badIndex(v4);
    }

    *(a1 + 8 * v7 + 48) = *(*(a2 + 16) + 4 * v7);
    ++v7;
  }

  while (v6 != v7);
  *(a1 + 40) = 0;
  return a1;
}

{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v4 = ProShade::Node::Node(a1, &off_2872726E8);
  *a1 = &unk_2872725B8;
  *(a1 + 80) = &unk_2872726C0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 24) = 3;
  v6 = *(a2 + 12);
  if ((v6 - 1) >= 4)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("invalid size", v5);
  }

  v7 = 0;
  *(a1 + 28) = v6;
  do
  {
    if (v7 >= *(a2 + 12))
    {
      PCArray_base::badIndex(v4);
    }

    *(a1 + 8 * v7 + 48) = *(*(a2 + 16) + 8 * v7);
    ++v7;
  }

  while (v6 != v7);
  *(a1 + 40) = 0;
  return a1;
}

void sub_25FFFC844(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_cross>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_cross>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_cross>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "cross");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFFC9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_cross>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 18, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 5;
  v5[2] = v4 + 6;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 1936683619;
  v6[4] = 115;
  *(v5 + v4 + 17) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFFCAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_cross>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "cross");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_cross>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFFCDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFFCF74(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void virtual thunk toProShade::Func<ProShade::Func_cross>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::Func_cross>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726A7E0);
  *a1 = &unk_28726A708;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726A7C0;
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

void sub_25FFFD1F8(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func_cross::computeValue()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "not implemented yet");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
  PCException::PCException(exception, &v2, &v1, 943);
  *exception = &unk_2871F6178;
}

void sub_25FFFD2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_length>::eval(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      ProShade::Func_length::compute(v2, v3);
    }
  }

  PCSharedCount::PCSharedCount(v4);
  operator new();
}

void sub_25FFFD490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::Func_length::compute(ProShade::Func_length *this, ProShade::Const *a2)
{
  if (!ProShade::shapeIsMatrix(*(this + 7)))
  {
    v8 = 0;
    v9 = 0;
    v7 = &unk_2872642E8;
    v4 = (*(*this + 216))(this, &v7);
    if (SHIDWORD(v8) < 1)
    {
      v6 = 0.0;
    }

    else
    {
      v5 = 0;
      v6 = 0.0;
      do
      {
        if (v5 >= SHIDWORD(v8))
        {
          PCArray_base::badIndex(v4);
        }

        v6 = v6 + *(v9 + 8 * v5) * *(v9 + 8 * v5);
        ++v5;
      }

      while (HIDWORD(v8) != v5);
    }

    ProShade::Const::create(v4, sqrt(v6));
  }

  ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("length doesn't apply to matrices", v3);
}

void sub_25FFFD6B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCArray<double,PCArray_Traits<double>>::~PCArray(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_length>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726AA58);
  *a1 = &unk_28726A980;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726AA38;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 6);
  *(a1 + 28) = 1;
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFFD810(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_length>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_length>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_length>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "length");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFFD9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_length>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 19, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 6;
  v5[2] = v4 + 7;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 1735288172;
  *(v6 + 2) = 26740;
  *(v5 + v4 + 18) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFFDACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_length>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "length");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_length>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFFDD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFFDF5C(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

double ProShade::Func<ProShade::Func_length>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  return ProShade::Func_length::eval(v3, a3, a3);
}

void virtual thunk toProShade::Func<ProShade::Func_length>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::Func_length>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726AA58);
  *a1 = &unk_28726A980;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726AA38;
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

void sub_25FFFE220(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

double ProShade::Func_length::eval(ProShade::Func_length *this, OZChannelBase *a2, ProShade::Value *a3)
{
  if (ProShade::shapeIsMatrix(*(this + 1)))
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("length doesn't apply to matrices", v5);
  }

  ProShade::Value::set(a2, 3, 1);
  OZChannelBase::getSerializer(a2);
  Size = ProShade::shapeGetSize(*(this + 1), v6);
  v10 = *this;
  if (*this <= 2)
  {
    switch(v10)
    {
      case 0:
        ProShade::Error<PCIllegalArgumentException>::raise(Size, v8);
      case 1:
        exception = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v18, "not implemented yet");
        PCString::PCString(&v17, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
        PCException::PCException(exception, &v18, &v17, 1296);
        *exception = &unk_2871F6178;
      case 2:
        v15 = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v18, "not implemented yet");
        PCString::PCString(&v17, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
        PCException::PCException(v15, &v18, &v17, 1297);
        *v15 = &unk_2871F6178;
    }
  }

  else if (v10 == 3)
  {
    if (Size < 1)
    {
      v13 = 0.0;
    }

    else
    {
      v11 = (this + 16);
      v12 = Size;
      v13 = 0.0;
      do
      {
        v14 = *v11++;
        v13 = v13 + v14 * v14;
        --v12;
      }

      while (v12);
    }

    result = sqrt(v13);
    *&a2->var2 = result;
  }

  return result;
}

void sub_25FFFE43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void BumpMapSample::BumpMapSample(BumpMapSample *this)
{
  *this = &unk_28725E328;
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 4) = &unk_28725E328;
  *(this + 6) = 0;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 8) = &unk_28725E328;
  *(this + 10) = 0;
  PCSharedCount::PCSharedCount(this + 11);
}

void sub_25FFFE53C(_Unwind_Exception *a1)
{
  v5 = v4;
  *v5 = v3;
  PCSharedCount::~PCSharedCount(v1 + 7);
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

PCSharedCount *ProShade::Vec2::Vec2(PCSharedCount *a1, const PCSharedCount *a2)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = a2[2].var0;
  PCSharedCount::PCSharedCount(a1 + 3, a2 + 3);
  a1->var0 = &unk_28726ABF0;
  ProShade::Vec2::checkType(a1);
  return a1;
}

void sub_25FFFE5F0(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_inverse>::eval(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      ProShade::Func_inverse::compute(v2, v3);
    }
  }

  PCSharedCount::PCSharedCount(v4);
  operator new();
}

void sub_25FFFE850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::Func_inverse::compute(ProShade::Func_inverse *this, ProShade::Const *a2)
{
  if (ProShade::shapeIsMatrix(*(this + 7)))
  {
    v4 = *(this + 7);
    if (v4 != 6)
    {
      if (v4 == 7)
      {
        (*(*this + 192))(&v12, this);
        *(&v21[2] + 1) = 0x3FF0000000000000;
        *&v21[0] = 0x3FF0000000000000;
        v18[5].var0 = 0x3FF0000000000000;
        v18[0].var0 = 0x3FF0000000000000;
        memset(&v18[1], 0, 32);
        v19 = 0u;
        v20 = 0u;
        memset(v21 + 8, 0, 32);
        if (!PCMatrix44Tmpl<double>::invert(v18, &v12, 0.0))
        {
          v20 = 0u;
          memset(v21, 0, sizeof(v21));
          v19 = 0u;
          memset(v18, 0, sizeof(v18));
        }

        ProShade::Const::create();
      }

      if (v4 == 5)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(v18, "not implemented yet");
        PCString::PCString(&v12, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
        PCException::PCException(exception, v18, &v12, 1924);
        *exception = &unk_2871F6178;
      }

      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("inverse arguments must be vectors", v3);
    }

    (*(*this + 184))(v17, this);
    v12 = 0x3FF0000000000000uLL;
    v13 = 0uLL;
    v14 = 0x3FF0000000000000uLL;
    v15 = 0uLL;
    v16 = 0x3FF0000000000000;
    if (!PCMatrix33Tmpl<double>::invert(&v12, v17, 0.0, v5, v6, v7))
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
    }

    v8 = 0;
    v9 = &v12;
    do
    {
      v10 = &v18[v8];
      *&v10->var0 = *v9;
      v10[2].var0 = v9[1];
      v9 = (v9 + 24);
      v8 += 4;
    }

    while (v8 != 12);
    v18[3].var0 = 0;
    *(&v19 + 1) = 0;
    memset(v21 + 8, 0, 32);
    *(&v21[2] + 1) = 0x3FF0000000000000;
    ProShade::Const::create();
  }

  ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("inverse applies only to matrices", v3);
}

void sub_25FFFEB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  PCString::~PCString(&a9);
  PCString::~PCString((v11 - 160));
  if (v10)
  {
    __cxa_free_exception(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_inverse>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726AD50);
  *a1 = &unk_28726AC78;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726AD30;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFFEC9C(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_inverse>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_inverse>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_inverse>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "inverse");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFFEE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_inverse>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 20, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 7;
  v5[2] = v4 + 8;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = (v5 + v4 + 12);
  *v6 = 1702260329;
  *(v6 + 3) = 1702064741;
  *(v5 + v4 + 19) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFFEF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_inverse>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "inverse");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_inverse>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_25FFFF224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_25FFFF3EC(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void virtual thunk toProShade::Func<ProShade::Func_inverse>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::Func_inverse>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726AD50);
  *a1 = &unk_28726AC78;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726AD30;
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

void sub_25FFFF670(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void *ProShade::Func_inverse::computeValue(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a1 + 16);
  if (*v3 != 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(v13, "not implemented yet");
    PCString::PCString(&v17, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, v13, &v17, 1950);
    *exception = &unk_2871F6178;
  }

  if (!ProShade::shapeIsMatrix(v3[1]))
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("inverse applies only to matrices", v4);
  }

  v8 = v3[1];
  switch(v8)
  {
    case 6u:
      *v13 = 0x3FF0000000000000uLL;
      *&v13[16] = 0;
      *&v13[24] = 0;
      *&v13[32] = 0x3FF0000000000000;
      *&v13[40] = 0;
      v14 = 0uLL;
      *&v15 = 0x3FF0000000000000;
      if (!PCMatrix33Tmpl<double>::invert(v13, (v3 + 4), 0.0, v5, v6, v7))
      {
        *&v15 = 0;
        v9 = 0uLL;
        goto LABEL_11;
      }

      break;
    case 7u:
      *(&v16[2] + 1) = 0x3FF0000000000000;
      *&v16[0] = 0x3FF0000000000000;
      *&v13[40] = 0x3FF0000000000000;
      *v13 = 0x3FF0000000000000;
      memset(&v13[8], 0, 32);
      v14 = 0u;
      v15 = 0u;
      memset(v16 + 8, 0, 32);
      if (!PCMatrix44Tmpl<double>::invert(v13, (v3 + 4), 0.0))
      {
        v9 = 0uLL;
        v15 = 0u;
        memset(v16, 0, sizeof(v16));
LABEL_11:
        *&v13[32] = v9;
        v14 = v9;
        *v13 = v9;
        *&v13[16] = v9;
      }

      break;
    case 5u:
      v12 = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(v13, "not implemented yet");
      PCString::PCString(&v17, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
      PCException::PCException(v12, v13, &v17, 1958);
      *v12 = &unk_2871F6178;
    default:
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("inverse arguments must be matrices", v4);
  }

  return ProShade::Value::set(a2, *v3, v3[1], v13);
}

void sub_25FFFF8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  PCString::~PCString((v11 - 40));
  PCString::~PCString(&a9);
  if (v10)
  {
    __cxa_free_exception(v9);
  }

  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_dFdx>::eval(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      ProShade::Const::create(v2, 0.0);
    }
  }

  v3 = &unk_28725E328;
  v4 = 0;
  PCSharedCount::PCSharedCount(v5);
  operator new();
}

void sub_25FFFFAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_dFdx>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726AFC8);
  *a1 = &unk_28726AEF0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726AFA8;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_25FFFFC60(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_dFdx>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_dFdx>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_dFdx>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "dFdx");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FFFFDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_dFdx>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 17, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 4;
  v5[2] = v4 + 5;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 2019837540;
  *(v6 + v4 + 4) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FFFFF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_dFdx>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "dFdx");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_dFdx>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_2600001D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_2600003A0(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void virtual thunk toProShade::Func<ProShade::Func_dFdx>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::Func_dFdx>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726AFC8);
  *a1 = &unk_28726AEF0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726AFA8;
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

void sub_260000624(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func_dFdx::computeValue()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "not implemented yet");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
  PCException::PCException(exception, &v2, &v1, 1595);
  *exception = &unk_2871F6178;
}

void sub_260000700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::Func_dFdy>::eval(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      ProShade::Const::create(v2, 0.0);
    }
  }

  v3 = &unk_28725E328;
  v4 = 0;
  PCSharedCount::PCSharedCount(v5);
  operator new();
}

void sub_2600008C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_dFdy>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726B240);
  *a1 = &unk_28726B168;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726B220;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_260000A68(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::Func_dFdy>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_dFdy>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_dFdy>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "dFdy");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_260000BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_dFdy>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 17, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 4;
  v5[2] = v4 + 5;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 2036614756;
  *(v6 + v4 + 4) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_260000D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_dFdy>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "dFdy");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::Func_dFdy>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_260000FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_2600011A8(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void virtual thunk toProShade::Func<ProShade::Func_dFdy>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::Func_dFdy>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726B240);
  *a1 = &unk_28726B168;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726B220;
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

void sub_26000142C(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func_dFdy::computeValue()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "not implemented yet");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
  PCException::PCException(exception, &v2, &v1, 1635);
  *exception = &unk_2871F6178;
}

void sub_260001508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::eval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 16);
  if (v7)
  {
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    if (v6)
    {
      if (v8)
      {
        if (v10)
        {
          ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>::compute(v6, v8, v10);
        }
      }
    }
  }

  operator new();
}

void sub_260001794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>::compute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v12);
  ProShade::Value::Value(v11);
  ProShade::Value::Value(v10);
  ProShade::Value::Value(&v9);
  (*(*a1 + 224))(a1, v12);
  (*(*a2 + 224))(a2, v11);
  (*(*a3 + 224))(a3, v10);
  if (SLODWORD(v12[0]) > 1)
  {
    if (LODWORD(v12[0]) != 2)
    {
      goto LABEL_11;
    }

    v6 = v11[0];
  }

  else
  {
    v6 = v11[0];
    if (SLODWORD(v11[0]) < 2)
    {
      v7 = v10[0];
      if (SLODWORD(v10[0]) < 2)
      {
        ProShade::eval_type<ProShade::clamp_traits,BOOL>(v12, v11, v10, &v9);
        goto LABEL_12;
      }

LABEL_9:
      if (v7 <= 2)
      {
        ProShade::eval_type<ProShade::clamp_traits,int>(v12, v11, v10, &v9);
        goto LABEL_12;
      }

LABEL_11:
      ProShade::eval_type<ProShade::clamp_traits,double>(v12, v11, v10, &v9);
LABEL_12:
      ProShade::Const::create(&v9, v8);
    }
  }

  if (v6 > 2)
  {
    goto LABEL_11;
  }

  v7 = v10[0];
  goto LABEL_9;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3, PCShared_base *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726B4B8);
  *a1 = &unk_28726B3E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726B498;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v17, a2);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  ProShade::VarT<ProShade::Node>::VarT(v17, a3);
  v10 = *(a1 + 60);
  if (*(a1 + 56) <= v10)
  {
    v11 = 2 * (v10 + 1) + 1;
  }

  else
  {
    v11 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v10 + 1, v11);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  ProShade::VarT<ProShade::Node>::VarT(v17, a4);
  v12 = *(a1 + 60);
  if (*(a1 + 56) <= v12)
  {
    v13 = 2 * (v12 + 1) + 1;
  }

  else
  {
    v13 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v12 + 1, v13);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v17);
  v17[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
  v15 = *(a1 + 60);
  if (v15 < 1)
  {
    PCArray_base::badIndex(v14);
  }

  if (v15 < 2)
  {
    PCArray_base::badIndex(v14);
  }

  if (v15 <= 2)
  {
    PCArray_base::badIndex(v14);
  }

  ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32), (*(a1 + 64) + 64));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_260001C6C(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::clamp_traits,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v12, "not implemented yet");
    PCString::PCString(&v11, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v12, &v11, 463);
    *exception = &unk_2871F6178;
  }

  OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result > 0)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("clamp doesn't apply to BOOL", v9);
  }

  return result;
}

void sub_260001DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::clamp_traits,int>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 2, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v22, "not implemented yet");
    PCString::PCString(&v21, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v22, &v21, 463);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v9);
  if (result >= 1)
  {
    v11 = (a3 + 16);
    v12 = (a2 + 16);
    v13 = (a1 + 16);
    do
    {
      v15 = *v13++;
      v14 = v15;
      v17 = *v12++;
      v16 = v17;
      v19 = *v11++;
      v18 = v19;
      if (v14 >= v19)
      {
        v14 = v18;
      }

      if (v14 <= v16)
      {
        v14 = v16;
      }

      *Serializer = v14;
      Serializer = (Serializer + 4);
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_260001F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::clamp_traits,double>(uint64_t a1, uint64_t a2, uint64_t a3, OZChannelBase *a4)
{
  ProShade::Value::set(a4, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v22, "not implemented yet");
    PCString::PCString(&v21, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v22, &v21, 463);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a4);
  result = ProShade::shapeGetSize(*(a1 + 4), v9);
  if (result >= 1)
  {
    v11 = (a3 + 16);
    v12 = (a2 + 16);
    v13 = (a1 + 16);
    do
    {
      v14 = *v13++;
      v15 = v14;
      v16 = *v12++;
      v17 = v16;
      v18 = *v11++;
      v19 = v18;
      if (v15 > v18)
      {
        v15 = v19;
      }

      if (v15 < v17)
      {
        v15 = v17;
      }

      *Serializer++ = v15;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_2600020D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "clamp");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_260002270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 18, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 5;
  v5[2] = v4 + 6;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 1835101283;
  v6[4] = 112;
  *(v5 + v4 + 17) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_260002398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "clamp");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
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

void sub_260002660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_260002828(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v4 = *(a2 + 12);
  if (v4 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v5 = *(a2 + 16);
  if (v4 < 2)
  {
    PCArray_base::badIndex(a1);
  }

  if (v4 <= 2)
  {
    PCArray_base::badIndex(a1);
  }

  v6 = v5 + 72;
  if (*v5 >= 2)
  {
    if (*v5 != 2)
    {
      goto LABEL_21;
    }

    v7 = v5[36];
    goto LABEL_15;
  }

  v7 = v5[36];
  if (v7 >= 2)
  {
LABEL_15:
    if (v7 > 2)
    {
      goto LABEL_21;
    }

    v8 = *v6;
    goto LABEL_17;
  }

  v8 = *v6;
  if (*v6 < 2)
  {
    v9 = *(a2 + 16);

    return ProShade::eval_type<ProShade::clamp_traits,BOOL>(v9, (v5 + 36), v6, a3);
  }

LABEL_17:
  if (v8 <= 2)
  {
    v11 = *(a2 + 16);

    return ProShade::eval_type<ProShade::clamp_traits,int>(v11, (v5 + 36), v6, a3);
  }

LABEL_21:
  v12 = *(a2 + 16);

  return ProShade::eval_type<ProShade::clamp_traits,double>(v12, (v5 + 36), v6, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::~Func(void *a1)
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

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726B4B8);
  *a1 = &unk_28726B3E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726B498;
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

void sub_260002BC8(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

PCSharedCount *ProShade::Float::Float(PCSharedCount *a1, const PCSharedCount *a2)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = a2[2].var0;
  PCSharedCount::PCSharedCount(a1 + 3, a2 + 3);
  a1->var0 = &unk_28726B650;
  ProShade::Float::checkType(a1);
  return a1;
}

void sub_260002C88(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Float::checkType(ProShade::Float *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 128);

  return v2();
}

ProShade::ConstVector *ProShade::ConstVector::ConstVector(ProShade::ConstVector *this, double a2)
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
  *(this + 3) = 0x100000003;
  return this;
}